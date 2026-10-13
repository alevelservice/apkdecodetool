package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kq implements oe1<hq> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7728a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<fi> f7729b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ns0> f7730c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<zzawv> f7731d;

    public kq(af1<Context> af1Var, af1<fi> af1Var2, af1<ns0> af1Var3, af1<zzawv> af1Var4) {
        this.f7728a = af1Var;
        this.f7729b = af1Var2;
        this.f7730c = af1Var3;
        this.f7731d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new hq(this.f7728a.get(), this.f7729b.get(), this.f7730c.get(), this.f7731d.get());
    }
}
