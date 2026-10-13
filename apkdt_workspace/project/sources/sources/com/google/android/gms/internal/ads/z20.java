package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z20 implements oe1<u10> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<y20> f10680a;

    public z20(a30 a30Var, af1<y20> af1Var) {
        this.f10680a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        y20 y20Var = this.f10680a.get();
        ue1.a(y20Var, "Cannot return null from a non-@Nullable @Provides method");
        return y20Var;
    }
}
