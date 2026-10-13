package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wz implements oe1<tz> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<rt> f10237a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ns0> f10238b;

    private wz(af1<rt> af1Var, af1<ns0> af1Var2) {
        this.f10237a = af1Var;
        this.f10238b = af1Var2;
    }

    public static wz a(af1<rt> af1Var, af1<ns0> af1Var2) {
        return new wz(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new tz(this.f10237a.get(), this.f10238b.get());
    }
}
