package com.google.android.gms.internal.vision;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
final class m6 {

    /* renamed from: a, reason: collision with root package name */
    private static final k6 f12435a = c();

    /* renamed from: b, reason: collision with root package name */
    private static final k6 f12436b = new j6();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k6 a() {
        return f12435a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static k6 b() {
        return f12436b;
    }

    private static k6 c() {
        try {
            return (k6) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
