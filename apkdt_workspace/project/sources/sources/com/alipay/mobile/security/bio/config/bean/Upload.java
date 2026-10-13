package com.alipay.mobile.security.bio.config.bean;

import com.alipay.mobile.security.bio.common.record.MetaRecord;
import com.alipay.mobile.security.bio.utils.StringUtil;

/* loaded from: classes.dex */
public class Upload {
    private String[] collection;
    private int minquality = 10;
    private String mode = "2.0";
    private float upload_compress_rate = 0.8f;
    private String log_classifier = MetaRecord.DEFAULT_LOG_CLASSIFIERS;

    public String[] getCollection() {
        return this.collection;
    }

    public String getLogClassifier() {
        return this.log_classifier;
    }

    public String getLog_classifier() {
        return this.log_classifier;
    }

    public int getMinquality() {
        return this.minquality;
    }

    public String getMode() {
        return this.mode;
    }

    public float getUpload_compress_rate() {
        return this.upload_compress_rate;
    }

    public void setCollection(String[] strArr) {
        this.collection = strArr;
    }

    public void setLogClassifier(String str) {
        this.log_classifier = str;
    }

    public void setLog_classifier(String str) {
        this.log_classifier = str;
    }

    public void setMinquality(int i2) {
        this.minquality = i2;
    }

    public void setMode(String str) {
        this.mode = str;
    }

    public void setUpload_compress_rate(float f2) {
        this.upload_compress_rate = f2;
    }

    public String toString() {
        return "Upload{minquality=" + this.minquality + ", mode='" + this.mode + "', upload_compress_rate=" + this.upload_compress_rate + ", log_classifier='" + this.log_classifier + "', collection='" + StringUtil.array2String(this.collection) + "'}";
    }
}
