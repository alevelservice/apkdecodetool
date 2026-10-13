package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jc0 implements oe1<ec0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<cc0> f7452a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz0> f7453b;

    private jc0(af1<cc0> af1Var, af1<tz0> af1Var2) {
        this.f7452a = af1Var;
        this.f7453b = af1Var2;
    }

    public static jc0 a(af1<cc0> af1Var, af1<tz0> af1Var2) {
        return new jc0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ec0(this.f7452a.get(), this.f7453b.get());
    }
}
