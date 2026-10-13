package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class z70 implements oe1<a80> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<f80> f10710a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<m80> f10711b;

    private z70(af1<f80> af1Var, af1<m80> af1Var2) {
        this.f10710a = af1Var;
        this.f10711b = af1Var2;
    }

    public static z70 a(af1<f80> af1Var, af1<m80> af1Var2) {
        return new z70(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new a80(this.f10710a.get(), this.f10711b.get());
    }
}
