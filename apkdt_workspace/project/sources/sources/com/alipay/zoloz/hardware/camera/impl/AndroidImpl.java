package com.alipay.zoloz.hardware.camera.impl;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.PointF;
import android.graphics.Rect;
import android.graphics.SurfaceTexture;
import android.hardware.Camera;
import android.text.TextUtils;
import android.view.SurfaceHolder;
import android.view.WindowManager;
import com.alipay.android.phone.zoloz.camera.BuildConfig;
import com.alipay.mobile.security.bio.utils.DisplayUtil;
import com.alipay.mobile.security.faceauth.circle.protocol.DeviceSetting;
import com.alipay.zoloz.hardware.camera.CameraConstants;
import com.alipay.zoloz.hardware.camera.CameraData;
import com.alipay.zoloz.hardware.camera.CameraParams;
import com.alipay.zoloz.hardware.camera.ICameraCallback;
import com.alipay.zoloz.hardware.camera.ICameraInterface;
import com.alipay.zoloz.hardware.camera.utils.AndroidCameraUtil;
import com.alipay.zoloz.hardware.camera.widget.CameraSurfaceView;
import java.nio.ByteBuffer;
import java.util.List;

@SuppressLint({"InlinedApi"})
/* loaded from: classes.dex */
public class AndroidImpl implements ICameraInterface {
    private static AndroidImpl mCameraInterface;
    private boolean isCameraInit;
    private boolean isCameraOpen;
    private boolean isCameraStart;
    private boolean isPreviewing;
    private Camera mCamera;
    private ICameraCallback mCameraCallback;
    private int mCameraID;
    private int mCameraNumber;
    private Context mContext;
    private Camera.Parameters mParams;
    private int mCameraViewRotationAngle = 90;
    private DeviceSetting mDeviceSetting = new DeviceSetting();
    private final Object mLock = new Object();
    private int mWidth = 0;
    private int mHeight = 0;
    private int mPreviewWidth = 0;
    private int mPreviewHeight = 0;
    private boolean isPreviewSize600 = false;

    private AndroidImpl(Context context) {
        this.isCameraInit = false;
        this.isCameraOpen = false;
        this.isCameraStart = false;
        this.isPreviewing = false;
        if (context != null) {
            this.mContext = context;
            this.isCameraInit = false;
            this.isCameraOpen = false;
            this.isCameraStart = false;
            this.isPreviewing = false;
            return;
        }
        throw new IllegalArgumentException("Context can't be null");
    }

    private void adjustBackCameraParams() {
        Camera.Size backCameraPreviewSize;
        if (this.mParams != null) {
            if (this.isPreviewSize600) {
                backCameraPreviewSize = AndroidCameraUtil.getInstance().getPropPreviewSize(this.mParams.getSupportedPreviewSizes(), DisplayUtil.getScreenRate(this.mContext), CameraConstants.CAMERA_MAX_WIDTH);
            } else {
                backCameraPreviewSize = AndroidCameraUtil.getInstance().getBackCameraPreviewSize(this.mParams.getSupportedPreviewSizes(), DisplayUtil.getScreenRate(this.mContext));
            }
            if (backCameraPreviewSize != null) {
                this.mPreviewWidth = backCameraPreviewSize.width;
                this.mPreviewHeight = backCameraPreviewSize.height;
                int i2 = this.mPreviewWidth;
                this.mWidth = i2;
                int i3 = this.mPreviewHeight;
                this.mHeight = i3;
                this.mParams.setPreviewSize(i2, i3);
            }
            DeviceSetting deviceSetting = this.mDeviceSetting;
            if (deviceSetting != null) {
                this.mCameraViewRotationAngle = getCameraAutoAngle(deviceSetting);
                this.mCamera.setDisplayOrientation(this.mCameraViewRotationAngle);
            }
            String bestFocusMode = getBestFocusMode(this.mParams);
            if (TextUtils.isEmpty(bestFocusMode)) {
                return;
            }
            this.mParams.setFocusMode(bestFocusMode);
        }
    }

    private void adjustCameraParams() {
        if (this.mParams != null) {
            if (this.mCameraID == AndroidCameraUtil.findBackCameraId()) {
                adjustBackCameraParams();
            } else {
                adjustFrontCameraParams();
            }
        }
    }

