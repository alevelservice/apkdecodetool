package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class dc0 implements oe1<ox<fv0>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<mc0> f6196a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6197b;

    private dc0(af1<mc0> af1Var, af1<Executor> af1Var2) {
        this.f6196a = af1Var;
        this.f6197b = af1Var2;
    }

    public static dc0 a(af1<mc0> af1Var, af1<Executor> af1Var2) {
        return new dc0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f6196a.get(), this.f6197b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
