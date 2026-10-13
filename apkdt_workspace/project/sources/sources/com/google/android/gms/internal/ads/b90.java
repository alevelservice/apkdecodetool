package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b90 implements oe1<Set<ox<st1>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<c90> f5733a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5734b;

    private b90(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        this.f5733a = af1Var;
        this.f5734b = af1Var2;
    }

    public static b90 a(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        return new b90(s80Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<st1>> g2 = s80.g(this.f5733a.get(), this.f5734b.get());
        ue1.a(g2, "Cannot return null from a non-@Nullable @Provides method");
        return g2;
    }
}
