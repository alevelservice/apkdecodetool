package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mp implements oe1<ox<fq1>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<nq> f8204a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f8205b;

    public mp(yo yoVar, af1<nq> af1Var, af1<Executor> af1Var2) {
        this.f8204a = af1Var;
        this.f8205b = af1Var2;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f8204a.get(), this.f8205b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
