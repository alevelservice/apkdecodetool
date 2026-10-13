package com.alipay.mobile.security.zim.biz;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextUtils;
import com.alibaba.fastjson.JSON;
import com.alipay.biometrics.ui.widget.LoadingProgressDialog;
import com.alipay.bis.common.service.facade.gw.zim.ZimInitGwRequest;
import com.alipay.bis.common.service.facade.gw.zim.ZimInitGwResponse;
import com.alipay.bis.common.service.facade.gw.zim.ZimValidateGwResponse;
import com.alipay.mobile.security.bio.api.BioDetector;
import com.alipay.mobile.security.bio.api.BioDetectorBuilder;
import com.alipay.mobile.security.bio.api.BioError;
import com.alipay.mobile.security.bio.api.BioParameter;
import com.alipay.mobile.security.bio.api.BioProgressCallback;
import com.alipay.mobile.security.bio.api.BioResponse;
import com.alipay.mobile.security.bio.constants.ZcodeConstants;
import com.alipay.mobile.security.bio.module.MicroModule;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.service.BioUploadServiceCore;
import com.alipay.mobile.security.bio.service.ZimRecordService;
import com.alipay.mobile.security.bio.service.local.apsecurity.ApSecurityService;
import com.alipay.mobile.security.bio.service.local.monitorlog.MonitorLogService;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.mobile.security.bio.workspace.Env;
import com.alipay.mobile.security.zim.R;
import com.alipay.mobile.security.zim.api.ZIMCallback;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.alipay.mobile.security.zim.api.ZIMResponse;
import com.alipay.mobile.security.zim.api.ZIMResponseCode;
import com.alipay.mobile.security.zim.api.ZimProgressCallback;
import com.alipay.mobile.security.zim.gw.BaseGwService;
import com.alipay.mobile.security.zim.gw.BioUploadServiceCoreZhub;
import com.alipay.mobile.security.zim.gw.GwListener;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannel;
import com.ap.zoloz.hummer.biz.HummerConstants;
import java.lang.reflect.Constructor;
import java.util.HashMap;
import java.util.Map;
import zoloz.ap.com.toolkit.ui.DialogHelper;

/* loaded from: classes.dex */
public class ZimPlatform extends ZIMFacade implements BioProgressCallback, GwListener {
    public static final String KEY_MESSAGE = "message";
    public static final String KEY_RESULT = "result";
    public static final String KEY_RET_CODE = "retCode";
    public static final String KEY_SUB_CODE = "subCode";
    public static final String KEY_SUB_MSG = "subMsg";
    public static final String REASON_0 = "0";
    private static Context mH5Context;
    private static boolean sIsBusy;
    private BaseGwService mBaseGWService;
    private BioDetector mBioDetector;
    private BioServiceManager mBioServiceManager;
    private Context mContext;
    private String mFacePayInfo;
    private LoadingProgressDialog mLoadingProgressDialog;
    private Map<String, String> mParams;
    private ZIMCallback mZIMCallback;
    private ZimMessageChannel mZimMessageChannel;
    public static final String RESULT_TRUE = Boolean.TRUE.toString();
    public static final String RESULT_FALSE = Boolean.FALSE.toString();
    private String mZimId = "";
    private BioParameter mBioParameter = new BioParameter();
    private boolean isInit = false;

