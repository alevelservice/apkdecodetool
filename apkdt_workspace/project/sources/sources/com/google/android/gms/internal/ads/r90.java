package com.google.android.gms.internal.ads;

import android.content.Context;
import java.lang.ref.WeakReference;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class r90 implements oe1<e90> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f9056a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f9057b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<WeakReference<Context>> f9058c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<Executor> f9059d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<ke0> f9060e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f9061f;

    /* renamed from: g, reason: collision with root package name */
    private final af1<n80> f9062g;

    public r90(af1<Executor> af1Var, af1<Context> af1Var2, af1<WeakReference<Context>> af1Var3, af1<Executor> af1Var4, af1<ke0> af1Var5, af1<ScheduledExecutorService> af1Var6, af1<n80> af1Var7) {
        this.f9056a = af1Var;
        this.f9057b = af1Var2;
        this.f9058c = af1Var3;
        this.f9059d = af1Var4;
        this.f9060e = af1Var5;
        this.f9061f = af1Var6;
        this.f9062g = af1Var7;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new e90(this.f9056a.get(), this.f9057b.get(), this.f9058c.get(), this.f9059d.get(), this.f9060e.get(), this.f9061f.get(), this.f9062g.get());
    }
}
