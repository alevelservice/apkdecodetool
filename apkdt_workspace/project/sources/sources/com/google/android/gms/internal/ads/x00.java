package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x00 implements oe1<q10> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<t10> f10240a;

    public x00(s00 s00Var, af1<t10> af1Var) {
        this.f10240a = af1Var;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        t10 t10Var = this.f10240a.get();
        ue1.a(t10Var, "Cannot return null from a non-@Nullable @Provides method");
        return t10Var;
    }
}
