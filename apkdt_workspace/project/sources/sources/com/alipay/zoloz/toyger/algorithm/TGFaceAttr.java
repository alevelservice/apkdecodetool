package com.alipay.zoloz.toyger.algorithm;

import android.graphics.RectF;
import java.util.Arrays;

/* loaded from: classes.dex */
public class TGFaceAttr {
    public float brightness;
    public float confidence;
    public float deepLiveness;
    public short distance;
    public boolean eyeBlink;
    public RectF faceRegion;
    public float gaussian;
    public boolean hasFace;
    public float integrity;
    public float iodRatio;
    public float[] keypts10;
    public float leftEyeBlinkRatio;
    public float motion;
    public float pitch;
    public float quality;
    public float rightEyeBlinkRatio;
    public float roll;
    public float yaw;

    public TGFaceAttr() {
        this.faceRegion = new RectF();
    }

    public String toString() {
        return "TGFaceAttr{hasFace=" + this.hasFace + ", eyeBlink=" + this.eyeBlink + ", faceRegion=" + this.faceRegion + ", quality=" + this.quality + ", yaw=" + this.yaw + ", pitch=" + this.pitch + ", gaussian=" + this.gaussian + ", motion=" + this.motion + ", brightness=" + this.brightness + ", integrity=" + this.integrity + ", leftEyeBlinkRatio=" + this.leftEyeBlinkRatio + ", rightEyeBlinkRatio=" + this.rightEyeBlinkRatio + ", distance=" + ((int) this.distance) + ", keypts10=" + Arrays.toString(this.keypts10) + ", confidence=" + this.confidence + ", roll=" + this.roll + ", iodRatio=" + this.iodRatio + ", deepLiveness=" + this.deepLiveness + '}';
    }

    public TGFaceAttr(boolean z, boolean z2, RectF rectF, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, short s, float[] fArr, float f11, float f12, float f13, float f14) {
        this.hasFace = z;
        this.eyeBlink = z2;
        this.faceRegion = rectF;
        this.quality = f2;
        this.yaw = f3;
        this.pitch = f4;
        this.gaussian = f5;
        this.motion = f6;
        this.brightness = f7;
        this.integrity = f8;
        this.leftEyeBlinkRatio = f9;
        this.rightEyeBlinkRatio = f10;
        this.distance = s;
        this.keypts10 = fArr;
        this.confidence = f11;
        this.roll = f12;
        this.iodRatio = f13;
        this.deepLiveness = f14;
    }

    public TGFaceAttr(TGFaceAttr tGFaceAttr) {
        if (tGFaceAttr != null) {
            this.hasFace = tGFaceAttr.hasFace;
            this.eyeBlink = tGFaceAttr.eyeBlink;
            this.faceRegion = new RectF(tGFaceAttr.faceRegion);
            this.quality = tGFaceAttr.quality;
            this.yaw = tGFaceAttr.yaw;
            this.pitch = tGFaceAttr.pitch;
            this.gaussian = tGFaceAttr.gaussian;
            this.motion = tGFaceAttr.motion;
            this.brightness = tGFaceAttr.brightness;
            this.integrity = tGFaceAttr.integrity;
            this.leftEyeBlinkRatio = tGFaceAttr.leftEyeBlinkRatio;
            this.rightEyeBlinkRatio = tGFaceAttr.rightEyeBlinkRatio;
            this.distance = tGFaceAttr.distance;
            this.keypts10 = tGFaceAttr.keypts10;
            this.confidence = tGFaceAttr.confidence;
            this.roll = tGFaceAttr.roll;
            this.iodRatio = tGFaceAttr.iodRatio;
            this.deepLiveness = tGFaceAttr.deepLiveness;
        }
    }
}
