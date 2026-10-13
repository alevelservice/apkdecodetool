package com.alipay.zoloz.toyger.blob;

import com.alipay.zoloz.toyger.algorithm.TGFrame;

/* loaded from: classes.dex */
public interface GenericBlobManagerInterface {
    void addMonitorFrame(TGFrame tGFrame);

    void cleanAllData();

    byte[] generateMonitorBlob();

    byte[] getKey();

    boolean isUTF8();
}
