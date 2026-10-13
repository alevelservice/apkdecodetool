package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class vk1 implements tk1 {

    /* renamed from: a, reason: collision with root package name */
    private final int f9948a;

    /* renamed from: b, reason: collision with root package name */
    private final int f9949b;

    /* renamed from: c, reason: collision with root package name */
    private final vo1 f9950c;

    public vk1(ok1 ok1Var) {
        this.f9950c = ok1Var.z0;
        this.f9950c.c(12);
        this.f9948a = this.f9950c.o();
        this.f9949b = this.f9950c.o();
    }

    @Override // com.google.android.gms.internal.ads.tk1
    public final int a() {
        int i2 = this.f9948a;
        return i2 == 0 ? this.f9950c.o() : i2;
    }

    @Override // com.google.android.gms.internal.ads.tk1
    public final boolean b() {
        return this.f9948a != 0;
    }

    @Override // com.google.android.gms.internal.ads.tk1
    public final int c() {
        return this.f9949b;
    }
}
