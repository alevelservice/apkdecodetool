package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class d90 implements oe1<Set<ox<fv0>>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<c90> f6180a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6181b;

    private d90(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        this.f6180a = af1Var;
        this.f6181b = af1Var2;
    }

    public static d90 a(s80 s80Var, af1<c90> af1Var, af1<Executor> af1Var2) {
        return new d90(s80Var, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        Set<ox<fv0>> h2 = s80.h(this.f6180a.get(), this.f6181b.get());
        ue1.a(h2, "Cannot return null from a non-@Nullable @Provides method");
        return h2;
    }
}
