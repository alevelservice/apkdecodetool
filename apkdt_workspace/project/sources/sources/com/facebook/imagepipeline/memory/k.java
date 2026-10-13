package com.facebook.imagepipeline.memory;

import android.util.SparseIntArray;

/* compiled from: DefaultBitmapPoolParams.java */
/* loaded from: classes.dex */
public class k {

    /* renamed from: a, reason: collision with root package name */
    private static final SparseIntArray f3860a = new SparseIntArray(0);

    public static f0 a() {
        return new f0(0, b(), f3860a);
    }

    private static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }
}
