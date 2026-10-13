package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ac0 implements oe1<ox<qu>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ic0> f5557a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5558b;

    private ac0(af1<ic0> af1Var, af1<Executor> af1Var2) {
        this.f5557a = af1Var;
        this.f5558b = af1Var2;
    }

    public static ac0 a(af1<ic0> af1Var, af1<Executor> af1Var2) {
        return new ac0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f5557a.get(), this.f5558b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
