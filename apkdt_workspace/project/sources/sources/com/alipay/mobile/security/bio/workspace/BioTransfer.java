package com.alipay.mobile.security.bio.workspace;

import a.n.a.a;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.alipay.mobile.security.bio.api.BioCallback;
import com.alipay.mobile.security.bio.api.BioDetector;
import com.alipay.mobile.security.bio.api.BioError;
import com.alipay.mobile.security.bio.api.BioParameter;
import com.alipay.mobile.security.bio.api.BioProgressCallback;
import com.alipay.mobile.security.bio.api.BioResponse;
import com.alipay.mobile.security.bio.common.statistics.RecordExtAction;
import com.alipay.mobile.security.bio.common.statistics.RecordExtService;
import com.alipay.mobile.security.bio.config.Constant;
import com.alipay.mobile.security.bio.exception.BioIllegalArgumentException;
import com.alipay.mobile.security.bio.module.MicroModule;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.service.BioAppManager;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioUploadService;
import com.alipay.mobile.security.bio.service.BioUploadServiceCore;
import com.alipay.mobile.security.bio.service.local.rpc.BioRPCService;
import com.alipay.mobile.security.bio.utils.StringUtil;
import java.lang.reflect.Constructor;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes.dex */
public class BioTransfer implements BioDetector {
    private static BioDetector sBusyBioDetector;
    private AuthBroadCastReceiver mAuthBroadCastReceiver;
    private BioAppManager mBioAppManager;
    private MicroModule mBioMicroModule;
    private BioServiceManager mBioServiceManager;
    Context mContext;
    private BioCallback mFcBioCallBack;
    JSONObject mFcSpecialData;
    BioParameter mIDFaceParam;
    private a mLocalBroadcastManager;
    RecordExtService mRecordExtService;
    private ArrayList<String> extKeyList = new ArrayList<>(Arrays.asList("userid", "apdid", "scene_id", "appid", "token_id", "usernamehidden", "abtest", BioDetector.EXT_KEY_VERIFYID));
    boolean isIDFaceFlag = false;
    int fcStep = 0;
    String fcToken = "";

