package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class u80 implements oe1<Set<ox<ot>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<c90> f9689a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f9690b;

    private u80(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        this.f9689a = af1Var;
        this.f9690b = af1Var2;
    }

    public static u80 a(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        return new u80(s80Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<ot>> d2 = s80.d(this.f9689a.get(), this.f9690b.get());
        ue1.a(d2, "Cannot return null from a non-@Nullable @Provides method");
        return d2;
    }
}
