package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cs implements oe1<yr> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f6105a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<w9> f6106b;

    private cs(af1<com.google.android.gms.common.util.e> af1Var, af1<w9> af1Var2) {
        this.f6105a = af1Var;
        this.f6106b = af1Var2;
    }

    public static cs a(af1<com.google.android.gms.common.util.e> af1Var, af1<w9> af1Var2) {
        return new cs(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new yr(this.f6105a.get(), this.f6106b.get());
    }
}
