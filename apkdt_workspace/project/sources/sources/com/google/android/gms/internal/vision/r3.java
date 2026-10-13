package com.google.android.gms.internal.vision;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class r3 {

    /* renamed from: a, reason: collision with root package name */
    private final a4 f12493a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f12494b;

    private r3(int i2) {
        this.f12494b = new byte[i2];
        this.f12493a = a4.a(this.f12494b);
    }

    public final j3 a() {
        this.f12493a.b();
        return new t3(this.f12494b);
    }

    public final a4 b() {
        return this.f12493a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public /* synthetic */ r3(int i2, m3 m3Var) {
        this(i2);
    }
}
