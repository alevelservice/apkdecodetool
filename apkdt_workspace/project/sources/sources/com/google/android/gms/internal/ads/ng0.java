package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ng0 implements oe1<kg0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8343a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<y50> f8344b;

    public ng0(af1<Context> af1Var, af1<y50> af1Var2) {
        this.f8343a = af1Var;
        this.f8344b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new kg0(this.f8343a.get(), this.f8344b.get());
    }
}
