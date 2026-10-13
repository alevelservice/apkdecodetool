package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rf0 implements oe1<sf0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<mk> f9120a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<b00> f9121b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ws.a> f9122c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<hw> f9123d;

    public rf0(af1<mk> af1Var, af1<b00> af1Var2, af1<ws.a> af1Var3, af1<hw> af1Var4) {
        this.f9120a = af1Var;
        this.f9121b = af1Var2;
        this.f9122c = af1Var3;
        this.f9123d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new sf0(this.f9120a.get(), this.f9121b.get(), this.f9122c.get(), this.f9123d.get());
    }
}
