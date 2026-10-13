package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class f3 {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f12343a = a("libcore.io.Memory");

    /* renamed from: b, reason: collision with root package name */
    private static final boolean f12344b;

    static {
        f12344b = a("org.robolectric.Robolectric") != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a() {
        return (f12343a == null || f12344b) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Class<?> b() {
        return f12343a;
    }

    private static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }
}
