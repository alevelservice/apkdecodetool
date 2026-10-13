package com.zoloz.android.phone.zdoc.module;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class CollModule implements Serializable {
    private int retryLimit = 3;
    private int scanTimeout = 30;
    private int uiType = 0;
    private int pageNo = 1;
    private String docType = "006200001";
    private int algoType = 1;

    public int getAlgoType() {
        return this.algoType;
    }

    public String getDocType() {
        return this.docType;
    }

    public int getPageNo() {
        return this.pageNo;
    }

    public int getRetryLimit() {
        return this.retryLimit;
    }

    public int getScanTimeout() {
        return this.scanTimeout;
    }

    public int getUiType() {
        return this.uiType;
    }

    public void setAlgoType(int i2) {
        this.algoType = i2;
    }

    public void setDocType(String str) {
        this.docType = str;
    }

    public void setPageNo(int i2) {
        this.pageNo = i2;
    }

    public void setRetryLimit(int i2) {
        this.retryLimit = i2;
    }

    public void setScanTimeout(int i2) {
        this.scanTimeout = i2;
    }

    public void setUiType(int i2) {
        this.uiType = i2;
    }
}
