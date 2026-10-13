package com.zoloz.android.phone.zdoc.activities;

import android.R;
import android.annotation.SuppressLint;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.widget.FrameLayout;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.g;
import androidx.fragment.app.j;
import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.bio.api.BioDetector;
import com.alipay.mobile.security.bio.service.BioAppDescription;
import com.alipay.mobile.security.bio.service.BioServiceManager;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.mobile.security.bio.service.local.apsecurity.ApSecurityService;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.alipay.mobile.security.bio.workspace.BioFragmentContainer;
import com.alipay.mobile.security.bio.workspace.BioFragmentResponse;
import com.alipay.mobile.security.zim.api.ZIMFacade;
import com.zoloz.android.phone.zdoc.cardmanager.CardManagerCallBack;
import com.zoloz.android.phone.zdoc.cardmanager.FalconTaskManager;
import com.zoloz.android.phone.zdoc.cardmanager.ZdocResponse;
import com.zoloz.android.phone.zdoc.constant.DocCodeConstants;
import com.zoloz.android.phone.zdoc.constant.ZdocConstant;
import com.zoloz.android.phone.zdoc.fragment.BaseDocFragment;
import com.zoloz.android.phone.zdoc.fragment.BaseFragment;
import com.zoloz.android.phone.zdoc.fragment.ZdocCaptureFragment;
import com.zoloz.android.phone.zdoc.fragment.ZdocScanFragment;
import com.zoloz.android.phone.zdoc.module.ZdocRemoteConfig;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.util.HashMap;
import java.util.Locale;

/* loaded from: classes2.dex */
public class FalconCardNativeActivityNew extends BioFragmentContainer implements CardManagerCallBack {
    private FrameLayout mContainerView;
    protected Fragment mFragment;
    private String mProtocolConfig;
    private ZdocRecordService mRecoreService;
    protected String mTarget = ZdocCaptureFragment.class.getName();
    protected Bundle mArgs = new Bundle();

    private void bindActivityFragment() {
        try {
            Class<?> cls = Class.forName(this.mTarget, true, getClassLoader());
            try {
                String makeTag = makeTag(this.mContainerView.getId(), cls.getName());
                g supportFragmentManager = getSupportFragmentManager();
                j a2 = supportFragmentManager.a();
                BaseDocFragment baseDocFragment = (BaseDocFragment) supportFragmentManager.a(makeTag);
                if (baseDocFragment != null) {
                    if (baseDocFragment.getArguments() == null) {
                        try {
                            baseDocFragment.setArguments(this.mArgs);
                        } catch (IllegalStateException unused) {
                        }
                    } else {
                        baseDocFragment.getArguments().putAll(this.mArgs);
                    }
                    a2.a(baseDocFragment);
                } else {
                    baseDocFragment = (BaseDocFragment) cls.newInstance();
                    baseDocFragment.setArguments(this.mArgs);
                    a2.b(this.mContainerView.getId(), baseDocFragment, makeTag);
                }
                a2.b();
                this.mFragment = baseDocFragment;
            } catch (Exception e2) {
                throw new RuntimeException(e2);
            }
        } catch (ClassNotFoundException e3) {
            e3.printStackTrace();
            throw new RuntimeException(e3);
        }
    }

    private void initContainerView() {
        this.mContainerView = new FrameLayout(this);
        this.mContainerView.setLayoutParams(new FrameLayout.LayoutParams(-1, -1));
        this.mContainerView.setId(R.id.primary);
        setContentView(this.mContainerView);
    }

    private String makeTag(int i2, String str) {
        return FalconCardNativeActivityNew.class.getSimpleName() + ":" + i2 + ":" + str;
    }