    /* loaded from: classes.dex */
    public class AuthBroadCastReceiver extends BroadcastReceiver {
        public AuthBroadCastReceiver() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            String stringExtra = intent.getStringExtra(Constant.BIOLOGY_INTENT_ACTION_REV);
            String str = "rev action='" + action;
            if (TextUtils.isEmpty(stringExtra)) {
                new RuntimeException("why the AuthBroadCastReceiver.rev is empty?");
                return;
            }
            BioResponse bioResponse = null;
            try {
                bioResponse = (BioResponse) JSON.parseObject(stringExtra, BioResponse.class);
            } catch (Throwable unused) {
            }
            if (bioResponse == null) {
                new RuntimeException("Failed to parse {" + stringExtra + "} to com.alipay.mobile.security.bio.api.BioResponse");
                return;
            }
            String tag = bioResponse.getTag();
            if (BioTransfer.this.mBioAppManager != null) {
                BioCallback bioCallback = BioTransfer.this.mBioAppManager.getBioCallback(tag);
                if (TextUtils.equals(Constant.BIOLOGY_CALLBACK_PROGRESS_ACTION, action)) {
                    if (bioCallback == null) {
                        new RuntimeException("Failed to getBioCallback() by " + tag);
                        return;
                    }
                    if (bioCallback instanceof BioProgressCallback) {
                        ((BioProgressCallback) bioCallback).onFaceDetected(bioResponse.getExt());
                        return;
                    }
                    String str2 = "biologyCallback=" + bioCallback + ", has no method: onFaceDetected(Map<String, String>)";
                    return;
                }
                if (bioCallback == null) {
                    try {
                        if (!BioTransfer.this.isIDFaceFlag) {
                            return;
                        }
                    } catch (Exception unused2) {
                        return;
                    }
                }
                Map<String, String> ext = bioResponse.getExt();
                if (ext != null && "face".equals(ext.get("fc"))) {
                    BioTransfer.this.fcStep = 1;
                    BioTransfer.this.auth(BioTransfer.this.mIDFaceParam, BioTransfer.this.mFcBioCallBack);
                    return;
                }
                if (BioTransfer.this.isIDFaceFlag) {
                    bioResponse.setToken(BioTransfer.this.fcToken);
                    HashMap hashMap = new HashMap();
                    hashMap.put("fcToken", BioTransfer.this.fcToken);
                    if (BioTransfer.this.fcStep == 1) {
                        BioTransfer.this.mRecordExtService.write(RecordExtAction.RECORD_FC_FACE_CALL_BACK_BIS_SYSTEM, hashMap);
                    }
                    hashMap.put("param", bioResponse.toString());
                    BioTransfer.this.mRecordExtService.write(RecordExtAction.RECORD_FC_CALL_BACK_VERITY_SYSTEM, hashMap);
                }
                if (BioTransfer.this.isIDFaceFlag) {
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("fcToken", BioTransfer.this.fcToken);
                    BioTransfer.this.mRecordExtService.write(RecordExtAction.RECORD_FC_EXIT_SDK, hashMap2);
                }
                int bioAction = BioTransfer.this.mBioAppManager.getBioAppDescription(tag).getBioAction() - 1000;
                if (992 == bioAction || 993 == bioAction) {
                    if (ext == null) {
                        ext = new HashMap<>();
                        bioResponse.setExt(ext);
                    }
                    ext.put(BioDetector.EXT_KEY_UI, bioAction + "");
                }
                bioCallback.onResult(bioResponse);
                return;
            }
            new RuntimeException("BioAppManager in receiver is null");
        }
    }

    public BioTransfer(Context context, MicroModule microModule) {
        if (context != null) {
            String zimId = microModule == null ? null : microModule.getZimId();
            if (TextUtils.isEmpty(zimId)) {
                BioServiceManager.createInstance(context);
            } else {
                BioServiceManager.createInstance(context, zimId);
            }
            this.mBioServiceManager = BioServiceManager.getCurrentInstance();
            this.mRecordExtService = (RecordExtService) this.mBioServiceManager.getBioService(RecordExtService.class);
            this.mBioAppManager = (BioAppManager) this.mBioServiceManager.getBioService(BioAppManager.class);
            this.mLocalBroadcastManager = a.a(context.getApplicationContext());
            this.mAuthBroadCastReceiver = new AuthBroadCastReceiver();
            this.mLocalBroadcastManager.a(this.mAuthBroadCastReceiver, new IntentFilter(Constant.BIOLOGY_CALLBACK_ACTION));
            this.mLocalBroadcastManager.a(this.mAuthBroadCastReceiver, new IntentFilter(Constant.BIOLOGY_CALLBACK_PROGRESS_ACTION));
            this.mContext = context.getApplicationContext();
            this.mBioMicroModule = microModule;
            return;
        }
        throw new BioIllegalArgumentException();
    }

    private BioParameter buildBioParameter(Bundle bundle, BioParameter bioParameter) {
        if (bundle == null && bioParameter == null) {
            throw new BioIllegalArgumentException("paramter is null");
        }
        if (bundle == null) {
            return bioParameter;
        }
        String string = bundle.getString(BioDetector.EXT_KEY_MODULE_DATA_BUNDLE);
        String str = "moduleData:" + string;
        if (TextUtils.isEmpty(string)) {
            return bioParameter;
        }
        JSONObject parseObject = JSON.parseObject(string);
        String string2 = parseObject.getString("sceneId");
        String string3 = parseObject.getString(BioDetector.EXT_KEY_USER_ID_BUNDLE);
        String string4 = parseObject.getString(BioDetector.EXT_KEY_BISCFG_BUNDLE);
        String string5 = bundle.getString("TOKEN_ID");
        String string6 = bundle.getString("APDID");
        String string7 = bundle.getString(BioDetector.EXT_KEY_VERIFYID);
        String string8 = parseObject.getString("appid");
        String string9 = parseObject.getString(BioDetector.EXT_KEY_HAS_OTHERS);
        bioParameter.setHeadImageUrl(bundle != null ? bundle.getString("headurl") : null);
        String str2 = "biscfg:" + string4;
        if (!StringUtil.isNullorEmpty(string4)) {
            bioParameter.setProtocol(string4);
        }
        if (TextUtils.isEmpty(string7)) {
            string7 = "";
        }
        bioParameter.addExtProperty(BioDetector.EXT_KEY_VERIFYID, string7);
        if (TextUtils.isEmpty(string6)) {
            string6 = "";
        }
        bioParameter.addExtProperty("APDID", string6);
        if (TextUtils.isEmpty(string2)) {
            string2 = "";
        }
        bioParameter.addExtProperty("SCENE_ID", string2);
        if (TextUtils.isEmpty(string5)) {
            string5 = "";
        }
        bioParameter.addExtProperty("TOKEN_ID", string5);
        if (TextUtils.isEmpty(string3)) {
            string3 = "";
        }
        bioParameter.addExtProperty("userid", string3);
        if (TextUtils.isEmpty(string8)) {
            string8 = "";
        }
        bioParameter.addExtProperty("appid", string8);
        if (TextUtils.isEmpty(string9)) {
            string9 = "false";
        }
        bioParameter.addExtProperty(BioDetector.EXT_KEY_HAS_OTHERS, string9);
        if (bundle.containsKey("RequestPage")) {
            String valueOf = String.valueOf(bundle.getInt("RequestPage"));
            if (TextUtils.isEmpty(valueOf)) {
                valueOf = "";
            }
            bioParameter.addExtProperty(BioDetector.EXT_KEY_PAGENUM, valueOf);
        }
        if (bundle.containsKey("RequestCardType")) {
            String string10 = bundle.getString("RequestCardType");
            if (TextUtils.isEmpty(string10)) {
                string10 = "";
            }
            bioParameter.addExtProperty(BioDetector.EXT_KEY_CARD_TYPE, string10);
        }
        if (bundle.containsKey("RequestTotalPagesNum")) {
            String valueOf2 = String.valueOf(bundle.getInt("RequestTotalPagesNum"));
            if (TextUtils.isEmpty(valueOf2)) {
                valueOf2 = "";
            }
            bioParameter.addExtProperty(BioDetector.EXT_KEY_TOTAL_PAGE_NUM, valueOf2);
        }
        return bioParameter;
    }

    private BioAppDescription toBioAppDescription(BioParameter bioParameter) {
        String str;
        Class<?> cls;
        int protocolFormat = Env.getProtocolFormat(this.mContext);
        bioParameter.addExtProperty("meta_serializer", String.valueOf(protocolFormat));
        if (bioParameter.isValidate) {
            str = protocolFormat != 2 ? "com.alipay.mobile.security.bio.workspace.JsonToBioApp" : "com.alipay.mobile.security.bio.workspace.PbToBioApp";
        } else {
            str = protocolFormat != 2 ? "com.alipay.mobile.security.bio.workspace.JsonBioParameterToBioApp" : "com.alipay.mobile.security.bio.workspace.PbBioParameterToBioApp";
            try {
                if (2 == Env.getProtocolFormat(this.mContext)) {
                    cls = Class.forName("com.alipay.mobile.security.bio.service.impl.BioUploadServiceCoreBisPb");
                } else {
                    cls = Class.forName("com.alipay.mobile.security.bio.service.impl.BioUploadServiceCoreBisJson");
                }
                BioServiceManager.getCurrentInstance().putBioService(BioUploadServiceCore.class.getName(), cls);
            } catch (Throwable unused) {
                return null;
            }
        }
        Constructor<?> constructor = Class.forName(str).getConstructor(Context.class, BioTransfer.class);
        constructor.setAccessible(true);
        return ((BaseBioParameterToBioApp) constructor.newInstance(this.mContext, this)).toBioApp(bioParameter);
    }

    @Override // com.alipay.mobile.security.bio.api.BioDetector
    public void auth(BioParameter bioParameter, BioCallback bioCallback) {
        if (bioParameter != null && bioCallback != null) {
            synchronized (BioTransfer.class) {
                StringBuilder sb = new StringBuilder();
                sb.append("bio is busy : ");
                sb.append(sBusyBioDetector != null);
                sb.toString();
                if (sBusyBioDetector == null) {
                    sBusyBioDetector = this;
                } else if (this != sBusyBioDetector) {
                    BioResponse bioResponse = new BioResponse();
                    bioResponse.setResult(BioError.ERROR_SINGLETON_BUSY);
                    bioResponse.subMsg = "pre bio session is running.";
                    bioResponse.subCode = "";
                    bioCallback.onResult(bioResponse);
                    String str = "pre bio session is running. callback=" + bioCallback + ", return directly.";
                    return;
                }
                this.mFcBioCallBack = bioCallback;
                buildBioParameter(bioParameter.getBundle(), bioParameter);
                BioAppDescription bioAppDescription = toBioAppDescription(bioParameter);
                String str2 = "BioTransfer.auth(): app: " + bioAppDescription;
                String put = this.mBioAppManager.put(bioAppDescription, bioCallback);
                String remoteURL = bioParameter.getRemoteURL();
                String str3 = "BioTransfer.auth(): remoteUrl:" + remoteURL;
                if (!TextUtils.isEmpty(remoteURL)) {
                    ((BioRPCService) this.mBioServiceManager.getBioService(BioRPCService.class)).setRemoteUrl(remoteURL);
                }
                ((BioUploadService) this.mBioServiceManager.getBioService(BioUploadService.class)).clearUp();
                if (StringUtil.isNullorEmpty(this.mBioServiceManager.startBioActivity(bioAppDescription, this.mBioMicroModule))) {
                    sendResponse(put, 201, "app is not installed");
                    return;
                }
                return;
            }
        }
        throw new BioIllegalArgumentException();
    }

    @Override // com.alipay.mobile.security.bio.api.BioDetector
    public void command(int i2) {
        String str;
        String str2 = "command" + i2;
        if (i2 == 8193) {
            str = Constant.BIOLOGY_FLAG_SERVER_FAIL;
        } else if (i2 != 8194) {
            switch (i2) {
                case 4097:
                    str = Constant.BIOLOGY_FLAG_SERVER_SUCCESS;
                    break;
                case 4098:
                    str = Constant.BIOLOGY_FLAG_SERVER_CONTINUE;
                    break;
                case 4099:
                    str = Constant.BIOLOGY_FLAG_AUTOCLOSE;
                    break;
                default:
                    str = "";
                    break;
            }
        } else {
            str = Constant.BIOLOGY_FLAG_SERVER_RETRY;
        }
        String str3 = "BioTransfer.command() action=" + str;
        if (StringUtil.isNullorEmpty(str)) {
            return;
        }
        this.mLocalBroadcastManager.a(new Intent(str));
    }

    @Override // com.alipay.mobile.security.bio.api.BioDetector
    public void destroy() {
        this.mBioAppManager = null;
        this.mFcBioCallBack = null;
        a aVar = this.mLocalBroadcastManager;
        if (aVar != null) {
            aVar.a(this.mAuthBroadCastReceiver);
        }
        BioServiceManager.destroyInstance();
        sBusyBioDetector = null;
    }

    @Override // com.alipay.mobile.security.bio.api.BioDetector
    public String init(BioParameter bioParameter, BioCallback bioCallback) {
        if (bioParameter != null && bioCallback != null) {
            synchronized (BioTransfer.class) {
                StringBuilder sb = new StringBuilder();
                sb.append("bio is busy : ");
                sb.append(sBusyBioDetector != null);
                sb.toString();
                if (sBusyBioDetector == null) {
                    sBusyBioDetector = this;
                } else if (this != sBusyBioDetector) {
                    BioResponse bioResponse = new BioResponse();
                    bioResponse.setResult(BioError.ERROR_SINGLETON_BUSY);
                    bioResponse.subMsg = "pre bio session is running.";
                    bioResponse.subCode = "";
                    bioCallback.onResult(bioResponse);
                    String str = "pre bio session is running. callback=" + bioCallback + ", return directly.";
                }
            }
            buildBioParameter(bioParameter.getBundle(), bioParameter);
            BioAppDescription bioAppDescription = toBioAppDescription(bioParameter);
            String str2 = "BioTransfer|init(): app: " + bioAppDescription;
            String put = this.mBioAppManager.put(bioAppDescription, bioCallback);
            String remoteURL = bioParameter.getRemoteURL();
            String str3 = "BioTransfer|init: remoteUrl:" + remoteURL;
            if (!TextUtils.isEmpty(remoteURL)) {
                ((BioRPCService) this.mBioServiceManager.getBioService(BioRPCService.class)).setRemoteUrl(remoteURL);
            }
            ((BioUploadService) this.mBioServiceManager.getBioService(BioUploadService.class)).clearUp();
            return put;
        }
        throw new BioIllegalArgumentException();
    }

    @Override // com.alipay.mobile.security.bio.api.BioDetector
    public int preLoad() {
        return this.mBioServiceManager.preLoad();
    }

    public void sendResponse(String str, int i2, String str2) {
        Intent intent = new Intent(Constant.BIOLOGY_CALLBACK_ACTION);
        BioResponse bioResponse = new BioResponse();
        bioResponse.setSuccess(false);
        bioResponse.setResult(i2);
        bioResponse.setResultMessage(str2);
        bioResponse.setTag(str);
        Bundle bundle = new Bundle();
        bundle.putString(Constant.BIOLOGY_INTENT_ACTION_REV, JSON.toJSONString(bioResponse));
        intent.putExtras(bundle);
        new RuntimeException("" + bioResponse);
        this.mLocalBroadcastManager.a(intent);
    }
}
