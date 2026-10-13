package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dp0 implements oe1<yo0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<x9> f6283a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f6284b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f6285c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<Executor> f6286d;

    public dp0(af1<x9> af1Var, af1<Context> af1Var2, af1<ScheduledExecutorService> af1Var3, af1<Executor> af1Var4) {
        this.f6283a = af1Var;
        this.f6284b = af1Var2;
        this.f6285c = af1Var3;
        this.f6286d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new yo0(this.f6283a.get(), this.f6284b.get(), this.f6285c.get(), this.f6286d.get());
    }
}
