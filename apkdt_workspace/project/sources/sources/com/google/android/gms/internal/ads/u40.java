package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class u40 implements oe1<zzbxf> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<String> f9677a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<d10> f9678b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<l10> f9679c;

    private u40(af1<String> af1Var, af1<d10> af1Var2, af1<l10> af1Var3) {
        this.f9677a = af1Var;
        this.f9678b = af1Var2;
        this.f9679c = af1Var3;
    }

    public static u40 a(af1<String> af1Var, af1<d10> af1Var2, af1<l10> af1Var3) {
        return new u40(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zzbxf(this.f9677a.get(), this.f9678b.get(), this.f9679c.get());
    }
}
