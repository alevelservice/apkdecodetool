package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class u20 implements oe1<k20> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9669a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<d60> f9670b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<y40> f9671c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ao> f9672d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<u10> f9673e;

    public u20(af1<Context> af1Var, af1<d60> af1Var2, af1<y40> af1Var3, af1<ao> af1Var4, af1<u10> af1Var5) {
        this.f9669a = af1Var;
        this.f9670b = af1Var2;
        this.f9671c = af1Var3;
        this.f9672d = af1Var4;
        this.f9673e = af1Var5;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new k20(this.f9669a.get(), this.f9670b.get(), this.f9671c.get(), this.f9672d.get(), this.f9673e.get());
    }
}
