package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sm0 implements oe1<qm0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f9394a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ks0> f9395b;

    private sm0(af1<tz0> af1Var, af1<ks0> af1Var2) {
        this.f9394a = af1Var;
        this.f9395b = af1Var2;
    }

    public static sm0 a(af1<tz0> af1Var, af1<ks0> af1Var2) {
        return new sm0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new qm0(this.f9394a.get(), this.f9395b.get());
    }
}
