package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class qf0 implements oe1<lf0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8891a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<f00> f8892b;

    public qf0(af1<Context> af1Var, af1<f00> af1Var2) {
        this.f8891a = af1Var;
        this.f8892b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new lf0(this.f8891a.get(), this.f8892b.get());
    }
}
