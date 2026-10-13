package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nl0 implements oe1<ll0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f8394a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f8395b;

    private nl0(af1<tz0> af1Var, af1<Context> af1Var2) {
        this.f8394a = af1Var;
        this.f8395b = af1Var2;
    }

    public static nl0 a(af1<tz0> af1Var, af1<Context> af1Var2) {
        return new nl0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ll0(this.f8394a.get(), this.f8395b.get());
    }
}