    public ZimPlatform(Context context) {
        this.mContext = context;
        try {
            Constructor<?> constructor = Class.forName(Env.getProtocolFormat(context) != 2 ? "com.alipay.mobile.security.zim.gw.JsonGwService" : "com.alipay.mobile.security.zim.gw.PbGwService").getConstructor(GwListener.class);
            constructor.setAccessible(true);
            this.mBaseGWService = (BaseGwService) constructor.newInstance(this);
        } catch (Throwable unused) {
            ZIMResponse zIMResponse = new ZIMResponse();
            zIMResponse.subCode = ZcodeConstants.ZCODE_PROGURD_ERROR;
            zIMResponse.msg = ZcodeConstants.getMessage(zIMResponse.subCode);
            zIMResponse.code = 1001;
            zIMResponse.extInfo.put(ZIMFacade.KEY_BIO_ACTION, String.valueOf(206));
            doCallZimCallback(zIMResponse);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void auth(BioParameter bioParameter) {
        for (String str : ZIMFacade.mCustomEnvs.keySet()) {
            bioParameter.getExtProperty().put(str, (String) ZIMFacade.mCustomEnvs.get(str));
        }
        try {
            if (!this.isInit) {
                this.mBioDetector.auth(bioParameter, this);
                return;
            }
            String init = this.mBioDetector.init(bioParameter, this);
            ZIMResponse zIMResponse = new ZIMResponse();
            if (!TextUtils.isEmpty(init)) {
                zIMResponse.code = 100;
                zIMResponse.singleTag = init;
            } else {
                zIMResponse.code = 200;
            }
            this.mZIMCallback.response(zIMResponse);
            String str2 = "ZimPlatform.init():tag is" + init;
        } catch (Throwable th) {
            ZIMResponse zIMResponse2 = new ZIMResponse();
            zIMResponse2.code = 1001;
            zIMResponse2.reason = "" + th;
            zIMResponse2.extInfo.put(ZIMFacade.KEY_BIO_ACTION, String.valueOf(206));
            zIMResponse2.subCode = ZcodeConstants.ZCODE_AUTH_BIO_ERROR;
            zIMResponse2.msg = ZcodeConstants.getMessage(zIMResponse2.subCode);
            recordVerifyResponse(zIMResponse2);
            doCallZimCallback(zIMResponse2);
        }
    }

    private void createLoadingDialog() {
        Context context = this.mContext;
        if (context == null || !(context instanceof Activity) || ((Activity) context).isFinishing()) {
            return;
        }
        this.mLoadingProgressDialog = new LoadingProgressDialog(this.mContext);
        this.mLoadingProgressDialog.setContentView(R.layout.zim_layout_loading_dialog);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean doCallZimCallback(ZIMResponse zIMResponse) {
        MonitorLogService monitorLogService;
        new RuntimeException("doCallZimCallback(): zimResponse=" + zIMResponse + ", mZIMCallback=" + this.mZIMCallback);
        boolean response = this.mZIMCallback.response(zIMResponse);
        StringBuilder sb = new StringBuilder();
        sb.append("doCallZimCallback(): bRet=");
        sb.append(response);
        sb.toString();
        RecordProcessor recordProcessor = RecordProcessor.getInstance();
        if (recordProcessor != null) {
            HashMap hashMap = new HashMap();
            hashMap.put("subCode", zIMResponse.subCode);
            recordProcessor.record(RecordProcessor.KEY_ZIM_EXIT, hashMap);
        }
        BioServiceManager bioServiceManager = this.mBioServiceManager;
        if (bioServiceManager != null && (monitorLogService = (MonitorLogService) bioServiceManager.getBioService(MonitorLogService.class)) != null) {
            monitorLogService.trigUpload();
        }
        if (response) {
            destroy();
        }
        return response;
    }

    private void initZoloz(Context context, String str, ZimMessageChannel zimMessageChannel) {
        if (!this.isInit) {
            createLoadingDialog();
        }
        this.mBioDetector = BioDetectorBuilder.create(context, new MicroModule(str));
        this.mBioServiceManager = BioServiceManager.getCurrentInstance();
        ApSecurityService apSecurityService = (ApSecurityService) this.mBioServiceManager.getBioService(ApSecurityService.class);
        if (apSecurityService != null) {
            apSecurityService.init(this.mContext);
        }
        this.mZimMessageChannel = zimMessageChannel;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void performInitRequest(String str, Map<String, String> map, String str2) {
        showLoadingDialog();
        ZimInitGwRequest zimInitGwRequest = new ZimInitGwRequest();
        zimInitGwRequest.zimId = str;
        zimInitGwRequest.metaInfo = ZIMFacade.getMetaInfos(this.mContext, null, false);
        if (map != null && map.containsKey(ZIMFacade.KEY_BIZ_DATA)) {
            String str3 = map.get(ZIMFacade.KEY_BIZ_DATA);
            String str4 = "ZimInitGwRequest.bizData=" + str3;
            zimInitGwRequest.bizData = str3;
        }
        HashMap hashMap = new HashMap();
        hashMap.put(BioDetector.EXT_KEY_IS_MOCK, str2);
        hashMap.put(HummerConstants.PAYLOAD, String.valueOf(JSON.toJSONString(zimInitGwRequest).getBytes().length / 1024.0f));
        RecordProcessor.getInstance().record(RecordProcessor.KEY_INITPROD_REQUEST, hashMap);
        this.mBaseGWService.init(zimInitGwRequest);
    }

    private void recordValidateResponse(ZimValidateGwResponse zimValidateGwResponse) {
        HashMap hashMap = new HashMap();
        if (zimValidateGwResponse != null) {
            int i2 = zimValidateGwResponse.validationRetCode;
            if (i2 != 100 && i2 != 1000) {
                hashMap.put("result", RESULT_FALSE);
            } else {
                hashMap.put("result", RESULT_TRUE);
            }
            hashMap.put("message", "");
            hashMap.put("retCode", "" + zimValidateGwResponse.validationRetCode);
            hashMap.put("subCode", zimValidateGwResponse.retCodeSub);
            hashMap.put(KEY_SUB_MSG, zimValidateGwResponse.retMessageSub);
        } else {
            hashMap.put("result", RESULT_FALSE);
            hashMap.put("message", REASON_0);
            hashMap.put("retCode", REASON_0);
            hashMap.put("subCode", "");
            hashMap.put(KEY_SUB_MSG, "");
        }
        RecordProcessor.getInstance().record(RecordProcessor.KEY_VALIDATE_RESPONSE, hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void recordVerifyResponse(ZIMResponse zIMResponse) {
        HashMap hashMap = new HashMap(2);
        if (zIMResponse != null) {
            int i2 = zIMResponse.code;
            if (i2 != 100 && i2 != 1000) {
                hashMap.put("result", RESULT_FALSE);
            } else {
                hashMap.put("result", RESULT_TRUE);
            }
            hashMap.put("message", "" + zIMResponse.reason);
            hashMap.put("retCode", "" + zIMResponse.code);
            hashMap.put("subCode", zIMResponse.subCode);
            hashMap.put(KEY_SUB_MSG, zIMResponse.msg);
        } else {
            hashMap.put("result", RESULT_FALSE);
            hashMap.put("message", REASON_0);
            hashMap.put("retCode", REASON_0);
            hashMap.put("subCode", "");
            hashMap.put(KEY_SUB_MSG, "");
        }
        RecordProcessor.getInstance().record(RecordProcessor.KEY_VERIFY_RESPONSE, hashMap);
    }

    public static void setH5Context(Context context) {
        mH5Context = context;
    }

    private void showLoadingDialog() {
        Context context;
        LoadingProgressDialog loadingProgressDialog = this.mLoadingProgressDialog;
        if (loadingProgressDialog == null || loadingProgressDialog.isShowing() || (context = this.mContext) == null || !(context instanceof Activity)) {
            return;
        }
        ((Activity) context).runOnUiThread(new Runnable() { // from class: com.alipay.mobile.security.zim.biz.ZimPlatform.3
            @Override // java.lang.Runnable
            public void run() {
                if (ZimPlatform.this.mContext == null || ((Activity) ZimPlatform.this.mContext).isFinishing()) {
                    return;
                }
                ZimPlatform.this.mLoadingProgressDialog.show();
            }
        });
    }

    private boolean showRetryDialog(final ZimInitGwResponse zimInitGwResponse) {
        Context context = this.mContext;
        if (context == null || !(context instanceof Activity)) {
            return false;
        }
        new DialogHelper((Activity) context).alert(this.mContext.getString(R.string.alert_network_error_title), this.mContext.getString(R.string.alert_network_error_msg), this.mContext.getString(R.string.btn_retry), new DialogInterface.OnClickListener() { // from class: com.alipay.mobile.security.zim.biz.ZimPlatform.1
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                ZimPlatform zimPlatform = ZimPlatform.this;
                zimPlatform.performInitRequest(zimPlatform.mZimId, ZimPlatform.this.mParams, "false");
            }
        }, this.mContext.getString(R.string.btn_exit), new DialogInterface.OnClickListener() { // from class: com.alipay.mobile.security.zim.biz.ZimPlatform.2
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                ZimPlatform zimPlatform = ZimPlatform.this;
                zimPlatform.auth(zimPlatform.mBioParameter);
                ZIMResponse zIMResponse = new ZIMResponse();
                int i3 = zimInitGwResponse.retCode;
                if (200 == i3) {
                    zIMResponse.code = 2006;
                } else {
                    zIMResponse.code = i3;
                }
                zIMResponse.reason = "" + zimInitGwResponse.retCode;
                ZimInitGwResponse zimInitGwResponse2 = zimInitGwResponse;
                zIMResponse.subCode = zimInitGwResponse2.retCodeSub;
                zIMResponse.msg = zimInitGwResponse2.retMessageSub;
                zIMResponse.extInfo.put(ZIMFacade.KEY_BIO_ACTION, String.valueOf(206));
                ZimPlatform.this.recordVerifyResponse(zIMResponse);
                ZimPlatform.this.doCallZimCallback(zIMResponse);
            }
        });
        return true;
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void command(int i2) {
        this.mBioDetector.command(i2);
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void destroy() {
        sIsBusy = false;
        RecordProcessor recordProcessor = RecordProcessor.getInstance();
        HashMap hashMap = new HashMap();
        hashMap.put("module", "zim");
        recordProcessor.record(RecordProcessor.KEY_ZTECH_EXIT, hashMap);
        if (recordProcessor != null) {
            if (recordProcessor.destroyable()) {
                recordProcessor.destroy();
            } else {
                recordProcessor.clear();
            }
        }
        BioDetector bioDetector = this.mBioDetector;
        if (bioDetector != null) {
            bioDetector.destroy();
        }
        BaseGwService baseGwService = this.mBaseGWService;
        if (baseGwService != null) {
            baseGwService.destroy();
        }
        this.mContext = null;
        mH5Context = null;
        this.mBioServiceManager = null;
        this.mZimMessageChannel = null;
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void init(String str, ZimInitGwResponse zimInitGwResponse, Map<String, String> map, ZIMCallback zIMCallback) {
        init(str, zimInitGwResponse, map, null, zIMCallback);
    }

    @Override // com.alipay.mobile.security.bio.api.BioProgressCallback
    public boolean onFaceDetected(Map<String, String> map) {
        if (!(this.mZIMCallback instanceof ZimProgressCallback)) {
            return true;
        }
        if (!TextUtils.isEmpty(this.mFacePayInfo)) {
            map.put(ZIMFacade.KEY_FACE_PAY_INFO, this.mFacePayInfo);
        }
        ((ZimProgressCallback) this.mZIMCallback).onFaceDetected(map);
        return true;
    }

    @Override // com.alipay.mobile.security.zim.gw.GwListener
    public void onInit(ZimInitGwResponse zimInitGwResponse) {
        Class<?> cls;
        try {
            if (this.mLoadingProgressDialog != null) {
                this.mLoadingProgressDialog.cancel();
            }
        } catch (Throwable unused) {
        }
        boolean z = false;
        int i2 = zimInitGwResponse.retCode;
        if (i2 == 1001 || i2 == 200) {
            z = true;
        } else {
            if (!StringUtil.isNullorEmpty(zimInitGwResponse.zimId) && !zimInitGwResponse.zimId.equals(this.mZimId)) {
                this.mZimId = zimInitGwResponse.zimId;
            }
            Map<String, String> map = zimInitGwResponse.extParams;
            if (map != null && !map.isEmpty()) {
                this.mFacePayInfo = zimInitGwResponse.extParams.get(ZIMFacade.KEY_FACE_PAY_INFO);
            }
            this.mBioParameter.setProtocol(zimInitGwResponse.protocol);
            Map<String, String> map2 = this.mParams;
            if (map2 != null && map2.containsKey(ZIMFacade.KEY_AUTO_CLOSE)) {
                this.mBioParameter.setAutoClose(Boolean.parseBoolean(this.mParams.remove(ZIMFacade.KEY_AUTO_CLOSE)));
            }
            Map<String, String> extProperty = this.mBioParameter.getExtProperty();
            extProperty.put(BioDetector.EXT_KEY_VERIFYID, this.mZimId);
            extProperty.put("TOKEN_ID", this.mZimId);
            Map<String, String> map3 = this.mParams;
            if (map3 != null && !map3.isEmpty()) {
                extProperty.putAll(this.mParams);
            }
            RecordProcessor recordProcessor = RecordProcessor.getInstance();
            if (recordProcessor == null) {
                recordProcessor = RecordProcessor.createInstance(this.mContext);
            }
            recordProcessor.zimInit(this.mZimId);
            RecordProcessor.getInstance().record(RecordProcessor.KEY_AUTH_REQUEST);
            this.mBioParameter.isValidate = true;
            try {
                HashMap hashMap = new HashMap();
                if (this.mZimMessageChannel != null) {
                    hashMap.put(ZIMFacade.KEY_ZIM_MSG_CHANNEL, this.mZimMessageChannel);
                }
                if (this.mParams != null && !this.mParams.isEmpty()) {
                    if (this.mParams.containsKey(ZIMFacade.KEY_CERT_NAME)) {
                        hashMap.put(ZIMFacade.KEY_CERT_NAME, this.mParams.get(ZIMFacade.KEY_CERT_NAME));
                    }
                    if (this.mParams.containsKey(ZIMFacade.KEY_CERT_NO)) {
                        hashMap.put(ZIMFacade.KEY_CERT_NO, this.mParams.get(ZIMFacade.KEY_CERT_NO));
                    }
                }
                if (2 == Env.getProtocolFormat(this.mContext)) {
                    cls = Class.forName("com.alipay.mobile.security.bio.service.impl.BioUploadServiceCoreZhubPb");
                } else {
                    cls = Class.forName("com.alipay.mobile.security.bio.service.impl.BioUploadServiceCoreZhubJson");
                }
                String name = BioUploadServiceCore.class.getName();
                BioServiceManager currentInstance = BioServiceManager.getCurrentInstance();
                currentInstance.putBioService(name, cls);
                ((BioUploadServiceCoreZhub) currentInstance.getBioService(name)).setExtParams(this.mZimId, hashMap);
            } catch (Throwable unused2) {
            }
            if (zimInitGwResponse.retCode == 2002 && showRetryDialog(zimInitGwResponse)) {
                return;
            } else {
                auth(this.mBioParameter);
            }
        }
        if (z) {
            ZIMResponse zIMResponse = new ZIMResponse();
            int i3 = zimInitGwResponse.retCode;
            if (200 == i3) {
                zIMResponse.code = 2006;
            } else {
                zIMResponse.code = i3;
            }
            zIMResponse.reason = "" + zimInitGwResponse.retCode;
            zIMResponse.subCode = zimInitGwResponse.retCodeSub;
            zIMResponse.msg = zimInitGwResponse.retMessageSub;
            zIMResponse.extInfo.put(ZIMFacade.KEY_BIO_ACTION, String.valueOf(206));
            recordVerifyResponse(zIMResponse);
            doCallZimCallback(zIMResponse);
        }
    }

    @Override // com.alipay.mobile.security.bio.api.BioCallback
    public void onResult(BioResponse bioResponse) {
        String str = "ZimPlatform.onResult(), response=" + bioResponse;
        HashMap hashMap = new HashMap(2);
        hashMap.put("result", "" + bioResponse.isSuccess());
        hashMap.put("message", "" + bioResponse.getResultMessage());
        hashMap.put("retCode", "" + bioResponse.getResult());
        hashMap.put("subCode", "" + bioResponse.subCode);
        hashMap.put(KEY_SUB_MSG, "" + bioResponse.subMsg);
        RecordProcessor recordProcessor = RecordProcessor.getInstance();
        if (recordProcessor == null) {
            recordProcessor = RecordProcessor.createInstance(this.mContext);
        }
        recordProcessor.zimInit(this.mZimId);
        recordProcessor.record(RecordProcessor.KEY_AUTH_RESPONSE, hashMap);
        boolean z = true;
        ZIMResponse zIMResponse = null;
        Map<String, String> ext = bioResponse.getExt();
        if (ext != null && !ext.isEmpty()) {
            if (ext.containsKey(BioDetector.EXT_KEY_UPLOAD_RESPONSE)) {
                BioUploadResult bioUploadResult = (BioUploadResult) JSON.parseObject(ext.remove(BioDetector.EXT_KEY_UPLOAD_RESPONSE), BioUploadResult.class);
                ZIMResponse zIMResponse2 = new ZIMResponse();
                zIMResponse2.code = bioUploadResult.validationRetCode;
                zIMResponse2.reason = "" + bioUploadResult.validationRetCode;
                zIMResponse2.subCode = bioUploadResult.subCode;
                zIMResponse2.msg = bioUploadResult.subMsg;
                Map<String, String> map = bioUploadResult.extParams;
                if (map != null && !map.isEmpty()) {
                    zIMResponse2.extInfo.putAll(bioUploadResult.extParams);
                }
                if (!ext.isEmpty()) {
                    zIMResponse2.extInfo.putAll(ext);
                }
                zIMResponse = zIMResponse2;
            } else if (ext.containsKey(BioDetector.EXT_KEY_RETRY_UI_TYPE)) {
                retry(ext.get(BioDetector.EXT_KEY_RETRY_UI_TYPE));
                z = false;
            }
        }
        if (z) {
            int result = bioResponse.getResult();
            if (zIMResponse == null) {
                zIMResponse = new ZIMResponse();
                if (bioResponse.getResult() == 205) {
                    zIMResponse.code = 1003;
                } else if (bioResponse.getResult() != 301 && bioResponse.getResult() != 202 && bioResponse.getResult() != 210 && bioResponse.getResult() != 207) {
                    if (bioResponse.getResult() != 200 && bioResponse.getResult() != 101 && bioResponse.getResult() != 100 && bioResponse.getResult() != 102) {
                        if (bioResponse.getResult() == 203) {
                            zIMResponse.code = 1003;
                        } else if (bioResponse.getResult() == 300) {
                            zIMResponse.code = 1003;
                        } else if (bioResponse.getResult() == 209) {
                            zIMResponse.code = ZIMResponseCode.ZIM_RESPONSE_CHOOSE_OTHER_PAYMENT;
                        } else {
                            zIMResponse.code = 1001;
                        }
                    } else {
                        zIMResponse.code = 1003;
                        result = 100;
                    }
                } else {
                    zIMResponse.code = 1003;
                }
                zIMResponse.reason = bioResponse.getResult() + "";
                zIMResponse.subCode = bioResponse.subCode;
                zIMResponse.msg = bioResponse.subMsg;
            }
            recordVerifyResponse(zIMResponse);
            zIMResponse.extInfo.put(ZIMFacade.KEY_BIO_ACTION, String.valueOf(result));
            doCallZimCallback(zIMResponse);
        }
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public ZimInitGwResponse parse(String str) {
        ZimInitGwResponse convert = !TextUtils.isEmpty(str) ? this.mBaseGWService.convert(str) : null;
        String str2 = "parse(): response=" + convert;
        return convert;
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void retry(String str) {
        String str2 = "ZIMFacade.retry(): " + str;
        command(4099);
        ((ZimRecordService) this.mBioServiceManager.getBioService(ZimRecordService.class)).retry();
        this.mBioParameter.addExtProperty(BioDetector.EXT_KEY_RETRY_UI_TYPE, str);
        auth(this.mBioParameter);
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void verify(String str, Map<String, String> map, ZIMCallback zIMCallback) {
        verify(str, map, (ZimMessageChannel) null, zIMCallback);
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void init(String str, ZimInitGwResponse zimInitGwResponse, Map<String, String> map, ZimMessageChannel zimMessageChannel, ZIMCallback zIMCallback) {
        this.isInit = true;
        verify(str, zimInitGwResponse, map, zimMessageChannel, zIMCallback);
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void verify(String str, Map<String, String> map, ZimMessageChannel zimMessageChannel, ZIMCallback zIMCallback) {
        if (map != null) {
            r0 = map.containsKey("zimInitResp") ? parse(map.remove("zimInitResp")) : null;
            if (r0 == null) {
                if (map.containsKey(ZIMFacade.KEY_INIT_RESP_OLD)) {
                    r0 = parse(map.remove(ZIMFacade.KEY_INIT_RESP_OLD));
                }
            } else {
                map.remove(ZIMFacade.KEY_INIT_RESP_OLD);
            }
        }
        verify(str, r0, map, zimMessageChannel, zIMCallback);
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void retry() {
        command(4099);
        ((ZimRecordService) this.mBioServiceManager.getBioService(ZimRecordService.class)).retry();
        auth(this.mBioParameter);
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void verify(String str, ZimInitGwResponse zimInitGwResponse, Map<String, String> map, ZIMCallback zIMCallback) {
        verify(str, zimInitGwResponse, map, null, zIMCallback);
    }

    @Override // com.alipay.mobile.security.zim.api.ZIMFacade
    public void verify(String str, ZimInitGwResponse zimInitGwResponse, Map<String, String> map, ZimMessageChannel zimMessageChannel, ZIMCallback zIMCallback) {
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException("zimId cant be null");
        }
        if (zIMCallback != null) {
            synchronized (ZimPlatform.class) {
                String str2 = "zim is busy : " + sIsBusy;
                if (sIsBusy) {
                    ZIMResponse zIMResponse = new ZIMResponse();
                    zIMResponse.code = 2006;
                    zIMResponse.reason = "busy";
                    zIMResponse.subCode = ZcodeConstants.ZCODE_ZIM_IS_BUSY;
                    zIMResponse.extInfo.put(ZIMFacade.KEY_BIO_ACTION, String.valueOf(BioError.ERROR_SINGLETON_BUSY));
                    recordVerifyResponse(zIMResponse);
                    zIMCallback.response(zIMResponse);
                    return;
                }
                sIsBusy = true;
                this.mZimId = str;
                this.mParams = map;
                this.mZIMCallback = zIMCallback;
                String str3 = "verify(zimId=" + str + ", params=" + StringUtil.map2String(map) + ", channel=" + zimMessageChannel + ", callback=" + zIMCallback + ")";
                String str4 = null;
                if (map != null && map.containsKey(ZIMFacade.KEY_ENV_NAME)) {
                    str4 = map.remove(ZIMFacade.KEY_ENV_NAME);
                }
                ZIMFacade.initEnv(this.mContext, str4);
                initZoloz(this.mContext, str, zimMessageChannel);
                RecordProcessor recordProcessor = RecordProcessor.getInstance();
                if (recordProcessor == null) {
                    recordProcessor = RecordProcessor.createInstance(this.mContext);
                }
                recordProcessor.zimInit(str);
                recordProcessor.record(RecordProcessor.KEY_ZIM_START);
                recordProcessor.record(RecordProcessor.KEY_VERIFY_REQUEST);
                HashMap hashMap = new HashMap();
                hashMap.put("module", "zim");
                recordProcessor.record(RecordProcessor.KEY_ZTECH_ENRTER, hashMap);
                boolean z = zimInitGwResponse != null;
                String bool = Boolean.toString(z);
                this.mBioParameter.addExtProperty(BioDetector.EXT_KEY_IS_MOCK, bool);
                if (z) {
                    onInit(zimInitGwResponse);
                    return;
                } else {
                    performInitRequest(str, map, bool);
                    return;
                }
            }
        }
        throw new IllegalArgumentException("ZIMCallback cant be null");
    }
}
