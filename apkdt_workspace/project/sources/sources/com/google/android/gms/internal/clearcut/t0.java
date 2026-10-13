package com.google.android.gms.internal.clearcut;

/* loaded from: classes.dex */
final class t0 {

    /* renamed from: a, reason: collision with root package name */
    private static final q0<?> f11563a = new r0();

    /* renamed from: b, reason: collision with root package name */
    private static final q0<?> f11564b = a();

    private static q0<?> a() {
        try {
            return (q0) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q0<?> b() {
        return f11563a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static q0<?> c() {
        q0<?> q0Var = f11564b;
        if (q0Var != null) {
            return q0Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
