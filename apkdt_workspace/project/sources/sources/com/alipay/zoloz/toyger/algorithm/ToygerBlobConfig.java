package com.alipay.zoloz.toyger.algorithm;

/* loaded from: classes.dex */
public abstract class ToygerBlobConfig {
    public String pubkey;

    public abstract float getCompressRate();

    public Integer getDesiredWidth() {
        return -1;
    }
}
