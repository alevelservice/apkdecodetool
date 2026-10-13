package com.mapbox.mapboxsdk;

/* compiled from: MapStrictMode.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private static volatile boolean f15751a;

    public static synchronized void a(boolean z) {
        synchronized (d.class) {
            f15751a = z;
        }
    }

    public static void a(String str) {
        if (f15751a) {
            throw new e(str);
        }
    }

    public static void a(String str, Throwable th) {
        if (f15751a) {
            throw new e(String.format("%s - %s", str, th));
        }
    }

    public static void a(Throwable th) {
        if (f15751a) {
            throw new e(String.format("%s", th));
        }
    }
}
