package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class m2 {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f11967a = a("libcore.io.Memory");

    /* renamed from: b, reason: collision with root package name */
    private static final boolean f11968b;

    static {
        f11968b = a("org.robolectric.Robolectric") != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return (f11967a == null || f11968b) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> b() {
        return f11967a;
    }

    private static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
