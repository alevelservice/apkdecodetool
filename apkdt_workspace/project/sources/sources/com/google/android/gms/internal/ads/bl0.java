package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bl0 implements oe1<wk0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f5794a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ca> f5795b;

    private bl0(af1<Executor> af1Var, af1<ca> af1Var2) {
        this.f5794a = af1Var;
        this.f5795b = af1Var2;
    }

    public static bl0 a(af1<Executor> af1Var, af1<ca> af1Var2) {
        return new bl0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new wk0(this.f5794a.get(), this.f5795b.get());
    }
}
