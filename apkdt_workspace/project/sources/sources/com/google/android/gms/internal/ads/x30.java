package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x30 implements oe1<p30> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f10261a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<f30> f10262b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<t11> f10263c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<zzawv> f10264d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<com.google.android.gms.ads.internal.b> f10265e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<ks1> f10266f;

    /* renamed from: g, reason: collision with root package name */
    private final af1<Executor> f10267g;

    /* renamed from: h, reason: collision with root package name */
    private final af1<ws0> f10268h;

    /* renamed from: i, reason: collision with root package name */
    private final af1<d40> f10269i;

    /* renamed from: j, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f10270j;

    public x30(af1<Context> af1Var, af1<f30> af1Var2, af1<t11> af1Var3, af1<zzawv> af1Var4, af1<com.google.android.gms.ads.internal.b> af1Var5, af1<ks1> af1Var6, af1<Executor> af1Var7, af1<ws0> af1Var8, af1<d40> af1Var9, af1<ScheduledExecutorService> af1Var10) {
        this.f10261a = af1Var;
        this.f10262b = af1Var2;
        this.f10263c = af1Var3;
        this.f10264d = af1Var4;
        this.f10265e = af1Var5;
        this.f10266f = af1Var6;
        this.f10267g = af1Var7;
        this.f10268h = af1Var8;
        this.f10269i = af1Var9;
        this.f10270j = af1Var10;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new p30(this.f10261a.get(), this.f10262b.get(), this.f10263c.get(), this.f10264d.get(), this.f10265e.get(), this.f10266f.get(), this.f10267g.get(), this.f10268h.get(), this.f10269i.get(), this.f10270j.get());
    }
}
