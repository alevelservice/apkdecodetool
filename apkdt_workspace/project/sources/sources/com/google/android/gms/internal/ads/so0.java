package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class so0 implements oe1<qo0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f9408a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f9409b;

    public so0(af1<tz0> af1Var, af1<Context> af1Var2) {
        this.f9408a = af1Var;
        this.f9409b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new qo0(this.f9408a.get(), this.f9409b.get());
    }
}
