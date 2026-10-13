package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class pz implements oe1<ad0<py>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zu0> f8817a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz0> f8818b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<we0> f8819c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<gh0> f8820d;

    public pz(af1<zu0> af1Var, af1<tz0> af1Var2, af1<we0> af1Var3, af1<gh0> af1Var4) {
        this.f8817a = af1Var;
        this.f8818b = af1Var2;
        this.f8819c = af1Var3;
        this.f8820d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ih0 ih0Var = new ih0(this.f8817a.get(), this.f8818b.get(), this.f8820d.get(), this.f8819c.get());
        ue1.a(ih0Var, "Cannot return null from a non-@Nullable @Provides method");
        return ih0Var;
    }
}
