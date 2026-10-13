package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vl0 implements oe1<ul0<ro0>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<qo0> f9951a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f9952b;

    public vl0(af1<qo0> af1Var, af1<com.google.android.gms.common.util.e> af1Var2) {
        this.f9951a = af1Var;
        this.f9952b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ul0 ul0Var = new ul0(this.f9951a.get(), ((Long) mu1.e().a(aw1.e1)).longValue(), this.f9952b.get());
        ue1.a(ul0Var, "Cannot return null from a non-@Nullable @Provides method");
        return ul0Var;
    }
}
