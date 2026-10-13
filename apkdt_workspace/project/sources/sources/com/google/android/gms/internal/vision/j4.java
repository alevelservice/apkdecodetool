package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class j4 {

    /* renamed from: a, reason: collision with root package name */
    private static final f4<?> f12409a = new h4();

    /* renamed from: b, reason: collision with root package name */
    private static final f4<?> f12410b = a();

    private static f4<?> a() {
        try {
            return (f4) Class.forName("com.google.protobuf.ExtensionSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f4<?> b() {
        return f12409a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static f4<?> c() {
        f4<?> f4Var = f12410b;
        if (f4Var != null) {
            return f4Var;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }
}
