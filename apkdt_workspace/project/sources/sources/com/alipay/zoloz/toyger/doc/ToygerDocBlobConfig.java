package com.alipay.zoloz.toyger.doc;

import com.alibaba.fastjson.JSON;
import com.alipay.zoloz.toyger.algorithm.ToygerBlobConfig;

/* loaded from: classes.dex */
public class ToygerDocBlobConfig extends ToygerBlobConfig {
    public String docType;
    public int pageNo;
    public float ratio;

    public ToygerDocBlobConfig() {
    }

    public static ToygerDocBlobConfig from(String str, String str2) {
        ToygerDocBlobConfig toygerDocBlobConfig = (ToygerDocBlobConfig) JSON.parseObject(str, ToygerDocBlobConfig.class);
        toygerDocBlobConfig.pubkey = str2;
        return toygerDocBlobConfig;
    }

    @Override // com.alipay.zoloz.toyger.algorithm.ToygerBlobConfig
    public float getCompressRate() {
        return this.ratio;
    }

    @Override // com.alipay.zoloz.toyger.algorithm.ToygerBlobConfig
    public Integer getDesiredWidth() {
        return 1080;
    }

    public String toString() {
        return "ToygerDocBlobConfig{ratio=" + this.ratio + '}';
    }

    public ToygerDocBlobConfig(float f2, String str) {
        this.ratio = f2;
        this.pubkey = str;
    }
}
