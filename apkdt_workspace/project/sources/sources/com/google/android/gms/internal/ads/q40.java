package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q40 implements oe1<i40> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f8843a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ao> f8844b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<nx> f8845c;

    public q40(af1<Executor> af1Var, af1<ao> af1Var2, af1<nx> af1Var3) {
        this.f8843a = af1Var;
        this.f8844b = af1Var2;
        this.f8845c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new i40(this.f8843a.get(), this.f8844b.get(), this.f8845c.get());
    }
}
