package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class f5 {

    /* renamed from: a, reason: collision with root package name */
    private static final d5 f11852a = c();

    /* renamed from: b, reason: collision with root package name */
    private static final d5 f11853b = new g5();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d5 a() {
        return f11852a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static d5 b() {
        return f11853b;
    }

    private static d5 c() {
        try {
            return (d5) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
