package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class in implements oe1<fn> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<vs0> f7342a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ns0> f7343b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<iv0> f7344c;

    private in(af1<vs0> af1Var, af1<ns0> af1Var2, af1<iv0> af1Var3) {
        this.f7342a = af1Var;
        this.f7343b = af1Var2;
        this.f7344c = af1Var3;
    }

    public static in a(af1<vs0> af1Var, af1<ns0> af1Var2, af1<iv0> af1Var3) {
        return new in(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new fn(this.f7342a.get(), this.f7343b.get(), this.f7344c.get());
    }
}
