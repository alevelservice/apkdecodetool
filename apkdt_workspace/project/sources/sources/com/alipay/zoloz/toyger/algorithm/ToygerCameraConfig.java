package com.alipay.zoloz.toyger.algorithm;

import android.graphics.Rect;
import java.util.Arrays;

/* loaded from: classes.dex */
public class ToygerCameraConfig {
    public float[] color2depthExtrin;
    public float[] colorIntrin;
    public float[] depthIntrin;
    public boolean isAligned;
    public Rect roiRect;

    public ToygerCameraConfig() {
        this.roiRect = new Rect();
    }

    public String toString() {
        return "ToygerCameraConfig{colorIntrin=" + Arrays.toString(this.colorIntrin) + ", depthIntrin=" + Arrays.toString(this.depthIntrin) + ", color2depthExtrin=" + Arrays.toString(this.color2depthExtrin) + ", roiRect=" + this.roiRect + '}';
    }

    public ToygerCameraConfig(float[] fArr, float[] fArr2, float[] fArr3, Rect rect) {
        this.roiRect = new Rect();
        this.colorIntrin = fArr;
        this.depthIntrin = fArr2;
        this.color2depthExtrin = fArr3;
        this.roiRect = rect;
        this.isAligned = false;
    }
}
