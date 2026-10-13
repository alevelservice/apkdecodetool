package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yl0 implements oe1<ks0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f10590a;

    public yl0(af1<com.google.android.gms.common.util.e> af1Var) {
        this.f10590a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ks0 ks0Var = new ks0(this.f10590a.get());
        ue1.a(ks0Var, "Cannot return null from a non-@Nullable @Provides method");
        return ks0Var;
    }
}
