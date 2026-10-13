package com.alipay.biometrics.ui.widget;

import android.graphics.RectF;

/* loaded from: classes.dex */
public class AlgorithmInfo {
    private float brightness;
    public float deepLiveness;
    private short distance;
    private boolean eyeBlink;
    private int faceId = -1;
    private RectF faceRegion = new RectF();
    private float gaussian;
    private boolean hasFace;
    private float integrity;
    private float leftEyeBlinkRatio;
    private float motion;
    private float pitch;
    private float quality;
    private float rightEyeBlinkRatio;
    private float yaw;

    public float getBrightness() {
        return this.brightness;
    }

    public float getDeepLiveness() {
        return this.deepLiveness;
    }

    public short getDistance() {
        return this.distance;
    }

    public int getFaceId() {
        return this.faceId;
    }

    public RectF getFaceRegion() {
        return this.faceRegion;
    }

    public float getGaussian() {
        return this.gaussian;
    }

    public float getIntegrity() {
        return this.integrity;
    }

    public float getLeftEyeBlinkRatio() {
        return this.leftEyeBlinkRatio;
    }

    public float getMotion() {
        return this.motion;
    }

    public float getPitch() {
        return this.pitch;
    }

    public float getQuality() {
        return this.quality;
    }

    public float getRightEyeBlinkRatio() {
        return this.rightEyeBlinkRatio;
    }

    public float getYaw() {
        return this.yaw;
    }

    public boolean isEyeBlink() {
        return this.eyeBlink;
    }

    public boolean isHasFace() {
        return this.hasFace;
    }

    public void setBrightness(float f2) {
        this.brightness = f2;
    }

    public void setDeepLiveness(float f2) {
        this.deepLiveness = f2;
    }

    public void setDistance(short s) {
        this.distance = s;
    }

    public void setEyeBlink(boolean z) {
        this.eyeBlink = z;
    }

    public void setFaceId(int i2) {
        this.faceId = i2;
    }

    public void setFaceRegion(RectF rectF) {
        this.faceRegion = rectF;
    }

    public void setGaussian(float f2) {
        this.gaussian = f2;
    }

    public void setHasFace(boolean z) {
        this.hasFace = z;
    }

    public void setIntegrity(float f2) {
        this.integrity = f2;
    }

    public void setLeftEyeBlinkRatio(float f2) {
        this.leftEyeBlinkRatio = f2;
    }

    public void setMotion(float f2) {
        this.motion = f2;
    }

    public void setPitch(float f2) {
        this.pitch = f2;
    }

    public void setQuality(float f2) {
        this.quality = f2;
    }

    public void setRightEyeBlinkRatio(float f2) {
        this.rightEyeBlinkRatio = f2;
    }

    public void setYaw(float f2) {
        this.yaw = f2;
    }
}
