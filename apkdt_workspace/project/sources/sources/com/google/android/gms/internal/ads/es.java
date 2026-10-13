package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class es implements oe1<ox<st1>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<fn> f6496a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6497b;

    private es(af1<fn> af1Var, af1<Executor> af1Var2) {
        this.f6496a = af1Var;
        this.f6497b = af1Var2;
    }

    public static es a(af1<fn> af1Var, af1<Executor> af1Var2) {
        return new es(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f6496a.get(), this.f6497b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
