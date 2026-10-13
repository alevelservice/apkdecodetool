package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vt0 implements oe1<t11> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<pt0> f9987a;

    private vt0(rt0 rt0Var, af1<pt0> af1Var) {
        this.f9987a = af1Var;
    }

    public static vt0 a(rt0 rt0Var, af1<pt0> af1Var) {
        return new vt0(rt0Var, af1Var);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        t11 t11Var = this.f9987a.get().f8780d;
        ue1.a(t11Var, "Cannot return null from a non-@Nullable @Provides method");
        return t11Var;
    }
}
