package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
final class t {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f11561a = a("libcore.io.Memory");

    /* renamed from: b, reason: collision with root package name */
    private static final boolean f11562b;

    static {
        f11562b = a("org.robolectric.Robolectric") != null;
    }

    private static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return (f11561a == null || f11562b) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> b() {
        return f11561a;
    }
}
