package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class ja1 {

    /* renamed from: a, reason: collision with root package name */
    private static final ha1 f7448a = c();

    /* renamed from: b, reason: collision with root package name */
    private static final ha1 f7449b = new ka1();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ha1 a() {
        return f7448a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static ha1 b() {
        return f7449b;
    }

    private static ha1 c() {
        try {
            return (ha1) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
