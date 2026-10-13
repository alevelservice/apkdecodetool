package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.ws;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ag0 implements oe1<xf0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<mk> f5569a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws.a> f5570b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<hw> f5571c;

    public ag0(af1<mk> af1Var, af1<ws.a> af1Var2, af1<hw> af1Var3) {
        this.f5569a = af1Var;
        this.f5570b = af1Var2;
        this.f5571c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new xf0(this.f5569a.get(), this.f5570b.get(), this.f5571c.get());
    }
}
