package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class az implements oe1<x8> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f5683a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws0> f5684b;

    private az(qy qyVar, af1<Context> af1Var, af1<ws0> af1Var2) {
        this.f5683a = af1Var;
        this.f5684b = af1Var2;
    }

    public static az a(qy qyVar, af1<Context> af1Var, af1<ws0> af1Var2) {
        return new az(qyVar, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        x8 x8Var = new x8(this.f5683a.get(), this.f5684b.get().f10197f);
        ue1.a(x8Var, "Cannot return null from a non-@Nullable @Provides method");
        return x8Var;
    }
}
