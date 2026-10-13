package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class u81 {

    /* renamed from: a, reason: collision with root package name */
    private static final s81<?> f9691a = new r81();

    /* renamed from: b, reason: collision with root package name */
    private static final s81<?> f9692b = a();

    private static s81<?> a() {
        try {
            return (s81) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s81<?> b() {
        return f9691a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static s81<?> c() {
        s81<?> s81Var = f9692b;
        if (s81Var != null) {
            return s81Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
