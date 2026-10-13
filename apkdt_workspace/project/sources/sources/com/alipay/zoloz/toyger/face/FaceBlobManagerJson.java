package com.alipay.zoloz.toyger.face;

import android.graphics.Rect;
import com.alibaba.fastjson.JSON;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.blob.Blob;
import com.alipay.zoloz.toyger.blob.BlobElem;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import com.alipay.zoloz.toyger.blob.Content;
import com.alipay.zoloz.toyger.blob.FaceInfo;
import com.alipay.zoloz.toyger.blob.Meta;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class FaceBlobManagerJson extends FaceBlobManager {
    private List<BlobElem> mMonitorBlobElems;

    public FaceBlobManagerJson() {
    }

    private Meta generateMeta(List<ToygerFaceInfo> list, Map<String, Object> map) {
        Meta meta = new Meta();
        meta.type = BlobStatic.META_TYPE_FACE;
        meta.score = map;
        meta.serialize = 1;
        return meta;
    }

    private BlobElem generateMonitorBlob(TGFrame tGFrame) {
        BlobElem blobElem = new BlobElem();
        blobElem.type = "face";
        blobElem.subType = BlobStatic.SUB_TYPE_SURVEILLANCE;
        blobElem.version = "1.0";
        List<BlobElem> list = this.mMonitorBlobElems;
        blobElem.idx = list == null ? 0 : list.size();
        blobElem.content = processFrame(tGFrame, BlobStatic.MONITOR_IMAGE_WIDTH, 15, new Rect());
        if (blobElem.content == null) {
            return null;
        }
        String str = "monitor image length:" + blobElem.content.length;
        return blobElem;
    }

    @Override // com.alipay.zoloz.toyger.face.FaceBlobManager, com.alipay.zoloz.toyger.blob.BlobManager
    public byte[] generateBlob(List<ToygerFaceInfo> list, Map<String, Object> map) {
        Meta generateMeta = generateMeta(list, map);
        ArrayList arrayList = new ArrayList();
        for (ToygerFaceInfo toygerFaceInfo : list) {
            BlobElem blobElem = new BlobElem();
            blobElem.type = "face";
            blobElem.subType = getBlobElemType(toygerFaceInfo);
            blobElem.version = "1.0";
            blobElem.idx = 0;
            blobElem.content = processFrame(toygerFaceInfo.frame);
            if (blobElem.content == null) {
                return null;
            }
            blobElem.faceInfos = new ArrayList();
            blobElem.faceInfos.add(generateFaceInfo(toygerFaceInfo));
            arrayList.add(blobElem);
        }
        Blob blob = new Blob();
        blob.blobElem = arrayList;
        blob.blobVersion = "1.0";
        Content content = new Content();
        content.blob = blob;
        content.meta = generateMeta;
        return JSON.toJSONString(content).getBytes();
    }

    protected FaceInfo generateFaceInfo(ToygerFaceInfo toygerFaceInfo) {
        FaceInfo faceInfo = new FaceInfo();
        TGFrame tGFrame = toygerFaceInfo.frame;
        int i2 = tGFrame.rotation % 180 == 0 ? tGFrame.width : tGFrame.height;
        TGFrame tGFrame2 = toygerFaceInfo.frame;
        int i3 = tGFrame2.width;
        if (i2 == i3) {
            i3 = tGFrame2.height;
        }
        int intValue = (i2 <= this.config.getDesiredWidth().intValue() || this.config.getDesiredWidth().intValue() <= 0) ? i2 : this.config.getDesiredWidth().intValue();
        faceInfo.rect = FaceBlobManager.convertFaceRegion(((ToygerFaceAttr) toygerFaceInfo.attr).region(), intValue, (int) ((intValue / i2) * i3), toygerFaceInfo.frame.rotation, false);
        faceInfo.quality = ((ToygerFaceAttr) toygerFaceInfo.attr).quality();
        return faceInfo;
    }

    @Override // com.alipay.zoloz.toyger.face.FaceBlobManager, com.alipay.zoloz.toyger.blob.BlobManager, com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public boolean isUTF8() {
        return true;
    }

    public FaceBlobManagerJson(ToygerFaceBlobConfig toygerFaceBlobConfig) {
        super(toygerFaceBlobConfig);
    }
}
