package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class np implements oe1<x8> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8405a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws0> f8406b;

    public np(yo yoVar, af1<Context> af1Var, af1<ws0> af1Var2) {
        this.f8405a = af1Var;
        this.f8406b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        x8 x8Var = new x8(this.f8405a.get(), this.f8406b.get().f10197f);
        ue1.a(x8Var, "Cannot return null from a non-@Nullable @Provides method");
        return x8Var;
    }
}
