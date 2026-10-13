package com.alipay.zoloz.hardware.camera;

/* loaded from: classes.dex */
public interface ICameraCallback {
    void onError(int i2);

    void onPreviewFrame(CameraData cameraData);

    void onSurfaceChanged(double d2, double d3);

    void onSurfaceCreated();

    void onSurfaceDestroyed();
}
