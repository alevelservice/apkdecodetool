package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vx implements oe1<wx> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ns0> f9998a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<iv0> f9999b;

    private vx(af1<ns0> af1Var, af1<iv0> af1Var2) {
        this.f9998a = af1Var;
        this.f9999b = af1Var2;
    }

    public static vx a(af1<ns0> af1Var, af1<iv0> af1Var2) {
        return new vx(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new wx(this.f9998a.get(), this.f9999b.get());
    }
}
