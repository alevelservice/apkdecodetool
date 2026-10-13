package com.alipay.zoloz.toyger.doc;

import com.alibaba.fastjson.JSON;
import com.alipay.zoloz.toyger.blob.Blob;
import com.alipay.zoloz.toyger.blob.BlobElem;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import com.alipay.zoloz.toyger.blob.Content;
import com.alipay.zoloz.toyger.blob.DocInfo;
import com.alipay.zoloz.toyger.blob.Meta;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class DocBlobManagerJson extends DocBlobManager {
    public DocBlobManagerJson() {
    }

    private Meta generateMeta(List<ToygerDocInfo> list, Map<String, Object> map) {
        Meta meta = new Meta();
        meta.type = BlobStatic.META_TYPE_DOC;
        meta.serialize = 1;
        meta.collectInfo = new HashMap();
        meta.collectInfo.put(ZdocRecordService.DOC_TYPE, getDocType());
        meta.collectInfo.put("pageNo", Integer.valueOf(getPageNum()));
        meta.collectInfo.put("picSize", Long.valueOf(this.picSize));
        if (map != null && map.size() > 0) {
            meta.collectInfo.putAll(map);
        }
        return meta;
    }

    @Override // com.alipay.zoloz.toyger.doc.DocBlobManager, com.alipay.zoloz.toyger.blob.BlobManager
    public byte[] generateBlob(List<ToygerDocInfo> list, Map<String, Object> map) {
        ArrayList arrayList = new ArrayList();
        for (ToygerDocInfo toygerDocInfo : list) {
            BlobElem blobElem = new BlobElem();
            blobElem.type = "doc";
            blobElem.subType = BlobStatic.SUB_TYPE_DOC_IMAGE;
            blobElem.version = "1.0";
            blobElem.idx = 0;
            blobElem.content = processFrame(toygerDocInfo.frame, this.mCropRect);
            if (blobElem.content != null) {
                this.picSize = r2.length;
            } else {
                this.picSize = 0L;
            }
            blobElem.docInfo = new DocInfo();
            blobElem.docInfo.docType = getDocType();
            blobElem.docInfo.pageNo = getPageNum();
            arrayList.add(blobElem);
        }
        Meta generateMeta = generateMeta(list, map);
        Blob blob = new Blob();
        blob.blobElem = arrayList;
        blob.blobVersion = "1.0";
        Content content = new Content();
        content.blob = blob;
        content.meta = generateMeta;
        return JSON.toJSONString(content).getBytes();
    }

    @Override // com.alipay.zoloz.toyger.doc.DocBlobManager, com.alipay.zoloz.toyger.blob.BlobManager, com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public boolean isUTF8() {
        return true;
    }

    public DocBlobManagerJson(ToygerDocBlobConfig toygerDocBlobConfig) {
        super(toygerDocBlobConfig);
    }
}
