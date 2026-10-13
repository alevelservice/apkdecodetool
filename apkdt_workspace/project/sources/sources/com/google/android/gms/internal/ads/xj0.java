package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xj0 implements oe1<vj0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Executor> f10371a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<db0> f10372b;

    public xj0(af1<Executor> af1Var, af1<db0> af1Var2) {
        this.f10371a = af1Var;
        this.f10372b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new vj0(this.f10371a.get(), this.f10372b.get());
    }
}
