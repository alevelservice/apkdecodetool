package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zr0 implements oe1<yr0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f10840a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f10841b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<mk> f10842c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<zq0<y50, r50>> f10843d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<ar0> f10844e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<ys0> f10845f;

    /* renamed from: g, reason: collision with root package name */
    private final af1<us0> f10846g;

    public zr0(af1<Context> af1Var, af1<Executor> af1Var2, af1<mk> af1Var3, af1<zq0<y50, r50>> af1Var4, af1<ar0> af1Var5, af1<ys0> af1Var6, af1<us0> af1Var7) {
        this.f10840a = af1Var;
        this.f10841b = af1Var2;
        this.f10842c = af1Var3;
        this.f10843d = af1Var4;
        this.f10844e = af1Var5;
        this.f10845f = af1Var6;
        this.f10846g = af1Var7;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new yr0(this.f10840a.get(), this.f10841b.get(), this.f10842c.get(), this.f10843d.get(), this.f10844e.get(), this.f10845f.get(), this.f10846g.get());
    }
}
