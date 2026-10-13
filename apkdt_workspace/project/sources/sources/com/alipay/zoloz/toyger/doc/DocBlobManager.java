package com.alipay.zoloz.toyger.doc;

import android.graphics.Rect;
import com.alipay.zoloz.toyger.blob.BlobManager;
import com.alipay.zoloz.toyger.blob.CryptoManager;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class DocBlobManager extends BlobManager<ToygerDocInfo> {
    protected static final String INFO_DOC_TYPE = "docType";
    protected static final String INFO_PAGE_NUMBER = "pageNo";
    protected static final String INFO_PIC_SIZE = "picSize";
    protected Rect mCropRect;
    protected long picSize = 0;

    public DocBlobManager() {
    }

    @Override // com.alipay.zoloz.toyger.blob.BlobManager
    public abstract byte[] generateBlob(List<ToygerDocInfo> list, Map<String, Object> map);

    /* JADX INFO: Access modifiers changed from: protected */
    public String getDocType() {
        return ((ToygerDocBlobConfig) this.config).docType;
    }

    @Override // com.alipay.zoloz.toyger.blob.BlobManager, com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public byte[] getKey() {
        return this.crypto.getAESCypher();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getPageNum() {
        return ((ToygerDocBlobConfig) this.config).pageNo;
    }

    public long getPicSize() {
        return this.picSize;
    }

    @Override // com.alipay.zoloz.toyger.blob.BlobManager, com.alipay.zoloz.toyger.blob.GenericBlobManagerInterface
    public abstract boolean isUTF8();

    public void setBlobConfig(ToygerDocBlobConfig toygerDocBlobConfig) {
        this.config = toygerDocBlobConfig;
    }

    public void setCropRect(Rect rect) {
        int width = (int) ((rect.width() * 0.5f) / 2.0f);
        int height = (int) ((rect.height() * 0.5f) / 2.0f);
        this.mCropRect = new Rect(rect.left - width, rect.top - height, rect.right + width, rect.bottom + height);
    }

    public DocBlobManager(ToygerDocBlobConfig toygerDocBlobConfig) {
        this.config = toygerDocBlobConfig;
        this.crypto = new CryptoManager(toygerDocBlobConfig.pubkey);
    }
}
