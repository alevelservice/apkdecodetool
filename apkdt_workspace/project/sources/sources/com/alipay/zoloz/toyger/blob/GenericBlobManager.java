package com.alipay.zoloz.toyger.blob;

import com.alipay.zoloz.toyger.algorithm.TGFrame;

/* loaded from: classes.dex */
public class GenericBlobManager {
    private static final String TAG = "TOYGER";
    public static final String TYPE_DOC = "doc";
    public static final String TYPE_FACE = "face";
    private GenericBlobManagerInterface blobManager;
    private boolean mHasOom = false;

    public GenericBlobManager(String str, String str2) {
        try {
            this.blobManager = (GenericBlobManagerInterface) Class.forName("com.alipay.zoloz.toyger.blob.GenericBlobManagerJSON").getConstructor(String.class, String.class).newInstance(str, str2);
        } catch (Throwable unused) {
        }
    }

    public void addMonitorFrame(TGFrame tGFrame) {
        if (this.mHasOom) {
            return;
        }
        try {
            this.blobManager.addMonitorFrame(tGFrame);
        } catch (OutOfMemoryError unused) {
            this.mHasOom = true;
            this.blobManager.cleanAllData();
        }
    }

    public byte[] generateMonitorBlob() {
        try {
            return this.blobManager.generateMonitorBlob();
        } catch (Exception unused) {
            this.blobManager.cleanAllData();
            return null;
        }
    }

    public byte[] getKey() {
        return this.blobManager.getKey();
    }

    public boolean isUTF8() {
        return this.blobManager.isUTF8();
    }
}
