package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ok0 implements oe1<mk0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ul0<ro0>> f8533a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws0> f8534b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Context> f8535c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ca> f8536d;

    private ok0(af1<ul0<ro0>> af1Var, af1<ws0> af1Var2, af1<Context> af1Var3, af1<ca> af1Var4) {
        this.f8533a = af1Var;
        this.f8534b = af1Var2;
        this.f8535c = af1Var3;
        this.f8536d = af1Var4;
    }

    public static ok0 a(af1<ul0<ro0>> af1Var, af1<ws0> af1Var2, af1<Context> af1Var3, af1<ca> af1Var4) {
        return new ok0(af1Var, af1Var2, af1Var3, af1Var4);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new mk0(this.f8533a.get(), this.f8534b.get(), this.f8535c.get(), this.f8536d.get());
    }
}
