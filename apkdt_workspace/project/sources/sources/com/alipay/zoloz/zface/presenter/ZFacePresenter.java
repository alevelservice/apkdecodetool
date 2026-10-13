package com.alipay.zoloz.zface.presenter;

import com.alipay.zoloz.hardware.camera.widget.CameraSurfaceView;
import com.alipay.zoloz.zface.beans.AlertData;
import com.alipay.zoloz.zface.beans.FaceRemoteConfig;

/* loaded from: classes.dex */
public class ZFacePresenter extends ZFaceBasePresenter {
    public ZFacePresenter(ZFaceCallback zFaceCallback, String str, CameraSurfaceView cameraSurfaceView) {
        super(zFaceCallback, str, cameraSurfaceView);
        attachView();
    }

    @Override // com.alipay.zoloz.zface.presenter.ZFaceBasePresenter
    public AlertData getAlertData(int i2) {
        return super.getAlertData(i2);
    }

    public FaceRemoteConfig getRemoteConfig() {
        return super.getFaceRemoteConfig();
    }

    public void reStartProcess() {
        super.retry();
    }

    public void release() {
        unAttachView();
    }

    public void stopProcess() {
        super.pause();
    }
}
