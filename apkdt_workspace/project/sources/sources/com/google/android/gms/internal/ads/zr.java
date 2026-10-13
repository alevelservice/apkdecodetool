package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zr implements oe1<w9> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f10837a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ka> f10838b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ws0> f10839c;

    private zr(af1<com.google.android.gms.common.util.e> af1Var, af1<ka> af1Var2, af1<ws0> af1Var3) {
        this.f10837a = af1Var;
        this.f10838b = af1Var2;
        this.f10839c = af1Var3;
    }

    public static zr a(af1<com.google.android.gms.common.util.e> af1Var, af1<ka> af1Var2, af1<ws0> af1Var3) {
        return new zr(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        w9 a2 = this.f10838b.get().a(this.f10837a.get(), this.f10839c.get().f10197f);
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
