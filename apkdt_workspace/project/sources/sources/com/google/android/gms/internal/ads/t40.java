package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class t40 implements oe1<zzbxd> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<String> f9505a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<d10> f9506b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<l10> f9507c;

    private t40(af1<String> af1Var, af1<d10> af1Var2, af1<l10> af1Var3) {
        this.f9505a = af1Var;
        this.f9506b = af1Var2;
        this.f9507c = af1Var3;
    }

    public static t40 a(af1<String> af1Var, af1<d10> af1Var2, af1<l10> af1Var3) {
        return new t40(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zzbxd(this.f9505a.get(), this.f9506b.get(), this.f9507c.get());
    }
}
