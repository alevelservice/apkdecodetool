package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class cz implements oe1<ox<jt>> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<xz> f6129a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f6130b;

    private cz(qy qyVar, af1<xz> af1Var, af1<Executor> af1Var2) {
        this.f6129a = af1Var;
        this.f6130b = af1Var2;
    }

    public static cz a(qy qyVar, af1<xz> af1Var, af1<Executor> af1Var2) {
        return new cz(qyVar, af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        ox oxVar = new ox(this.f6129a.get(), this.f6130b.get());
        ue1.a(oxVar, "Cannot return null from a non-@Nullable @Provides method");
        return oxVar;
    }
}
