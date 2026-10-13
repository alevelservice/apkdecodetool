package com.alipay.zoloz.toyger.blob;

import android.graphics.Rect;
import com.alibaba.fastjson.JSON;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.face.ToygerFaceInfo;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class GenericBlobManagerJSON extends BlobManager implements GenericBlobManagerInterface {
    private List<BlobElem> mMonitorBlobElems;
    private String type;

    public GenericBlobManagerJSON(String str, String str2) {
        this.type = str;
        this.crypto = new CryptoManager(str2);
    }

    private Meta generateMeta(List<ToygerFaceInfo> list, Map<String, Object> map) {
        Meta meta = new Meta();
        if ("face".equals(this.type)) {
            meta.type = BlobStatic.META_TYPE_FACE;
        } else {
            meta.type = BlobStatic.META_TYPE_DOC;
        }
        meta.score = map;
        meta.serialize = 1;
        meta.collectInfo = new HashMap();
        return meta;
    }

    private BlobElem generateMonitorBlobElem(TGFrame tGFrame) {
        byte[] processFrame = processFrame(tGFrame, BlobStatic.MONITOR_IMAGE_WIDTH, 15, new Rect());
        if (processFrame == null) {
            return null;
        }
        BlobElem blobElem = new BlobElem();
        if ("face".equals(this.type)) {
            blobElem.type = "face";
        } else {
            blobElem.type = "doc";
        }
        blobElem.subType = BlobStatic.SUB_TYPE_SURVEILLANCE;
        blobElem.version = "1.0";
        List<BlobElem> list = this.mMonitorBlobElems;
        blobElem.idx = list == null ? 0 : list.size();
        blobElem.content = processFrame;
        String str = "monitor image length:" + blobElem.content.length;
        return blobElem;
    }

    @Override // com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public void addMonitorFrame(TGFrame tGFrame) {
        BlobElem generateMonitorBlobElem = generateMonitorBlobElem(tGFrame);
        if (this.mMonitorBlobElems == null) {
            this.mMonitorBlobElems = new ArrayList();
        }
        if (generateMonitorBlobElem != null) {
            this.mMonitorBlobElems.add(generateMonitorBlobElem);
        }
    }

    @Override // com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public void cleanAllData() {
        List<BlobElem> list = this.mMonitorBlobElems;
        if (list != null) {
            list.clear();
        }
    }

    @Override // com.alipay.zoloz.toyger.blob.BlobManager
    public byte[] generateBlob(List list, Map map) {
        throw new RuntimeException("method is not implemented");
    }

    @Override // com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public byte[] generateMonitorBlob() {
        List<BlobElem> list = this.mMonitorBlobElems;
        if (list == null || list.size() == 0) {
            return null;
        }
        Meta generateMeta = generateMeta(null, null);
        Blob blob = new Blob();
        blob.blobElem = this.mMonitorBlobElems;
        blob.blobVersion = "1.0";
        Content content = new Content();
        content.blob = blob;
        content.meta = generateMeta;
        String jSONString = JSON.toJSONString(content);
        this.mMonitorBlobElems.clear();
        return jSONString.getBytes();
    }

    @Override // com.alipay.zoloz.toyger.blob.BlobManager, com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public byte[] getKey() {
        return this.crypto.getAESCypher();
    }

    @Override // com.alipay.zoloz.toyger.blob.BlobManager, com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public boolean isUTF8() {
        return true;
    }
}
