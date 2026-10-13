package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class uk1 implements tk1 {

    /* renamed from: a, reason: collision with root package name */
    private final vo1 f9748a;

    /* renamed from: b, reason: collision with root package name */
    private final int f9749b;

    /* renamed from: c, reason: collision with root package name */
    private final int f9750c;

    /* renamed from: d, reason: collision with root package name */
    private int f9751d;

    /* renamed from: e, reason: collision with root package name */
    private int f9752e;

    public uk1(ok1 ok1Var) {
        this.f9748a = ok1Var.z0;
        this.f9748a.c(12);
        this.f9750c = this.f9748a.o() & 255;
        this.f9749b = this.f9748a.o();
    }

    @Override // com.google.android.gms.internal.ads.tk1
    public final int a() {
        int i2 = this.f9750c;
        if (i2 == 8) {
            return this.f9748a.g();
        }
        if (i2 == 16) {
            return this.f9748a.h();
        }
        int i3 = this.f9751d;
        this.f9751d = i3 + 1;
        if (i3 % 2 == 0) {
            this.f9752e = this.f9748a.g();
            return (this.f9752e & 240) >> 4;
        }
        return this.f9752e & 15;
    }

    @Override // com.google.android.gms.internal.ads.tk1
    public final boolean b() {
        return false;
    }

    @Override // com.google.android.gms.internal.ads.tk1
    public final int c() {
        return this.f9749b;
    }
}
