package com.zoloz.android.phone.zdoc.fragment;

import android.os.Bundle;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import com.alipay.zoloz.hardware.camera.CameraData;
import com.zoloz.android.phone.zdoc.module.ZdocRemoteConfig;
import com.zoloz.android.phone.zdoc.service.DocMonitorFrameManager;
import com.zoloz.android.phone.zdoc.service.IMonitorCallback;

/* loaded from: classes2.dex */
public class BaseDocWithNineCaptureFragment extends BaseDocFragment {
    private DocMonitorFrameManager mDocMonitorFrameManager;
    private boolean isGettingPreviewImg = false;
    private boolean isCameraCanUsed = false;

    private void initDocMonitorManager() {
        if (this.mDocMonitorFrameManager == null) {
            this.mDocMonitorFrameManager = new DocMonitorFrameManager(this.mZdocRemoteConfig, this.mUploadManager.getPublicKey());
            this.mDocMonitorFrameManager.setTimerTask(new IMonitorCallback() { // from class: com.zoloz.android.phone.zdoc.fragment.BaseDocWithNineCaptureFragment.1
                @Override // com.zoloz.android.phone.zdoc.service.IMonitorCallback
                public void onTimeout() {
                    if (BaseDocWithNineCaptureFragment.this.isGettingPreviewImg) {
                        return;
                    }
                    BaseDocWithNineCaptureFragment.this.isGettingPreviewImg = true;
                }
            });
        }
    }

    private void uploadMonitorFrame() {
        DocMonitorFrameManager docMonitorFrameManager = this.mDocMonitorFrameManager;
        if (docMonitorFrameManager != null) {
            byte[] monitorBlob = docMonitorFrameManager.getMonitorBlob();
            byte[] key = this.mDocMonitorFrameManager.getKey();
            boolean isUTF8 = this.mDocMonitorFrameManager.isUTF8();
            if (monitorBlob != null) {
                this.mUploadManager.uploadNineShoot(monitorBlob, key, isUTF8);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment
    public void handleUploading() {
        DocMonitorFrameManager docMonitorFrameManager = this.mDocMonitorFrameManager;
        if (docMonitorFrameManager != null) {
            docMonitorFrameManager.resetCurrentFrameNummer();
        }
        super.handleUploading();
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.mUploadManager == null) {
            getActivity().finish();
        }
        ZdocRemoteConfig zdocRemoteConfig = this.mZdocRemoteConfig;
        if (zdocRemoteConfig == null || zdocRemoteConfig.getUploadMonitorPic() != 1) {
            return;
        }
        initDocMonitorManager();
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        DocMonitorFrameManager docMonitorFrameManager = this.mDocMonitorFrameManager;
        if (docMonitorFrameManager != null) {
            docMonitorFrameManager.destroy();
            this.mDocMonitorFrameManager = null;
        }
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment, com.alipay.zoloz.hardware.camera.ICameraCallback
    public void onPreviewFrame(CameraData cameraData) {
        super.onPreviewFrame(cameraData);
        if (this.isGettingPreviewImg) {
            this.mDocMonitorFrameManager.addMonitorFrame(createTGFrame(cameraData));
            this.mDocMonitorFrameManager.updateCurrentFrameNumber();
            this.isGettingPreviewImg = false;
        }
    }

    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment
    public void responseWithCode(int i2, BioUploadResult bioUploadResult) {
        uploadMonitorFrame();
        super.responseWithCode(i2, bioUploadResult);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.zoloz.android.phone.zdoc.fragment.BaseDocFragment
    public void upLoadImage() {
        super.upLoadImage();
        uploadMonitorFrame();
    }
}
