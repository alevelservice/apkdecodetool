package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
final class r2 {

    /* renamed from: a, reason: collision with root package name */
    private static final p2 f11545a = c();

    /* renamed from: b, reason: collision with root package name */
    private static final p2 f11546b = new q2();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p2 a() {
        return f11545a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static p2 b() {
        return f11546b;
    }

    private static p2 c() {
        try {
            return (p2) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
