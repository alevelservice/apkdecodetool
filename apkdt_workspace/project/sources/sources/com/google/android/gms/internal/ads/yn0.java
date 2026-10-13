package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yn0 implements oe1<rn0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f10604a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f10605b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<String> f10606c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ji0> f10607d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<Context> f10608e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<ws0> f10609f;

    /* renamed from: g, reason: collision with root package name */
    private final af1<hi0> f10610g;

    private yn0(af1<tz0> af1Var, af1<ScheduledExecutorService> af1Var2, af1<String> af1Var3, af1<ji0> af1Var4, af1<Context> af1Var5, af1<ws0> af1Var6, af1<hi0> af1Var7) {
        this.f10604a = af1Var;
        this.f10605b = af1Var2;
        this.f10606c = af1Var3;
        this.f10607d = af1Var4;
        this.f10608e = af1Var5;
        this.f10609f = af1Var6;
        this.f10610g = af1Var7;
    }

    public static yn0 a(af1<tz0> af1Var, af1<ScheduledExecutorService> af1Var2, af1<String> af1Var3, af1<ji0> af1Var4, af1<Context> af1Var5, af1<ws0> af1Var6, af1<hi0> af1Var7) {
        return new yn0(af1Var, af1Var2, af1Var3, af1Var4, af1Var5, af1Var6, af1Var7);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new rn0(this.f10604a.get(), this.f10605b.get(), this.f10606c.get(), this.f10607d.get(), this.f10608e.get(), this.f10609f.get(), this.f10610g.get());
    }
}
