package com.alipay.mobile.security.bio.config;

/* loaded from: classes.dex */
public enum BisRuntimeInfoEnum {
    ASSETS_READY("bEva", 0),
    PROTOCOL_FORMAT("fmt", 1),
    LOCAL_FACE_COMPARE("locFace", 10);

    private String mProduct;
    private int mProductID;

    BisRuntimeInfoEnum(String str, int i2) {
        this.mProduct = str;
        this.mProductID = i2;
    }

    public String getProduct() {
        return this.mProduct;
    }

    public int getProductID() {
        return this.mProductID;
    }

    public void setProduct(String str) {
        this.mProduct = str;
    }

    public void setProductID(int i2) {
        this.mProductID = i2;
    }
}
