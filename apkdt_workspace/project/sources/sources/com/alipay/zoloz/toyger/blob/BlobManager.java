package com.alipay.zoloz.toyger.blob;

import android.graphics.Rect;
import com.alipay.zoloz.toyger.ToygerBiometricInfo;
import com.alipay.zoloz.toyger.algorithm.TGFrame;
import com.alipay.zoloz.toyger.algorithm.ToygerBlobConfig;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class BlobManager<Info extends ToygerBiometricInfo> {
    public static final String TAG = "BlobManager";
    protected ToygerBlobConfig config;
    protected CryptoManager crypto;

    private int getFrameMode(TGFrame tGFrame) {
        int i2 = tGFrame.frameMode;
        if (i2 == 0) {
            return 0;
        }
        int i3 = 1;
        if (i2 != 1) {
            i3 = 2;
            if (i2 != 2) {
                i3 = 3;
                if (i2 != 3) {
                    i3 = 4;
                    if (i2 != 4) {
                        return -1;
                    }
                }
            }
        }
        return i3;
    }

    public abstract byte[] generateBlob(List<Info> list, Map<String, Object> map);

    public abstract byte[] getKey();

    public abstract boolean isUTF8();

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] processFrame(TGFrame tGFrame) {
        return processFrame(tGFrame, this.config.getDesiredWidth().intValue(), (int) (this.config.getCompressRate() * 100.0f), new Rect(0, 0, 0, 0));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] processFrame(TGFrame tGFrame, Rect rect) {
        return processFrame(tGFrame, this.config.getDesiredWidth().intValue(), (int) (this.config.getCompressRate() * 100.0f), rect);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d9, code lost:
    
        if (r11 != null) goto L73;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:19:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x00e9 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00f5  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x00c8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final byte[] processFrame(com.alipay.zoloz.toyger.algorithm.TGFrame r9, int r10, int r11, android.graphics.Rect r12) {
        /*
            Method dump skipped, instructions count: 249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alipay.zoloz.toyger.blob.BlobManager.processFrame(com.alipay.zoloz.toyger.algorithm.TGFrame, int, int, android.graphics.Rect):byte[]");
    }
}
