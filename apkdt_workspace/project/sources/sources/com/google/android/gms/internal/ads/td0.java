package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class td0 implements oe1<jd0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<qp> f9545a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f9546b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f9547c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<d60> f9548d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<ws0> f9549e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<pw0<ns0, pb>> f9550f;

    public td0(af1<qp> af1Var, af1<Context> af1Var2, af1<Executor> af1Var3, af1<d60> af1Var4, af1<ws0> af1Var5, af1<pw0<ns0, pb>> af1Var6) {
        this.f9545a = af1Var;
        this.f9546b = af1Var2;
        this.f9547c = af1Var3;
        this.f9548d = af1Var4;
        this.f9549e = af1Var5;
        this.f9550f = af1Var6;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new jd0(this.f9545a.get(), this.f9546b.get(), this.f9547c.get(), this.f9548d.get(), this.f9549e.get(), this.f9550f.get());
    }
}
