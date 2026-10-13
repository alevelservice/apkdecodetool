package com.facebook.imagepipeline.platform;

import a.i.m.h;
import android.os.Build;
import com.facebook.imagepipeline.memory.e0;

/* compiled from: PlatformDecoderFactory.java */
/* loaded from: classes.dex */
public class g {
    public static f a(e0 e0Var, boolean z) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 26) {
            int d2 = e0Var.d();
            return new e(e0Var.a(), d2, new h(d2));
        }
        if (i2 >= 21) {
            int d3 = e0Var.d();
            return new a(e0Var.a(), d3, new h(d3));
        }
        if (z && i2 < 19) {
            return new c();
        }
        return new d(e0Var.c());
    }
}