    private void adjustFrontCameraParams() {
        if (this.mParams != null) {
            Camera.Size propPreviewSize = AndroidCameraUtil.getInstance().getPropPreviewSize(this.mParams.getSupportedPreviewSizes(), DisplayUtil.getScreenRate(this.mContext), CameraConstants.CAMERA_MAX_WIDTH);
            if (propPreviewSize != null) {
                this.mPreviewWidth = propPreviewSize.width;
                this.mPreviewHeight = propPreviewSize.height;
                int i2 = this.mPreviewWidth;
                this.mWidth = i2;
                int i3 = this.mPreviewHeight;
                this.mHeight = i3;
                this.mParams.setPreviewSize(i2, i3);
            }
            DeviceSetting deviceSetting = this.mDeviceSetting;
            if (deviceSetting != null) {
                this.mCameraViewRotationAngle = getCameraAutoAngle(deviceSetting);
                this.mCamera.setDisplayOrientation(this.mCameraViewRotationAngle);
            }
            List<String> supportedFocusModes = this.mParams.getSupportedFocusModes();
            if (supportedFocusModes != null) {
                if (supportedFocusModes.contains("continuous-video")) {
                    this.mParams.setFocusMode("continuous-video");
                } else {
                    supportedFocusModes.contains("auto");
                }
            }
        }
    }

    private String getBestFocusMode(Camera.Parameters parameters) {
        if (this.mCamera == null) {
            return null;
        }
        if (parameters.getSupportedFocusModes().contains("continuous-video")) {
            return "continuous-video";
        }
        if (parameters.getSupportedFocusModes().contains("auto")) {
            return "auto";
        }
        if (parameters.getSupportedFocusModes().contains("macro")) {
            return "macro";
        }
        if (parameters.getSupportedFocusModes().contains("fixed")) {
            return "fixed";
        }
        if (parameters.getSupportedFocusModes().size() == 1) {
            return parameters.getSupportedFocusModes().get(0);
        }
        return null;
    }

    private int getCameraAutoAngle(DeviceSetting deviceSetting) {
        if (deviceSetting != null) {
            if (deviceSetting.isDisplayAuto()) {
                return getCameraAutoAngle(this.mCameraID);
            }
            return deviceSetting.getDisplayAngle();
        }
        throw new IllegalArgumentException("deviceSetting can't be null");
    }

    public static synchronized AndroidImpl getInstance(Context context) {
        AndroidImpl androidImpl;
        synchronized (AndroidImpl.class) {
            if (mCameraInterface == null) {
                mCameraInterface = new AndroidImpl(context);
            }
            mCameraInterface.initContext(context);
            androidImpl = mCameraInterface;
        }
        return androidImpl;
    }

    private void initContext(Context context) {
        this.mContext = context;
    }

