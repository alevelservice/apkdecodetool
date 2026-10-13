package com.alipay.zoloz.toyger.algorithm;

/* loaded from: classes.dex */
public class ToygerQualityConfig {
    public float blinkOpenness;
    public float eyeOpenness;
    public float maxGaussian;
    public float maxMotion;
    public float maxPitch;
    public float maxYaw;
    public float max_iod;
    public float minBrightness;
    public float minFaceWidth;
    public float minIntegrity;
    public float minPitch;
    public float minQuality;
    public float minYaw;
    public float min_iod;
    public float stackTime;

    public ToygerQualityConfig() {
    }

    public String toString() {
        return "ToygerQualityConfig{minBrightness=" + this.minBrightness + ", minFaceWidth=" + this.minFaceWidth + ", minIntegrity=" + this.minIntegrity + ", maxPitch=" + this.maxPitch + ", maxYaw=" + this.maxYaw + ", maxGaussian=" + this.maxGaussian + ", maxMotion=" + this.maxMotion + ", minQuality=" + this.minQuality + ", stackTime=" + this.stackTime + ", min_iod=" + this.min_iod + ", max_iod=" + this.max_iod + ", eyeOpenness=" + this.eyeOpenness + ", blinkOpenness=" + this.blinkOpenness + ", minPitch=" + this.minPitch + ", minYaw=" + this.minYaw + '}';
    }

    public ToygerQualityConfig(float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, float f11, float f12, float f13, float f14, float f15, float f16) {
        this.minBrightness = f2;
        this.minFaceWidth = f3;
        this.minIntegrity = f4;
        this.maxPitch = f5;
        this.maxYaw = f6;
        this.maxGaussian = f7;
        this.maxMotion = f8;
        this.minQuality = f9;
        this.stackTime = f10;
        this.min_iod = f11;
        this.max_iod = f12;
        this.blinkOpenness = f13;
        this.eyeOpenness = f14;
        this.minPitch = f15;
        this.minYaw = f16;
    }
}
