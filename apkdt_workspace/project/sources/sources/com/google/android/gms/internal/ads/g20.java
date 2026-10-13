package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class g20 implements oe1<c20> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f6775a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<pa> f6776b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ws0> f6777c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<q10> f6778d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<l10> f6779e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<k20> f6780f;

    /* renamed from: g, reason: collision with root package name */
    private final af1<Executor> f6781g;

    /* renamed from: h, reason: collision with root package name */
    private final af1<Executor> f6782h;

    /* renamed from: i, reason: collision with root package name */
    private final af1<j10> f6783i;

    private g20(af1<Context> af1Var, af1<pa> af1Var2, af1<ws0> af1Var3, af1<q10> af1Var4, af1<l10> af1Var5, af1<k20> af1Var6, af1<Executor> af1Var7, af1<Executor> af1Var8, af1<j10> af1Var9) {
        this.f6775a = af1Var;
        this.f6776b = af1Var2;
        this.f6777c = af1Var3;
        this.f6778d = af1Var4;
        this.f6779e = af1Var5;
        this.f6780f = af1Var6;
        this.f6781g = af1Var7;
        this.f6782h = af1Var8;
        this.f6783i = af1Var9;
    }

    public static g20 a(af1<Context> af1Var, af1<pa> af1Var2, af1<ws0> af1Var3, af1<q10> af1Var4, af1<l10> af1Var5, af1<k20> af1Var6, af1<Executor> af1Var7, af1<Executor> af1Var8, af1<j10> af1Var9) {
        return new g20(af1Var, af1Var2, af1Var3, af1Var4, af1Var5, af1Var6, af1Var7, af1Var8, af1Var9);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new c20(this.f6775a.get(), this.f6776b.get(), this.f6777c.get(), this.f6778d.get(), this.f6779e.get(), this.f6780f.get(), this.f6781g.get(), this.f6782h.get(), this.f6783i.get());
    }
}