    private boolean realStartCamera(int i2) {
        try {
            this.mCamera = Camera.open(i2);
        } catch (Exception unused) {
            ICameraCallback iCameraCallback = this.mCameraCallback;
            if (iCameraCallback != null) {
                iCameraCallback.onError(-1);
            }
        } catch (Throwable unused2) {
            ICameraCallback iCameraCallback2 = this.mCameraCallback;
            if (iCameraCallback2 != null) {
                iCameraCallback2.onError(-1);
            }
        }
        if (this.mCamera == null) {
            if (this.mCameraCallback != null) {
                this.mCameraCallback.onError(-1);
            }
            return false;
        }
        this.mCameraID = i2;
        if (this.mCamera != null) {
            this.mParams = this.mCamera.getParameters();
            adjustCameraParams();
            this.mCamera.setParameters(this.mParams);
            if (this.mCameraCallback == null) {
                return true;
            }
            this.mCamera.setPreviewCallback(new Camera.PreviewCallback() { // from class: com.alipay.zoloz.hardware.camera.impl.AndroidImpl.1
                @Override // android.hardware.Camera.PreviewCallback
                public void onPreviewFrame(byte[] bArr, Camera camera) {
                    if (bArr == null || AndroidImpl.this.mCameraCallback == null) {
                        return;
                    }
                    AndroidImpl.this.mCameraCallback.onPreviewFrame(new CameraData(ByteBuffer.wrap(bArr), AndroidImpl.this.mWidth, AndroidImpl.this.mHeight, 0, null, 0, 0, AndroidImpl.this.mPreviewWidth, AndroidImpl.this.mPreviewHeight));
                }
            });
            return true;
        }
        return false;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void closeCamera() {
        if (this.isCameraOpen) {
            this.isCameraOpen = false;
        }
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public PointF colorToDepth(PointF pointF) {
        return null;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public PointF depthToColor(PointF pointF) {
        return null;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public CameraParams getCameraParams() {
        return null;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public String getCameraSN() {
        return null;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public int getCameraViewRotation() {
        return this.mCameraViewRotationAngle;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public int getColorHeight() {
        return this.mHeight;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public int getColorMode() {
        return 0;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public int getColorWidth() {
        return this.mWidth;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public int getDepthHeight() {
        return 0;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public int getDepthWidth() {
        return 0;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public String getFirmwareVersion() {
        return null;
    }

    public Camera.Parameters getParams() {
        return this.mParams;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public int getPreviewHeight() {
        return this.mPreviewHeight;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public int getPreviewWidth() {
        return this.mPreviewWidth;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public Rect getROI() {
        return null;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public Object getUVCCamera() {
        return null;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void initCamera(DeviceSetting deviceSetting) {
        if (this.isCameraInit) {
            return;
        }
        if (deviceSetting != null) {
            this.mDeviceSetting = deviceSetting;
        }
        this.isCameraInit = true;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public boolean isMirror() {
        return false;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void openCamera(DeviceSetting deviceSetting) {
        if (this.isCameraOpen) {
            return;
        }
        if (deviceSetting != null) {
            this.mDeviceSetting = deviceSetting;
        }
        this.isCameraOpen = true;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void releaseCamera() {
        stopCamera();
        if (this.isCameraInit) {
            this.isCameraInit = false;
            this.mContext = null;
            CameraSurfaceView.release();
            mCameraInterface = null;
        }
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void setCallback(ICameraCallback iCameraCallback) {
        this.mCameraCallback = iCameraCallback;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void setFrameAvailableListener(SurfaceTexture.OnFrameAvailableListener onFrameAvailableListener) {
    }

    public void setPreviewSize600(boolean z) {
        this.isPreviewSize600 = z;
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void startCamera() {
        int cameraID;
        if (this.isCameraStart) {
            return;
        }
        this.mCameraNumber = Camera.getNumberOfCameras();
        if (this.mDeviceSetting.isCameraAuto()) {
            cameraID = this.mCameraNumber <= 1 ? 0 : 1;
        } else {
            cameraID = this.mDeviceSetting.getCameraID();
        }
        if (realStartCamera(cameraID)) {
            this.isCameraStart = true;
        }
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void startPreview(SurfaceHolder surfaceHolder, float f2, int i2, int i3) {
        Camera camera;
        if (this.isPreviewing || (camera = this.mCamera) == null) {
            return;
        }
        try {
            camera.setPreviewDisplay(surfaceHolder);
            this.mCamera.startPreview();
            this.isPreviewing = true;
        } catch (Exception e2) {
            e2.toString();
            ICameraCallback iCameraCallback = this.mCameraCallback;
            if (iCameraCallback != null) {
                iCameraCallback.onError(-1);
            }
        }
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void stopCamera() {
        stopPreview();
        if (this.isCameraStart) {
            if (this.mCamera != null) {
                synchronized (this.mLock) {
                    try {
                        this.mCamera.release();
                        this.mCamera = null;
                        this.isCameraStart = false;
                    } catch (Exception e2) {
                        e2.toString();
                    }
                }
                return;
            }
            this.isCameraStart = false;
        }
    }

    @Override // com.alipay.zoloz.hardware.camera.ICameraInterface
    public void stopPreview() {
        if (this.isPreviewing && this.mCamera != null) {
            synchronized (this.mLock) {
                try {
                    this.mCamera.setOneShotPreviewCallback(null);
                    this.mCamera.setPreviewCallback(null);
                    this.mCamera.stopPreview();
                } catch (Exception e2) {
                    e2.toString();
                }
            }
            this.mCameraCallback = null;
            this.isPreviewing = false;
        }
    }

    private int getCameraAutoAngle(int i2) {
        Camera.CameraInfo cameraInfo = new Camera.CameraInfo();
        Camera.getCameraInfo(i2, cameraInfo);
        int rotation = ((WindowManager) this.mContext.getSystemService("window")).getDefaultDisplay().getRotation();
        int i3 = 0;
        if (rotation != 0) {
            if (rotation == 1) {
                i3 = 90;
            } else if (rotation == 2) {
                i3 = 180;
            } else if (rotation == 3) {
                i3 = 270;
            }
        }
        if (cameraInfo.facing == 1) {
            if (BuildConfig.OFFLINE.booleanValue()) {
                cameraInfo.orientation = 270;
            }
            return (360 - ((cameraInfo.orientation + i3) % 360)) % 360;
        }
        if (BuildConfig.OFFLINE.booleanValue()) {
            cameraInfo.orientation = 90;
        }
        return ((cameraInfo.orientation - i3) + 360) % 360;
    }
}