    private void recordStartZdoc() {
        ApSecurityService apSecurityService;
        if (this.mRecoreService == null) {
            this.mRecoreService = (ZdocRecordService) BioServiceManager.getCurrentInstance().getBioService(ZdocRecordService.class);
        }
        this.mProtocolConfig = this.mBioAppDescription.getCfg();
        HashMap hashMap = new HashMap();
        hashMap.put(ZdocRecordService.PRODUCT_ID, "zoloz_zdoc");
        hashMap.put("sdkVersion", ZdocConstant.SDK_VERSION);
        hashMap.put(ZdocRecordService.BISTOKEN, this.mBioAppDescription.getBistoken());
        String staticApDidToken = ApSecurityService.getStaticApDidToken();
        if (TextUtils.isEmpty(staticApDidToken) && (apSecurityService = (ApSecurityService) BioServiceManager.getCurrentInstance().getBioService(ApSecurityService.class)) != null) {
            staticApDidToken = apSecurityService.getApDidToken();
        }
        hashMap.put(ZdocRecordService.APDIDTOKEN, staticApDidToken);
        this.mRecoreService.addExtProperties(hashMap);
        HashMap hashMap2 = new HashMap();
        hashMap2.put(ZdocRecordService.PARAMES, this.mProtocolConfig);
        hashMap2.put(ZdocRecordService.DEVICE_BRAND, Build.BRAND);
        this.mRecoreService.write(ZdocRecordService.START_ZDOC, hashMap2);
    }

