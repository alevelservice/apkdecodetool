package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class y5 {

    /* renamed from: a, reason: collision with root package name */
    private static final w5 f12608a = c();

    /* renamed from: b, reason: collision with root package name */
    private static final w5 f12609b = new z5();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w5 a() {
        return f12608a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static w5 b() {
        return f12609b;
    }

    private static w5 c() {
        try {
            return (w5) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
