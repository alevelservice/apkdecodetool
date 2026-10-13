package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class s3 {

    /* renamed from: a, reason: collision with root package name */
    private static final q3<?> f12087a = new p3();

    /* renamed from: b, reason: collision with root package name */
    private static final q3<?> f12088b = a();

    private static q3<?> a() {
        try {
            return (q3) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q3<?> b() {
        return f12087a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q3<?> c() {
        q3<?> q3Var = f12088b;
        if (q3Var != null) {
            return q3Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
