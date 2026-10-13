package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a90 implements oe1<Set<ox<wt>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<c90> f5547a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f5548b;

    private a90(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        this.f5547a = af1Var;
        this.f5548b = af1Var2;
    }

    public static a90 a(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        return new a90(s80Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<wt>> f2 = s80.f(this.f5547a.get(), this.f5548b.get());
        ue1.a(f2, "Cannot return null from a non-@Nullable @Provides method");
        return f2;
    }
}
