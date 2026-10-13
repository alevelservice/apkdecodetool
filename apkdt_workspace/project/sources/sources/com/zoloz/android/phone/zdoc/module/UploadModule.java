package com.zoloz.android.phone.zdoc.module;

import java.io.Serializable;

/* loaded from: classes2.dex */
public class UploadModule implements Serializable {
    private String docType = "";
    private int pageNo = 1;
    private float ratio = 0.7f;

    public String getDocType() {
        return this.docType;
    }

    public int getPageNo() {
        return this.pageNo;
    }

    public float getRatio() {
        return this.ratio;
    }

    public void setDocType(String str) {
        this.docType = str;
    }

    public void setPageNo(int i2) {
        this.pageNo = i2;
    }

    public void setRatio(float f2) {
        this.ratio = f2;
    }
}
