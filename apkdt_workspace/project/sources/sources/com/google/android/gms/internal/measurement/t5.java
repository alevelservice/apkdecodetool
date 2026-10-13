package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
final class t5 {

    /* renamed from: a, reason: collision with root package name */
    private static final r5 f12113a = c();

    /* renamed from: b, reason: collision with root package name */
    private static final r5 f12114b = new q5();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r5 a() {
        return f12113a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static r5 b() {
        return f12114b;
    }

    private static r5 c() {
        try {
            return (r5) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            return null;
        }
    }
}
