package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jl0 implements oe1<el0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f7526a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f7527b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f7528c;

    private jl0(af1<Context> af1Var, af1<ScheduledExecutorService> af1Var2, af1<Executor> af1Var3) {
        this.f7526a = af1Var;
        this.f7527b = af1Var2;
        this.f7528c = af1Var3;
    }

    public static jl0 a(af1<Context> af1Var, af1<ScheduledExecutorService> af1Var2, af1<Executor> af1Var3) {
        return new jl0(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new el0(this.f7526a.get(), this.f7527b.get(), this.f7528c.get());
    }
}
