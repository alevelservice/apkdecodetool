package com.alipay.mobile.security.bio.config.bean;

import java.util.Arrays;

/* loaded from: classes.dex */
public class Threshold {
    private float[] DragonflyLiveness;
    private float[] GeminiLiveness;

    public float[] getDragonflyLiveness() {
        return this.DragonflyLiveness;
    }

    public float[] getGeminiLiveness() {
        return this.GeminiLiveness;
    }

    public void setDragonflyLiveness(float[] fArr) {
        this.DragonflyLiveness = fArr;
    }

    public void setGeminiLiveness(float[] fArr) {
        this.GeminiLiveness = fArr;
    }

    public String toString() {
        return "Threshold{GeminiLiveness=" + Arrays.toString(this.GeminiLiveness) + ", DragonflyLiveness=" + Arrays.toString(this.DragonflyLiveness) + '}';
    }
}
