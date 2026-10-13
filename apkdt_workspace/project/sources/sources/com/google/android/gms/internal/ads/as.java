package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class as implements oe1<ox<tx>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<wx> f5656a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5657b;

    private as(af1<wx> af1Var, af1<Executor> af1Var2) {
        this.f5656a = af1Var;
        this.f5657b = af1Var2;
    }

    public static as a(af1<wx> af1Var, af1<Executor> af1Var2) {
        return new as(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f5656a.get(), this.f5657b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
