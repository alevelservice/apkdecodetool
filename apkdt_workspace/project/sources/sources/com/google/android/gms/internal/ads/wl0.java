package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wl0 implements oe1<ul0<ql0>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<pl0> f10143a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f10144b;

    public wl0(af1<pl0> af1Var, af1<com.google.android.gms.common.util.e> af1Var2) {
        this.f10143a = af1Var;
        this.f10144b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ul0 ul0Var = new ul0(this.f10143a.get(), 10000L, this.f10144b.get());
        ue1.a(ul0Var, "Cannot return null from a non-@Nullable @Provides method");
        return ul0Var;
    }
}
