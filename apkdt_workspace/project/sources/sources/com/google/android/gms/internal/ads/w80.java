package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class w80 implements oe1<Set<ox<qu>>> {

    /* renamed from: a, reason: collision with root package name */
    private final s80 f10043a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<c90> f10044b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f10045c;

    private w80(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        this.f10043a = s80Var;
        this.f10044b = af1Var;
        this.f10045c = af1Var2;
    }

    public static w80 a(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        return new w80(s80Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f10043a, this.f10044b.get(), this.f10045c.get());
    }

    public static Set<ox<qu>> a(s80 s80Var, c90 c90Var, Executor executor) {
        Set<ox<qu>> c2 = s80.c(c90Var, executor);
        ue1.a(c2, "Cannot return null from a non-@Nullable @Provides method");
        return c2;
    }
}
