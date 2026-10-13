package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class x80 implements oe1<Set<ox<vt>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<c90> f10291a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f10292b;

    private x80(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        this.f10291a = af1Var;
        this.f10292b = af1Var2;
    }

    public static x80 a(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        return new x80(s80Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<vt>> a2 = s80.a(this.f10291a.get(), this.f10292b.get());
        ue1.a(a2, "Cannot return null from a non-@Nullable @Provides method");
        return a2;
    }
}
