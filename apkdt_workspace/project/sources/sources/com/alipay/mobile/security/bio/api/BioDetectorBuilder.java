package com.alipay.mobile.security.bio.api;

import android.content.Context;
import com.alipay.mobile.security.bio.module.MicroModule;
import com.alipay.mobile.security.bio.runtime.Runtime;
import com.alipay.mobile.security.bio.workspace.BioTransfer;
import java.util.Map;

/* loaded from: classes.dex */
public class BioDetectorBuilder {
    public static BioDetector create(Context context, MicroModule microModule) {
        if (context != null) {
            return new BioTransfer(context, microModule);
        }
        throw new IllegalArgumentException("context Can't be null");
    }

    public static String getMetaInfos(Context context) {
        return Runtime.getMetaInfos(context, null);
    }

    public static String getMetaInfos(Context context, Map<String, Object> map) {
        return Runtime.getMetaInfos(context, map);
    }
}
