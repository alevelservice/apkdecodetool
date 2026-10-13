package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class e60 implements oe1<ad0<r50>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zu0> f6343a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz0> f6344b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<kg0> f6345c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<gh0> f6346d;

    public e60(af1<zu0> af1Var, af1<tz0> af1Var2, af1<kg0> af1Var3, af1<gh0> af1Var4) {
        this.f6343a = af1Var;
        this.f6344b = af1Var2;
        this.f6345c = af1Var3;
        this.f6346d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ih0 ih0Var = new ih0(this.f6343a.get(), this.f6344b.get(), this.f6346d.get(), this.f6345c.get());
        ue1.a(ih0Var, "Cannot return null from a non-@Nullable @Provides method");
        return ih0Var;
    }
}
