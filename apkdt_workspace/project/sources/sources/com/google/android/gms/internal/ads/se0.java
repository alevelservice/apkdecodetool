package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class se0 implements oe1<me0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9320a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzawv> f9321b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ws0> f9322c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<Executor> f9323d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<lz> f9324e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<d60> f9325f;

    public se0(af1<Context> af1Var, af1<zzawv> af1Var2, af1<ws0> af1Var3, af1<Executor> af1Var4, af1<lz> af1Var5, af1<d60> af1Var6) {
        this.f9320a = af1Var;
        this.f9321b = af1Var2;
        this.f9322c = af1Var3;
        this.f9323d = af1Var4;
        this.f9324e = af1Var5;
        this.f9325f = af1Var6;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new me0(this.f9320a.get(), this.f9321b.get(), this.f9322c.get(), this.f9323d.get(), this.f9324e.get(), this.f9325f.get());
    }
}
