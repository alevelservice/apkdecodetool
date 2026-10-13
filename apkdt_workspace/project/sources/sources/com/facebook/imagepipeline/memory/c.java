package com.facebook.imagepipeline.memory;

/* compiled from: BitmapCounterProvider.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f3805a = b();

    /* renamed from: b, reason: collision with root package name */
    private static int f3806b = 384;

    /* renamed from: c, reason: collision with root package name */
    private static volatile b f3807c;

    public static b a() {
        if (f3807c == null) {
            synchronized (c.class) {
                if (f3807c == null) {
                    f3807c = new b(f3806b, f3805a);
                }
            }
        }
        return f3807c;
    }

    private static int b() {
        int min = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        if (min > 16777216) {
            return (min / 4) * 3;
        }
        return min / 2;
    }
}
