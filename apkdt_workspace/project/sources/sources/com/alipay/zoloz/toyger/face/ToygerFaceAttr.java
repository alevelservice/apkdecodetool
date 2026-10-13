package com.alipay.zoloz.toyger.face;

import android.graphics.RectF;
import com.alipay.zoloz.toyger.ToygerAttr;
import com.alipay.zoloz.toyger.algorithm.TGFaceAttr;

/* loaded from: classes.dex */
public class ToygerFaceAttr extends TGFaceAttr implements ToygerAttr {
    public ToygerFaceAttr() {
    }

    @Override // com.alipay.zoloz.toyger.ToygerAttr
    public float brightness() {
        return this.brightness;
    }

    @Override // com.alipay.zoloz.toyger.ToygerAttr
    public short distance() {
        return this.distance;
    }

    public boolean eyeBlink() {
        return this.eyeBlink;
    }

    @Override // com.alipay.zoloz.toyger.ToygerAttr
    public float gaussian() {
        return this.gaussian;
    }

    @Override // com.alipay.zoloz.toyger.ToygerAttr
    public boolean hasTarget() {
        return this.hasFace;
    }

    @Override // com.alipay.zoloz.toyger.ToygerAttr
    public float integrity() {
        return this.integrity;
    }

    public float leftEyeBlinkRatio() {
        return this.leftEyeBlinkRatio;
    }

    @Override // com.alipay.zoloz.toyger.ToygerAttr
    public float motion() {
        return this.motion;
    }

    public float pitch() {
        return this.pitch;
    }

    @Override // com.alipay.zoloz.toyger.ToygerAttr
    public float quality() {
        return this.quality;
    }

    @Override // com.alipay.zoloz.toyger.ToygerAttr
    public RectF region() {
        return this.faceRegion;
    }

    public float rightEyeBlinkRatio() {
        return this.rightEyeBlinkRatio;
    }

    public float yaw() {
        return this.yaw;
    }

    public ToygerFaceAttr(TGFaceAttr tGFaceAttr) {
        this.hasFace = tGFaceAttr.hasFace;
        this.eyeBlink = tGFaceAttr.eyeBlink;
        this.faceRegion = tGFaceAttr.faceRegion;
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

    public ToygerFaceAttr(boolean z, boolean z2, RectF rectF, float f2, float f3, float f4, float f5, float f6, float f7, float f8, float f9, float f10, short s, float[] fArr, float f11, float f12, float f13, float f14) {
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
}
