package com.alipay.zoloz.toyger.face;

import com.alibaba.fastjson.JSON;
import com.alipay.zoloz.toyger.algorithm.ToygerBlobConfig;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class ToygerFaceBlobConfig extends ToygerBlobConfig {
    public List<String> collection;
    public int desiredWidth;
    public float upload_compress_rate;

    public ToygerFaceBlobConfig() {
        this.upload_compress_rate = 0.7f;
        this.desiredWidth = 480;
        this.collection = new ArrayList();
        this.collection.add(BlobStatic.SUB_TYPE_PANO);
    }

    public static ToygerFaceBlobConfig from(String str, String str2) {
        ToygerFaceBlobConfig toygerFaceBlobConfig = (ToygerFaceBlobConfig) JSON.parseObject(str, ToygerFaceBlobConfig.class);
        if (toygerFaceBlobConfig.desiredWidth <= 0) {
            toygerFaceBlobConfig.desiredWidth = 1280;
        }
        if (toygerFaceBlobConfig.collection == null) {
            toygerFaceBlobConfig.collection = new ArrayList();
        }
        toygerFaceBlobConfig.pubkey = str2;
        return toygerFaceBlobConfig;
    }

    @Override // com.alipay.zoloz.toyger.algorithm.ToygerBlobConfig
    public float getCompressRate() {
        return this.upload_compress_rate;
    }

    @Override // com.alipay.zoloz.toyger.algorithm.ToygerBlobConfig
    public Integer getDesiredWidth() {
        return Integer.valueOf(this.desiredWidth);
    }

    public int getMinWidth(int i2) {
        int i3 = this.desiredWidth;
        return i3 > i2 ? i2 : i3;
    }

    public String toString() {
        return "ToygerFaceBlobConfig{upload_compress_rate=" + this.upload_compress_rate + ", desiredWidth=" + this.desiredWidth + ", collection=" + this.collection + '}';
    }

    public ToygerFaceBlobConfig(float f2, int i2, String str) {
        this.upload_compress_rate = f2;
        this.desiredWidth = i2;
        this.pubkey = str;
    }
}
