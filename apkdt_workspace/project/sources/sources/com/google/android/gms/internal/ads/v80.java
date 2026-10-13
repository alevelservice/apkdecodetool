package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class v80 implements oe1<Set<ox<jt>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<c90> f9882a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f9883b;

    private v80(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        this.f9882a = af1Var;
        this.f9883b = af1Var2;
    }

    public static v80 a(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        return new v80(s80Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<jt>> e2 = s80.e(this.f9882a.get(), this.f9883b.get());
        ue1.a(e2, "Cannot return null from a non-@Nullable @Provides method");
        return e2;
    }
}
