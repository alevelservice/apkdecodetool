package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ri0 implements oe1<zzclg> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9136a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzur> f9137b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ws0> f9138c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<uo> f9139d;

    public ri0(af1<Context> af1Var, af1<zzur> af1Var2, af1<ws0> af1Var3, af1<uo> af1Var4) {
        this.f9136a = af1Var;
        this.f9137b = af1Var2;
        this.f9138c = af1Var3;
        this.f9139d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zzclg(this.f9136a.get(), this.f9137b.get(), this.f9138c.get(), this.f9139d.get());
    }
}
