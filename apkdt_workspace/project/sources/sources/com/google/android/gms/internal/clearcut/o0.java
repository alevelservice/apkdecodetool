package com.google.android.gms.internal.clearcut;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class o0 {

    /* renamed from: a, reason: collision with root package name */
    private static final Class<?> f11521a = a();

    private static Class<?> a() {
        try {
            return Class.forName("com.google.protobuf.ExtensionRegistry");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }

    public static p0 b() {
        Class<?> cls = f11521a;
        if (cls != null) {
            try {
                return (p0) cls.getDeclaredMethod("getEmptyRegistry", new Class[0]).invoke(null, new Object[0]);
            } catch (Exception unused) {
            }
        }
        return p0.f11525a;
    }
}
