package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yt0 implements oe1<ka> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<pt0> f10657a;

    private yt0(rt0 rt0Var, af1<pt0> af1Var) {
        this.f10657a = af1Var;
    }

    public static yt0 a(rt0 rt0Var, af1<pt0> af1Var) {
        return new yt0(rt0Var, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ka kaVar = this.f10657a.get().f8779c;
        ue1.a(kaVar, "Cannot return null from a non-@Nullable @Provides method");
        return kaVar;
    }
}
