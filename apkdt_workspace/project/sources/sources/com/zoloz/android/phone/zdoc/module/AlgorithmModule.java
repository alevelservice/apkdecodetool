package com.zoloz.android.phone.zdoc.module;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class AlgorithmModule implements Serializable {
    private int blur = 80;
    private int exposure = 20;
    private int card_detect_score = 80;
    private int algoType = -1;

    public int getAlgoType() {
        return this.algoType;
    }

    public int getBlur() {
        return this.blur;
    }

    public int getCard_detect_score() {
        return this.card_detect_score;
    }

    public int getExposure() {
        return this.exposure;
    }

    public void setAlgoType(int i2) {
        this.algoType = i2;
    }

    public void setBlur(int i2) {
        this.blur = i2;
    }

    public void setCard_detect_score(int i2) {
        this.card_detect_score = i2;
    }

    public void setExposure(int i2) {
        this.exposure = i2;
    }
}
