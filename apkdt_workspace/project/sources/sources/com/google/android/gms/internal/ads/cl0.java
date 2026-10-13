package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cl0 implements oe1<al0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<String> f6049a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<String> f6050b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<yr> f6051c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<kt0> f6052d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<ws0> f6053e;

    private cl0(af1<String> af1Var, af1<String> af1Var2, af1<yr> af1Var3, af1<kt0> af1Var4, af1<ws0> af1Var5) {
        this.f6049a = af1Var;
        this.f6050b = af1Var2;
        this.f6051c = af1Var3;
        this.f6052d = af1Var4;
        this.f6053e = af1Var5;
    }

    public static cl0 a(af1<String> af1Var, af1<String> af1Var2, af1<yr> af1Var3, af1<kt0> af1Var4, af1<ws0> af1Var5) {
        return new cl0(af1Var, af1Var2, af1Var3, af1Var4, af1Var5);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new al0(this.f6049a.get(), this.f6050b.get(), this.f6051c.get(), this.f6052d.get(), this.f6053e.get());
    }
}
