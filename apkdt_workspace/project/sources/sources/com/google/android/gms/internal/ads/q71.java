package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class q71 {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f8858a = a("libcore.io.Memory");

    /* renamed from: b, reason: collision with root package name */
    private static final boolean f8859b;

    static {
        f8859b = a("org.robolectric.Robolectric") != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return (f8858a == null || f8859b) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> b() {
        return f8858a;
    }

    private static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
