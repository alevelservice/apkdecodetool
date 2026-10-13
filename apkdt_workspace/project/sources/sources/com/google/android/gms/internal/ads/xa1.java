package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class xa1 {

    /* renamed from: a, reason: collision with root package name */
    private static final va1 f10300a = c();

    /* renamed from: b, reason: collision with root package name */
    private static final va1 f10301b = new ua1();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static va1 a() {
        return f10300a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static va1 b() {
        return f10301b;
    }

    private static va1 c() {
        try {
            return (va1) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
