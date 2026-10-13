package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class un implements oe1<hn> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<zp1> f9778a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<l4> f9779b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f9780c;

    private un(af1<zp1> af1Var, af1<l4> af1Var2, af1<Executor> af1Var3) {
        this.f9778a = af1Var;
        this.f9779b = af1Var2;
        this.f9780c = af1Var3;
    }

    public static un a(af1<zp1> af1Var, af1<l4> af1Var2, af1<Executor> af1Var3) {
        return new un(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        zp1 zp1Var = this.f9778a.get();
        hn hnVar = new hn(zp1Var.d(), this.f9779b.get(), this.f9780c.get());
        ue1.a(hnVar, "Cannot return null from a non-@Nullable @Provides method");
        return hnVar;
    }
}
