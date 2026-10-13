package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ut0 implements oe1<pa> {

    /* renamed from: a, reason: collision with root package name */
    private final rt0 f9812a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<pt0> f9813b;

    private ut0(rt0 rt0Var, af1<pt0> af1Var) {
        this.f9812a = rt0Var;
        this.f9813b = af1Var;
    }

    public static ut0 a(rt0 rt0Var, af1<pt0> af1Var) {
        return new ut0(rt0Var, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f9812a, this.f9813b.get());
    }

    public static pa a(rt0 rt0Var, pt0 pt0Var) {
        pa paVar = pt0Var.f8778b;
        ue1.a(paVar, "Cannot return null from a non-@Nullable @Provides method");
        return paVar;
    }
}
