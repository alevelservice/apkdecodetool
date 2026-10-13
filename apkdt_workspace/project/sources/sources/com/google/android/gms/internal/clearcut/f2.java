package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
final class f2 {

    /* renamed from: a, reason: collision with root package name */
    private static final d2 f11421a = c();

    /* renamed from: b, reason: collision with root package name */
    private static final d2 f11422b = new e2();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d2 a() {
        return f11421a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d2 b() {
        return f11422b;
    }

    private static d2 c() {
        try {
            return (d2) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
