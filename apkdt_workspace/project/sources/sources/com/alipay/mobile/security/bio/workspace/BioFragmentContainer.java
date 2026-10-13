package com.alipay.mobile.security.bio.workspace;

import a.n.a.a;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.g;
import androidx.fragment.app.j;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.bio.api.BioResponse;
import com.alipay.mobile.security.bio.common.record.MetaRecord;
import com.alipay.mobile.security.bio.config.Constant;
import com.alipay.mobile.security.bio.constants.CodeConstants;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.service.BioAppManager;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.ZimRecordService;
import com.alipay.mobile.security.bio.service.local.rpc.BioRPCService;
import com.alipay.mobile.security.bio.utils.SignHelper;
import e.b.a.a.a.a.a.b;
import e.b.a.a.a.a.a.c;
import java.util.Map;
import java.util.UUID;

/* loaded from: classes.dex */
public class BioFragmentContainer extends FragmentActivity implements BioFragmentCallBack {
    protected BioAppDescription mBioAppDescription;
    protected BioFragment mBioFragment;
    protected BioServiceManager mBioServiceManager;
    private final BroadcastReceiver mBiologyBroadcastReceiver = new BroadcastReceiver() { // from class: com.alipay.mobile.security.bio.workspace.BioFragmentContainer.1
        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (Constant.BIOLOGY_FLAG_AUTOCLOSE.equals(intent.getAction())) {
                BioFragmentContainer.this.verifyCallBackEvent();
                BioFragmentContainer.this.commandFinished();
            }
            BioFragmentContainer.this.onReceiveAction(intent);
        }
    };
    protected g mFragmentManager;
    protected a mLocalBroadcastManager;

    @Override // com.alipay.mobile.security.bio.workspace.BioFragmentCallBack
    public void backward(Bundle bundle) {
        if (this.mFragmentManager.c() > 1) {
            this.mFragmentManager.f();
            this.mBioFragment = (BioFragment) this.mFragmentManager.e().get(this.mFragmentManager.c() - 1);
        }
    }

    protected void commandFinished() {
        finishActivity(false);
    }

    @Override // com.alipay.mobile.security.bio.workspace.BioFragmentCallBack
    public void finish(Bundle bundle) {
        finish();
    }

    public void finishActivity(boolean z) {
        String str = getClass().getSimpleName() + ".finishActivity: auto=" + z;
        if (z) {
            BioAppDescription bioAppDescription = this.mBioAppDescription;
            if (bioAppDescription == null || bioAppDescription.isAutoClose()) {
                finish();
                return;
            }
            return;
        }
        finish();
    }

    @Override // com.alipay.mobile.security.bio.workspace.BioFragmentCallBack
    public void forward(Bundle bundle, BioFragment bioFragment) {
        g gVar = this.mFragmentManager;
        if (gVar == null) {
            new RuntimeException("null == mFragmentManager in forward()");
            sendResponse(206);
            finish();
            return;
        }
        j a2 = gVar.a();
        a2.a(b.f16840a, bioFragment);
        this.mBioFragment = bioFragment;
        if (bundle != null ? bundle.getBoolean("BACK_STACK", true) : false) {
            a2.a((String) null);
        }
        if (isFinishing()) {
            return;
        }
        try {
            a2.b();
        } catch (Exception unused) {
        }
    }

    public BioAppDescription getAppDescription() {
        return this.mBioAppDescription;
    }

    protected String getUniqueID() {
        return SignHelper.MD5(System.currentTimeMillis() + "_" + (Math.random() * 10000.0d) + UUID.randomUUID().toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(c.f16854c);
        this.mBioServiceManager = BioServiceManager.getCurrentInstance();
        if (this.mBioServiceManager == null) {
            new RuntimeException("null == BioServiceManager.getCurrentInstance()");
            sendResponse(206);
            finish();
            return;
        }
        this.mLocalBroadcastManager = a.a(getApplicationContext());
        IntentFilter intentFilter = new IntentFilter(Constant.BIOLOGY_FLAG_AUTOCLOSE);
        IntentFilter intentFilter2 = new IntentFilter(Constant.BIOLOGY_FLAG_SERVER_SUCCESS);
        IntentFilter intentFilter3 = new IntentFilter(Constant.BIOLOGY_FLAG_SERVER_FAIL);
        IntentFilter intentFilter4 = new IntentFilter(Constant.BIOLOGY_FLAG_SERVER_RETRY);
        this.mLocalBroadcastManager.a(this.mBiologyBroadcastReceiver, intentFilter);
        this.mLocalBroadcastManager.a(this.mBiologyBroadcastReceiver, intentFilter2);
        this.mLocalBroadcastManager.a(this.mBiologyBroadcastReceiver, intentFilter3);
        this.mLocalBroadcastManager.a(this.mBiologyBroadcastReceiver, intentFilter4);
        this.mFragmentManager = getSupportFragmentManager();
        if (this.mFragmentManager == null) {
            new RuntimeException("null == mFragmentManager");
            sendResponse(206);
            finish();
            return;
        }
        try {
            this.mBioAppDescription = ((BioAppManager) this.mBioServiceManager.getBioService(BioAppManager.class)).getBioAppDescription(getIntent().getStringExtra(Constant.BIOLOGY_INTENT_ACTION_INFO));
            String remoteURL = this.mBioAppDescription.getRemoteURL();
            if (TextUtils.isEmpty(remoteURL)) {
                return;
            }
            ((BioRPCService) this.mBioServiceManager.getBioService(BioRPCService.class)).setRemoteUrl(remoteURL);
        } catch (Exception unused) {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        a aVar = this.mLocalBroadcastManager;
        if (aVar != null) {
            aVar.a(this.mBiologyBroadcastReceiver);
        }
        super.onDestroy();
    }

    protected void onReceiveAction(Intent intent) {
    }

    @Override // android.app.Activity
    protected void onUserLeaveHint() {
        ZimRecordService zimRecordService;
        if (this.mBioServiceManager != null && (zimRecordService = (ZimRecordService) this.mBioServiceManager.getBioService(ZimRecordService.class)) != null) {
            zimRecordService.write(new MetaRecord("", "event", "20001117", "ztech_background", 1));
        }
        super.onUserLeaveHint();
    }

    public void sendAvatarResponse(BioFragmentResponse bioFragmentResponse) {
    }

    public void sendProgressResponse(BioFragmentResponse bioFragmentResponse) {
        Intent intent = new Intent(Constant.BIOLOGY_CALLBACK_PROGRESS_ACTION);
        BioResponse bioResponse = new BioResponse();
        bioResponse.setSuccess(bioFragmentResponse.isSucess);
        bioResponse.setToken(bioFragmentResponse.token);
        bioResponse.subCode = bioFragmentResponse.subCode;
        bioResponse.subMsg = bioFragmentResponse.subMsg;
        bioResponse.setResultMessage(bioFragmentResponse.resultMessage);
        bioResponse.setResult(bioFragmentResponse.errorCode);
        bioResponse.setTag(this.mBioAppDescription.getTag());
        Map<String, String> map = bioFragmentResponse.ext;
        if (map != null) {
            bioResponse.setExt(map);
        }
        Bundle bundle = new Bundle();
        bundle.putString(Constant.BIOLOGY_INTENT_ACTION_REV, JSON.toJSONString(bioResponse));
        intent.putExtras(bundle);
        this.mLocalBroadcastManager.a(intent);
    }

    public void sendResponse(String str, int i2, String str2) {
        Intent intent = new Intent(Constant.BIOLOGY_CALLBACK_ACTION);
        BioResponse bioResponse = new BioResponse();
        bioResponse.setSuccess(false);
        bioResponse.setResult(i2);
        if (i2 == 101 || i2 == 200) {
            bioResponse.subCode = CodeConstants.ERROR_CAMERA;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 100) {
            bioResponse.subCode = CodeConstants.ERROR_CAMERA;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 205) {
            bioResponse.subCode = CodeConstants.SERVER_PARAM_ERROR;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 209) {
            bioResponse.subCode = CodeConstants.OUT_TIME;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 102) {
            bioResponse.subCode = CodeConstants.USER_UNSURPPORT_CPU;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 105) {
            bioResponse.subCode = CodeConstants.ANDROID_VERSION_LOW;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 201) {
            bioResponse.subCode = CodeConstants.INVALID_ARGUMENT;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 202) {
            bioResponse.subCode = CodeConstants.USER_QUITE;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 203) {
            bioResponse.subCode = CodeConstants.OVER_TIME;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 207) {
            bioResponse.subCode = CodeConstants.NETWORK_TIMEOUT;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 208) {
            bioResponse.subCode = CodeConstants.SERVER_FAIL;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 3001) {
            bioResponse.subCode = CodeConstants.LIVENESS_ERROR;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        } else if (i2 == 301) {
            bioResponse.subCode = CodeConstants.USER_BACK;
            bioResponse.subMsg = CodeConstants.getMessage(bioResponse.subCode);
        }
        bioResponse.setResultMessage(str2);
        bioResponse.setTag(str);
        Bundle bundle = new Bundle();
        bundle.putString(Constant.BIOLOGY_INTENT_ACTION_REV, JSON.toJSONString(bioResponse));
        intent.putExtras(bundle);
        String str3 = "sendResponse(uniqueID=" + str + ", error=" + i2 + ", other=" + str2 + ")";
        this.mLocalBroadcastManager.a(intent);
    }

    public void sendResponseWithSubcode(int i2, String str, String str2) {
        BioAppDescription bioAppDescription = this.mBioAppDescription;
        if (bioAppDescription == null) {
            return;
        }
        String tag = bioAppDescription.getTag();
        Intent intent = new Intent(Constant.BIOLOGY_CALLBACK_ACTION);
        BioResponse bioResponse = new BioResponse();
        bioResponse.setSuccess(false);
        bioResponse.setResult(i2);
        bioResponse.subCode = str;
        if (TextUtils.isEmpty(str2)) {
            str2 = CodeConstants.getMessage(bioResponse.subCode);
        }
        bioResponse.subMsg = str2;
        bioResponse.setResultMessage("");
        bioResponse.setTag(tag);
        Bundle bundle = new Bundle();
        bundle.putString(Constant.BIOLOGY_INTENT_ACTION_REV, JSON.toJSONString(bioResponse));
        intent.putExtras(bundle);
        String str3 = "sendResponse(uniqueID=" + tag + ", error=" + i2 + ", subCode=" + str + ")";
        this.mLocalBroadcastManager.a(intent);
    }

    protected void verifyCallBackEvent() {
    }

    public void sendResponse(int i2) {
        BioAppDescription bioAppDescription = this.mBioAppDescription;
        if (bioAppDescription != null) {
            sendResponse(bioAppDescription.getTag(), i2, "");
        }
    }

    public void sendResponse(BioFragmentResponse bioFragmentResponse) {
        Intent intent = new Intent(Constant.BIOLOGY_CALLBACK_ACTION);
        BioResponse bioResponse = new BioResponse();
        bioResponse.setSuccess(bioFragmentResponse.isSucess);
        bioResponse.setToken(bioFragmentResponse.token);
        bioResponse.subCode = bioFragmentResponse.subCode;
        bioResponse.subMsg = bioFragmentResponse.subMsg;
        bioResponse.setResultMessage(bioFragmentResponse.resultMessage);
        bioResponse.setResult(bioFragmentResponse.errorCode);
        bioResponse.setTag(this.mBioAppDescription.getTag());
        Map<String, String> map = bioFragmentResponse.ext;
        if (map != null) {
            bioResponse.setExt(map);
        }
        Bundle bundle = new Bundle();
        bundle.putString(Constant.BIOLOGY_INTENT_ACTION_REV, JSON.toJSONString(bioResponse));
        intent.putExtras(bundle);
        this.mLocalBroadcastManager.a(intent);
    }
}
