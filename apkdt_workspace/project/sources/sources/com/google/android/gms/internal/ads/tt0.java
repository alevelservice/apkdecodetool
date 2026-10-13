package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class tt0 implements oe1<pt0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<nt0> f9635a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<String> f9636b;

    private tt0(rt0 rt0Var, af1<nt0> af1Var, af1<String> af1Var2) {
        this.f9635a = af1Var;
        this.f9636b = af1Var2;
    }

    public static tt0 a(rt0 rt0Var, af1<nt0> af1Var, af1<String> af1Var2) {
        return new tt0(rt0Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        pt0 a2 = this.f9635a.get().a(this.f9636b.get());
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
