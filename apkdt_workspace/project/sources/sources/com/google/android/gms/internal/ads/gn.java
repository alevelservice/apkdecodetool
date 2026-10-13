package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gn implements ot {

    /* renamed from: e, reason: collision with root package name */
    private final ps0 f6941e;

    /* renamed from: f, reason: collision with root package name */
    private final vs0 f6942f;

    /* renamed from: g, reason: collision with root package name */
    private final iv0 f6943g;

    public gn(vs0 vs0Var, iv0 iv0Var) {
        this.f6942f = vs0Var;
        this.f6943g = iv0Var;
        this.f6941e = vs0Var.f9986b.f9630b;
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final void onAdFailedToLoad(int i2) {
        this.f6943g.a(this.f6942f, (ns0) null, this.f6941e.f8768a);
    }
}
