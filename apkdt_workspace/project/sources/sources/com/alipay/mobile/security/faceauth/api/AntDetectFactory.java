package com.alipay.mobile.security.faceauth.api;

import android.content.Context;
import com.alipay.mobile.security.bio.module.MicroModule;

/* loaded from: classes.dex */
public class AntDetectFactory {
    public static int TYPE_FACE;

    public static AntDetector create(Context context, int i2, MicroModule microModule) {
        if (context == null) {
            throw new RuntimeException("context Can't be null");
        }
        if (i2 == 0) {
            return (AntDetector) getInstance(context, "com.alipay.mobile.security.faceauth.bean.FaceAuthenticator", microModule);
        }
        throw new RuntimeException("Can't find Authenticator");
    }

    private static Object getInstance(Context context, String str, MicroModule microModule) {
        try {
            return Class.forName(str).getConstructor(Context.class, MicroModule.class).newInstance(context, microModule);
        } catch (Exception unused) {
            return null;
        }
    }
}
