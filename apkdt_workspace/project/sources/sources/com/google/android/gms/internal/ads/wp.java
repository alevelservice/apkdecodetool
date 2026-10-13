package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wp implements oe1<ad0<uo>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zu0> f10163a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz0> f10164b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<xd0> f10165c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<gh0> f10166d;

    public wp(af1<zu0> af1Var, af1<tz0> af1Var2, af1<xd0> af1Var3, af1<gh0> af1Var4) {
        this.f10163a = af1Var;
        this.f10164b = af1Var2;
        this.f10165c = af1Var3;
        this.f10166d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ih0 ih0Var = new ih0(this.f10163a.get(), this.f10164b.get(), this.f10166d.get(), this.f10165c.get());
        ue1.a(ih0Var, "Cannot return null from a non-@Nullable @Provides method");
        return ih0Var;
    }
}
