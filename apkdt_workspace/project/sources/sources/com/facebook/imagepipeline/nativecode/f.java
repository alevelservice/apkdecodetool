package com.facebook.imagepipeline.nativecode;

/* compiled from: WebpTranscoderFactory.java */
/* loaded from: classes.dex */
public class f {

    /* renamed from: a, reason: collision with root package name */
    private static e f3889a;

    static {
        try {
            f3889a = (e) Class.forName("com.facebook.imagepipeline.nativecode.WebpTranscoderImpl").newInstance();
        } catch (Throwable unused) {
        }
    }

    public static e a() {
        return f3889a;
    }
}
