package com.alipay.zoloz.zface.beans;

import android.graphics.Bitmap;
import com.alipay.mobile.security.bio.utils.StringUtil;
import com.alipay.zoloz.toyger.algorithm.TGFaceAttr;
import com.alipay.zoloz.toyger.algorithm.TGFaceState;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.upload.UploadContent;
import java.util.Map;

/* loaded from: classes.dex */
public class ToygerFrame {
    public Bitmap bestBitmap;
    public Map<String, Object> extInfo;
    public UploadContent uploadContent;
    public TGFrame tgFrame = new TGFrame();
    public TGFaceState tgFaceState = new TGFaceState();
    public TGFaceAttr tgFaceAttr = new TGFaceAttr();

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("ToygerFrame{, tgFrame=");
        sb.append(this.tgFrame != null ? "***" : "null");
        sb.append(", tgFaceState=");
        sb.append(this.tgFaceState != null ? "***" : "null");
        sb.append(", tgFaceAttr=");
        sb.append(this.tgFaceAttr != null ? "***" : "null");
        sb.append(", uploadContent=");
        sb.append(this.uploadContent);
        sb.append(", bestBitmap=");
        sb.append(this.bestBitmap == null ? "null" : "***");
        sb.append(", extInfo=");
        Map<String, Object> map = this.extInfo;
        sb.append(map != null ? StringUtil.collection2String(map.keySet()) : "null");
        sb.append('}');
        return sb.toString();
    }
}
