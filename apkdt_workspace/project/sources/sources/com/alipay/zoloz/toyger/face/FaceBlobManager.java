package com.alipay.zoloz.toyger.face;

import android.graphics.Rect;
import android.graphics.RectF;
import com.alipay.zoloz.toyger.blob.BlobManager;
import com.alipay.zoloz.toyger.blob.BlobStatic;
import com.alipay.zoloz.toyger.blob.CryptoManager;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class FaceBlobManager extends BlobManager<ToygerFaceInfo> {
    protected static final int MONITOR_COMPRESS_RATE = 15;
    protected static final int MONITOR_IMAGE_WIDTH = 160;

    public FaceBlobManager() {
    }

    public static Rect convertFaceRegion(RectF rectF, int i2, int i3, int i4, boolean z) {
        Rect rect = new Rect();
        float f2 = i2;
        rect.left = (int) (rectF.left * f2);
        rect.right = (int) (rectF.right * f2);
        float f3 = i3;
        rect.top = (int) (rectF.top * f3);
        rect.bottom = (int) (rectF.bottom * f3);
        return rect;
    }

    @Override // com.alipay.zoloz.toyger.blob.BlobManager
    public abstract byte[] generateBlob(List<ToygerFaceInfo> list, Map<String, Object> map);

    /* JADX INFO: Access modifiers changed from: protected */
    public String getBlobElemType(ToygerFaceInfo toygerFaceInfo) {
        int i2 = toygerFaceInfo.frame.frameType;
        return i2 != 0 ? i2 != 1 ? i2 != 2 ? "" : BlobStatic.SUB_TYPE_DEPTH : BlobStatic.SUB_TYPE_DARK : BlobStatic.SUB_TYPE_PANO;
    }

    @Override // com.alipay.zoloz.toyger.blob.BlobManager, com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public byte[] getKey() {
        return this.crypto.getAESCypher();
    }

    @Override // com.alipay.zoloz.toyger.blob.BlobManager, com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public abstract boolean isUTF8();

    public FaceBlobManager(ToygerFaceBlobConfig toygerFaceBlobConfig) {
        this.config = toygerFaceBlobConfig;
        this.crypto = new CryptoManager(toygerFaceBlobConfig.pubkey);
    }
}
