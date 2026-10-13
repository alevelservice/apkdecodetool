package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b20 implements oe1<x8> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f5705a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws0> f5706b;

    private b20(y10 y10Var, af1<Context> af1Var, af1<ws0> af1Var2) {
        this.f5705a = af1Var;
        this.f5706b = af1Var2;
    }

    public static b20 a(y10 y10Var, af1<Context> af1Var, af1<ws0> af1Var2) {
        return new b20(y10Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        x8 x8Var = new x8(this.f5705a.get(), this.f5706b.get().f10197f);
        ue1.a(x8Var, "Cannot return null from a non-@Nullable @Provides method");
        return x8Var;
    }
}
