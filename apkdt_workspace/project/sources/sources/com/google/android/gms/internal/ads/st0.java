package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class st0 implements oe1<nt0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9446a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f9447b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ca> f9448c;

    public st0(af1<Context> af1Var, af1<zzawv> af1Var2, af1<ca> af1Var3) {
        this.f9446a = af1Var;
        this.f9447b = af1Var2;
        this.f9448c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new nt0(this.f9446a.get(), this.f9447b.get(), this.f9448c.get());
    }
}
