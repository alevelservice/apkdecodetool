package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class s40 implements oe1<zzbxc> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<d10> f9269a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<l10> f9270b;

    private s40(af1<d10> af1Var, af1<l10> af1Var2) {
        this.f9269a = af1Var;
        this.f9270b = af1Var2;
    }

    public static s40 a(af1<d10> af1Var, af1<l10> af1Var2) {
        return new s40(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zzbxc(this.f9269a.get(), this.f9270b.get());
    }
}
