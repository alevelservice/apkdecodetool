package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class y80 implements oe1<Set<ox<com.google.android.gms.ads.doubleclick.a>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<c90> f10499a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f10500b;

    private y80(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        this.f10499a = af1Var;
        this.f10500b = af1Var2;
    }

    public static y80 a(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        return new y80(s80Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<com.google.android.gms.ads.doubleclick.a>> b2 = s80.b(this.f10499a.get(), this.f10500b.get());
        ue1.a(b2, "Cannot return null from a non-@Nullable @Provides method");
        return b2;
    }
}
