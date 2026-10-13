package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zo implements oe1<xo> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<rq> f10811a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f10812b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ms0> f10813c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<View> f10814d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<fi> f10815e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<pq> f10816f;

    /* renamed from: g, reason: collision with root package name */
    private final af1<x10> f10817g;

    /* renamed from: h, reason: collision with root package name */
    private final af1<sx> f10818h;

    /* renamed from: i, reason: collision with root package name */
    private final af1<zzclg> f10819i;

    /* renamed from: j, reason: collision with root package name */
    private final af1<Executor> f10820j;

    public zo(af1<rq> af1Var, af1<Context> af1Var2, af1<ms0> af1Var3, af1<View> af1Var4, af1<fi> af1Var5, af1<pq> af1Var6, af1<x10> af1Var7, af1<sx> af1Var8, af1<zzclg> af1Var9, af1<Executor> af1Var10) {
        this.f10811a = af1Var;
        this.f10812b = af1Var2;
        this.f10813c = af1Var3;
        this.f10814d = af1Var4;
        this.f10815e = af1Var5;
        this.f10816f = af1Var6;
        this.f10817g = af1Var7;
        this.f10818h = af1Var8;
        this.f10819i = af1Var9;
        this.f10820j = af1Var10;
    }

    public static xo a(rq rqVar, Context context, ms0 ms0Var, View view, fi fiVar, pq pqVar, x10 x10Var, sx sxVar, ie1<zzclg> ie1Var, Executor executor) {
        return new xo(rqVar, context, ms0Var, view, fiVar, pqVar, x10Var, sxVar, ie1Var, executor);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new xo(this.f10811a.get(), this.f10812b.get(), this.f10813c.get(), this.f10814d.get(), this.f10815e.get(), this.f10816f.get(), this.f10817g.get(), this.f10818h.get(), pe1.b(this.f10819i), this.f10820j.get());
    }
}