    private void updateLocale(String str) {
        Locale locale;
        if (str != null) {
            try {
                Configuration configuration = getResources().getConfiguration();
                if (str.contains("-")) {
                    String[] split = str.split("-");
                    if (split.length == 2) {
                        locale = new Locale(split[0], split[1]);
                    } else if (split.length == 1) {
                        locale = new Locale(split[0]);
                    } else if (Build.VERSION.SDK_INT >= 24) {
                        locale = getResources().getConfiguration().getLocales().get(0);
                    } else {
                        locale = getResources().getConfiguration().locale;
                    }
                } else {
                    locale = new Locale(str);
                }
                if (Build.VERSION.SDK_INT >= 17) {
                    configuration.setLocale(locale);
                } else {
                    configuration.locale = new Locale(str);
                }
                getBaseContext().getResources().updateConfiguration(configuration, getResources().getDisplayMetrics());
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        Fragment fragment;
        if ((i2 >> 16) == 0 && (fragment = this.mFragment) != null) {
            fragment.onActivityResult(i2, i3, intent);
        } else {
            super.onActivityResult(i2, i3, intent);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        Fragment fragment = this.mFragment;
        if (fragment instanceof BaseDocFragment ? ((BaseDocFragment) fragment).onBackPressed() : false) {
            return;
        }
        super.onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.alipay.mobile.security.bio.workspace.BioFragmentContainer, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"InlinedApi"})
    public void onCreate(Bundle bundle) {
        requestWindowFeature(1);
        setRequestedOrientation(1);
        super.onCreate(bundle);
        if (BioServiceManager.getCurrentInstance() == null) {
            new IllegalStateException("null == BioServiceManager.getCurrentInstance()");
            finish();
            return;
        }
        BioAppDescription bioAppDescription = this.mBioAppDescription;
        if (bioAppDescription == null) {
            new IllegalStateException("null == mBioAppDescription");
            finish();
            return;
        }
        updateLocale(bioAppDescription.getExtProperty().get(ZIMFacade.KEY_LOCALE));
        recordStartZdoc();
        FalconTaskManager.getInstance().setContext(this);
        FalconTaskManager.getInstance().registerCallback(this);
        FalconTaskManager.getInstance().setBioServiceManager(BioServiceManager.getCurrentInstance());
        try {
            getWindow().setFlags(FileUtil.STREAM_BUFFER_SIZE, FileUtil.STREAM_BUFFER_SIZE);
        } catch (Throwable unused) {
        }
        initContainerView();
        try {
            ZdocRemoteConfig zdocRemoteConfig = (ZdocRemoteConfig) JSON.parseObject(this.mBioAppDescription.getCfg(), ZdocRemoteConfig.class);
            if (zdocRemoteConfig.getCaptureMode() == 1) {
                this.mTarget = ZdocScanFragment.class.getName();
            } else {
                this.mTarget = ZdocCaptureFragment.class.getName();
            }
            this.mArgs.putSerializable("bio", this.mBioAppDescription);
            this.mArgs.putSerializable("config", zdocRemoteConfig);
            bindActivityFragment();
        } catch (Exception unused2) {
            finish();
        }
    }

    @Override // android.app.Activity
    protected void onRestart() {
        super.onRestart();
        Fragment fragment = this.mFragment;
        if (fragment == null || !(fragment instanceof BaseFragment)) {
            return;
        }
        ((BaseFragment) fragment).onRestart();
    }

    @Override // com.zoloz.android.phone.zdoc.cardmanager.CardManagerCallBack
    public void onResult(ZdocResponse zdocResponse) {
        HashMap hashMap = new HashMap();
        hashMap.put(ZdocRecordService.ZDOC_RESULT, Integer.toString(zdocResponse.retCode));
        if (this.mRecoreService == null) {
            this.mRecoreService = (ZdocRecordService) BioServiceManager.getCurrentInstance().getBioService(ZdocRecordService.class);
        }
        this.mRecoreService.write(ZdocRecordService.END_ZDOC, hashMap);
        if (zdocResponse != null) {
            BioFragmentResponse bioFragmentResponse = new BioFragmentResponse();
            BioUploadResult bioUploadResult = zdocResponse.bioUploadResult;
            if (bioUploadResult != null) {
                bioFragmentResponse.isSucess = bioUploadResult.productRetCode == 1001;
                BioUploadResult bioUploadResult2 = zdocResponse.bioUploadResult;
                bioFragmentResponse.suggest = bioUploadResult2.productRetCode;
                bioFragmentResponse.resultMessage = bioUploadResult2.subMsg;
                bioFragmentResponse.ext.put(BioDetector.EXT_KEY_UPLOAD_RESPONSE, JSON.toJSONString(bioUploadResult2));
            }
            bioFragmentResponse.errorCode = zdocResponse.retCode;
            bioFragmentResponse.ext.putAll(zdocResponse.ext);
            bioFragmentResponse.token = getAppDescription().getBistoken();
            int i2 = zdocResponse.retCode;
            if (i2 == 101 || i2 == 200) {
                bioFragmentResponse.subCode = DocCodeConstants.ERROR_CAMERA;
                bioFragmentResponse.subMsg = DocCodeConstants.getMessage(bioFragmentResponse.subCode);
            } else if (i2 == 100) {
                bioFragmentResponse.subCode = DocCodeConstants.ERROR_CAMERA;
                bioFragmentResponse.subMsg = DocCodeConstants.getMessage(bioFragmentResponse.subCode);
            } else if (i2 == 205) {
                bioFragmentResponse.subCode = DocCodeConstants.ERROR_SYSTEM;
                bioFragmentResponse.subMsg = DocCodeConstants.getMessage(bioFragmentResponse.subCode);
            } else if (i2 == 209) {
                bioFragmentResponse.subCode = DocCodeConstants.TOO_MANY_FAIL;
                bioFragmentResponse.subMsg = DocCodeConstants.getMessage(bioFragmentResponse.subCode);
            } else if (i2 == 202) {
                bioFragmentResponse.subCode = DocCodeConstants.INTERRUPT;
                bioFragmentResponse.subMsg = DocCodeConstants.getMessage(bioFragmentResponse.subCode);
            } else if (i2 == 203) {
                bioFragmentResponse.subCode = DocCodeConstants.TIME_OUT;
                bioFragmentResponse.subMsg = DocCodeConstants.getMessage(bioFragmentResponse.subCode);
            } else if (i2 == 207) {
                bioFragmentResponse.subCode = DocCodeConstants.NETWORK_BAD;
                bioFragmentResponse.subMsg = DocCodeConstants.getMessage(bioFragmentResponse.subCode);
            } else if (i2 == 208) {
                bioFragmentResponse.subCode = DocCodeConstants.FAIL_RETRY;
                bioFragmentResponse.subMsg = DocCodeConstants.getMessage(bioFragmentResponse.subCode);
            } else if (i2 == 301) {
                bioFragmentResponse.subCode = DocCodeConstants.USER_QUIT;
                bioFragmentResponse.subMsg = DocCodeConstants.getMessage(bioFragmentResponse.subCode);
            }
            sendResponse(bioFragmentResponse);
            finishActivity(false);
        }
    }

    @Override // android.app.Activity, android.view.Window.Callback
    public void onWindowFocusChanged(boolean z) {
        super.onWindowFocusChanged(z);
        ((BaseDocFragment) this.mFragment).onWindowFocusChanged(z);
    }
}
