package com.alipay.mobile.security.faceauth.circle.protocol;

/* loaded from: classes.dex */
public class DeviceSetting {
    boolean displayAuto = true;
    int displayAngle = 90;
    boolean cameraAuto = true;
    int cameraID = 1;
    boolean algorithmAuto = true;
    int algorithmAngle = 270;
    int maxApiLevel = 100;
    int minApiLevel = 0;

    public int getAlgorithmAngle() {
        return this.algorithmAngle;
    }

    public int getCameraID() {
        return this.cameraID;
    }

    public int getDisplayAngle() {
        return this.displayAngle;
    }

    public int getMaxApiLevel() {
        return this.maxApiLevel;
    }

    public int getMinApiLevel() {
        return this.minApiLevel;
    }

    public boolean isAlgorithmAuto() {
        return this.algorithmAuto;
    }

    public boolean isCameraAuto() {
        return this.cameraAuto;
    }

    public boolean isDisplayAuto() {
        return this.displayAuto;
    }

    public void setAlgorithmAngle(int i2) {
        this.algorithmAngle = i2;
    }

    public void setAlgorithmAuto(boolean z) {
        this.algorithmAuto = z;
    }

    public void setCameraAuto(boolean z) {
        this.cameraAuto = z;
    }

    public void setCameraID(int i2) {
        this.cameraID = i2;
    }

    public void setDisplayAngle(int i2) {
        this.displayAngle = i2;
    }

    public void setDisplayAuto(boolean z) {
        this.displayAuto = z;
    }

    public void setMaxApiLevel(int i2) {
        this.maxApiLevel = i2;
    }

    public void setMinApiLevel(int i2) {
        this.minApiLevel = i2;
    }

    public String toString() {
        return "DeviceSetting{displayAuto=" + this.displayAuto + ", displayAngle=" + this.displayAngle + ", cameraAuto=" + this.cameraAuto + ", cameraID=" + this.cameraID + ", algorithmAuto=" + this.algorithmAuto + ", algorithmAngle=" + this.algorithmAngle + ", maxApiLevel=" + this.maxApiLevel + ", minApiLevel=" + this.minApiLevel + '}';
    }
}
