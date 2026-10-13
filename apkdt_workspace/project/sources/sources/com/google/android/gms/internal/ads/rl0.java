package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rl0 implements oe1<pl0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f9164a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f9165b;

    public rl0(af1<tz0> af1Var, af1<Context> af1Var2) {
        this.f9164a = af1Var;
        this.f9165b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new pl0(this.f9164a.get(), this.f9165b.get());
    }
}
