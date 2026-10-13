package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q70 implements oe1<o70> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ks1> f8856a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<br0> f8857b;

    private q70(af1<ks1> af1Var, af1<br0> af1Var2) {
        this.f8856a = af1Var;
        this.f8857b = af1Var2;
    }

    public static q70 a(af1<ks1> af1Var, af1<br0> af1Var2) {
        return new q70(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new o70(this.f8856a.get(), this.f8857b.get());
    }
}
