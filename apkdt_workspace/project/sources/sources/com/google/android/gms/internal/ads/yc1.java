package com.google.android.gms.internal.ads;

import java.nio.charset.Charset;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yc1 {

    /* renamed from: a, reason: collision with root package name */
    public static final Object f10539a;

    static {
        Charset.forName("UTF-8");
        Charset.forName("ISO-8859-1");
        f10539a = new Object();
    }

    public static void a(uc1 uc1Var, uc1 uc1Var2) {
        wc1 wc1Var = uc1Var.f9710b;
        if (wc1Var != null) {
            uc1Var2.f9710b = (wc1) wc1Var.clone();
        }
    }
}
