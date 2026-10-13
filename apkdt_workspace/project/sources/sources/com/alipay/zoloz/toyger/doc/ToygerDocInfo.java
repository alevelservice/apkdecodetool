package com.alipay.zoloz.toyger.doc;

import com.alipay.zoloz.toyger.ToygerBiometricInfo;
import com.alipay.zoloz.toyger.algorithm.TGFrame;

/* loaded from: classes.dex */
public class ToygerDocInfo extends ToygerBiometricInfo<ToygerDocAttr> {
    public ToygerDocInfo() {
    }

    public ToygerDocInfo(TGFrame tGFrame, ToygerDocAttr toygerDocAttr) {
        this.frame = tGFrame;
        this.attr = toygerDocAttr;
    }
}
