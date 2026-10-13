package com.zoloz.webcontainer.i;

import android.content.Context;
import android.content.res.Resources;

/* compiled from: H5Environment.java */
/* loaded from: classes2.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Context f16721a;

    /* renamed from: b, reason: collision with root package name */
    private static Resources f16722b;

    public static void a(Context context) {
        Context context2;
        if (f16721a == null) {
            f16721a = context.getApplicationContext();
        }
        if (f16722b != null || (context2 = f16721a) == null) {
            return;
        }
        f16722b = context2.getResources();
    }

    public static Context a() {
        return f16721a;
    }
}
