package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ot0 implements oe1<kt0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8593a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ka> f8594b;

    private ot0(af1<Context> af1Var, af1<ka> af1Var2) {
        this.f8593a = af1Var;
        this.f8594b = af1Var2;
    }

    public static ot0 a(af1<Context> af1Var, af1<ka> af1Var2) {
        return new ot0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new kt0(this.f8593a.get(), this.f8594b.get());
    }
}
