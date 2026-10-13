package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class co0 implements oe1<ao0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<a9> f6076a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz0> f6077b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Context> f6078c;

    private co0(af1<a9> af1Var, af1<tz0> af1Var2, af1<Context> af1Var3) {
        this.f6076a = af1Var;
        this.f6077b = af1Var2;
        this.f6078c = af1Var3;
    }

    public static co0 a(af1<a9> af1Var, af1<tz0> af1Var2, af1<Context> af1Var3) {
        return new co0(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ao0(this.f6076a.get(), this.f6077b.get(), this.f6078c.get());
    }
}
