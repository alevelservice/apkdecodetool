package com.alipay.zoloz.zface.beans;

import com.alibaba.fastjson.JSON;
import com.alipay.mobile.security.bio.service.BioUploadResult;
import java.util.Map;

/* loaded from: classes.dex */
public class UploadData {
    private Map<String, String> extParams;
    private BioUploadResult mBioUploadResult;
    private String mOriginalData;

    public UploadData(BioUploadResult bioUploadResult) {
        this.mBioUploadResult = bioUploadResult;
        this.extParams = bioUploadResult.extParams;
        this.mOriginalData = JSON.toJSONString(this.mBioUploadResult);
    }

    public BioUploadResult getBioUploadResult() {
        return this.mBioUploadResult;
    }

    public String getOriginalData() {
        return this.mOriginalData;
    }

    public String toString() {
        return "UploadData{, extParams=" + this.extParams + '}';
    }
}
