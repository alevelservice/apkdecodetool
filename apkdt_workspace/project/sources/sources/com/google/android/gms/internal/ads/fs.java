package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fs implements oe1<ox<qu>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<fn> f6713a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6714b;

    private fs(af1<fn> af1Var, af1<Executor> af1Var2) {
        this.f6713a = af1Var;
        this.f6714b = af1Var2;
    }

    public static fs a(af1<fn> af1Var, af1<Executor> af1Var2) {
        return new fs(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f6713a.get(), this.f6714b.get());
    }

    public static ox<qu> a(fn fnVar, Executor executor) {
        ox<qu> oxVar = new ox<>(fnVar, executor);
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
