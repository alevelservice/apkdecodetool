package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bc0 implements oe1<ox<ot>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ic0> f5749a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5750b;

    private bc0(af1<ic0> af1Var, af1<Executor> af1Var2) {
        this.f5749a = af1Var;
        this.f5750b = af1Var2;
    }

    public static bc0 a(af1<ic0> af1Var, af1<Executor> af1Var2) {
        return new bc0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f5749a.get(), this.f5750b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
