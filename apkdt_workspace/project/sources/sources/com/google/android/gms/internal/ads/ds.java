package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ds implements oe1<ox<jt>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<fn> f6301a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6302b;

    private ds(af1<fn> af1Var, af1<Executor> af1Var2) {
        this.f6301a = af1Var;
        this.f6302b = af1Var2;
    }

    public static ds a(af1<fn> af1Var, af1<Executor> af1Var2) {
        return new ds(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f6301a.get(), this.f6302b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
