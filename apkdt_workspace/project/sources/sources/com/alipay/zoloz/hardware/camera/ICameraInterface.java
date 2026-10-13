package com.alipay.zoloz.hardware.camera;

import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.view.SurfaceHolder;
import com.alipay.mobile.security.faceauth.circle.protocol.DeviceSetting;

/* loaded from: classes.dex */
public interface ICameraInterface {
    void closeCamera();

    PointF colorToDepth(PointF pointF);

    PointF depthToColor(PointF pointF);

    CameraParams getCameraParams();

    String getCameraSN();

    int getCameraViewRotation();

    int getColorHeight();

    int getColorMode();

    int getColorWidth();

    int getDepthHeight();

    int getDepthWidth();

    String getFirmwareVersion();

    int getPreviewHeight();

    int getPreviewWidth();

    Rect getROI();

    Object getUVCCamera();

    void initCamera(DeviceSetting deviceSetting);

    boolean isMirror();

    void openCamera(DeviceSetting deviceSetting);

    void releaseCamera();

    void setCallback(ICameraCallback iCameraCallback);

    void setFrameAvailableListener(SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener);

    void startCamera();

    void startPreview(SurfaceHolder surfaceHolder, float f2, int i2, int i3);

    void stopCamera();

    void stopPreview();
}
