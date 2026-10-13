package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rn implements oe1<qn> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<l4> f9168a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<on> f9169b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f9170c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<hn> f9171d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f9172e;

    private rn(af1<l4> af1Var, af1<on> af1Var2, af1<Executor> af1Var3, af1<hn> af1Var4, af1<com.google.android.gms.common.util.e> af1Var5) {
        this.f9168a = af1Var;
        this.f9169b = af1Var2;
        this.f9170c = af1Var3;
        this.f9171d = af1Var4;
        this.f9172e = af1Var5;
    }

    public static rn a(af1<l4> af1Var, af1<on> af1Var2, af1<Executor> af1Var3, af1<hn> af1Var4, af1<com.google.android.gms.common.util.e> af1Var5) {
        return new rn(af1Var, af1Var2, af1Var3, af1Var4, af1Var5);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new qn(this.f9168a.get(), this.f9169b.get(), this.f9170c.get(), this.f9171d.get(), this.f9172e.get());
    }
}
