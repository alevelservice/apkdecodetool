package com.alipay.zoloz.toyger.algorithm;

import android.content.Context;
import com.alipay.zoloz.toyger.ToygerAttr;
import com.alipay.zoloz.toyger.doc.ToygerDocAlgorithmConfig;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public class Toyger {
    static {
        System.loadLibrary("toyger");
    }

    public static native void config(IToygerDelegate iToygerDelegate, ToygerConfig toygerConfig);

    public static native boolean configDoc(IToygerDelegate iToygerDelegate, ToygerDocAlgorithmConfig toygerDocAlgorithmConfig);

    public static native String getVersion();

    public static native boolean init(Context context, byte[] bArr, String str, String str2, Map map);

    public static native void processImage(List<TGFrame> list, TGDepthFrame tGDepthFrame, ToygerAttr toygerAttr);

    public static native void release();

    public static native void reset();
}
