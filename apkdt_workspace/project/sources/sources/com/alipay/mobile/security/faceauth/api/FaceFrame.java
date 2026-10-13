package com.alipay.mobile.security.faceauth.api;

import android.graphics.Rect;
import android.graphics.RectF;
import com.alipay.mobile.security.faceauth.FaceDetectType;

/* loaded from: classes.dex */
public abstract class FaceFrame {
    private FaceDetectType faceDetectType;
    private FaceFrameType faceFrameType;
    protected FaceInfo mFaceInfo;
    private int yuvAngle;
    private int yuvHeight;
    private int yuvWidth;
    private int deviceAngle = 0;
    private float deviceLight = 0.0f;
    private double fgyroangle = 0.0d;

    public float getBrightness() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.brightness;
    }

    public int getDeviceAngle() {
        return this.deviceAngle;
    }

    public float getDeviceLight() {
        return this.deviceLight;
    }

    public float getEyeLeftDet() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return 0.0f;
        }
        return faceInfo.eyeLeftDet;
    }

    public float getEyeLeftOcclussion() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return 0.0f;
        }
        return faceInfo.eyeLeftOcclussion;
    }

    public float getEyeRightDet() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return 0.0f;
        }
        return faceInfo.eyeRightDet;
    }

    public float getEyeRightOcclussion() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return 0.0f;
        }
        return faceInfo.eyeRightOcclussion;
    }

    public FaceDetectType getFaceDetectType() {
        return this.faceDetectType;
    }

    public FaceFrameType getFaceFrameType() {
        return this.faceFrameType;
    }

    public RectF getFacePos() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return null;
        }
        return faceInfo.position;
    }

    public float getFaceQuality() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.faceQuality;
    }

    public synchronized Rect getFaceSize() {
        if (this.mFaceInfo == null) {
            return null;
        }
        return this.mFaceInfo.faceSize;
    }

    public double getFgyroangle() {
        return this.fgyroangle;
    }

    public float getGaussianBlur() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.gaussianBlur;
    }

    public abstract byte[] getImageData(Rect rect, boolean z, int i2, int i3, boolean z2, boolean z3, int i4);

    public float getIntegrity() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return 0.0f;
        }
        return faceInfo.integrity;
    }

    public float getLeftEyeHwratio() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.leftEyeHWRatio;
    }

    public float getMotionBlur() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.motionBlur;
    }

    public float getMouthDet() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.mouthDet;
    }

    @Deprecated
    public float getMouthHwratio() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.mouthHWRatio;
    }

    public float getMouthOcclusion() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return 0.0f;
        }
        return faceInfo.mouthOcclussion;
    }

    public float getPitchAngle() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.pitch;
    }

    public float getRightEyeHwratio() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.rightEyeHWRatio;
    }

    public float getWearGlass() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return 0.0f;
        }
        return faceInfo.wearGlass;
    }

    public float getYawAngle() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return -1.0f;
        }
        return faceInfo.yaw;
    }

    public int getYuvAngle() {
        return this.yuvAngle;
    }

    public abstract byte[] getYuvData();

    public int getYuvHeight() {
        return this.yuvHeight;
    }

    public int getYuvWidth() {
        return this.yuvWidth;
    }

    public boolean hasFace() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo != null) {
            return faceInfo.hasFace;
        }
        return false;
    }

    public boolean isEyeBlink() {
        FaceInfo faceInfo = this.mFaceInfo;
        return faceInfo != null && faceInfo.eyeBlink;
    }

    public boolean isMouthOpen() {
        FaceInfo faceInfo = this.mFaceInfo;
        return faceInfo != null && faceInfo.mouthOpen;
    }

    public boolean isNoVideo() {
        FaceInfo faceInfo = this.mFaceInfo;
        if (faceInfo == null) {
            return false;
        }
        return faceInfo.notVideo;
    }

    public void setDeviceAngle(int i2) {
        this.deviceAngle = i2;
    }

    public void setDeviceLight(float f2) {
        this.deviceLight = f2;
    }

    public void setFaceDetectType(FaceDetectType faceDetectType) {
        this.faceDetectType = faceDetectType;
    }

    public void setFaceFrameType(FaceFrameType faceFrameType) {
        this.faceFrameType = faceFrameType;
    }

    public void setFaceInfo(FaceInfo faceInfo) {
        this.mFaceInfo = faceInfo;
    }

    public void setFgyroangle(double d2) {
        this.fgyroangle = d2;
    }

    public void setYuvAngle(int i2) {
        this.yuvAngle = i2;
    }

    public void setYuvHeight(int i2) {
        this.yuvHeight = i2;
    }

    public void setYuvWidth(int i2) {
        this.yuvWidth = i2;
    }
}
