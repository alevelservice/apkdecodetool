package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Bundle;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uc0 implements oe1<oc0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9706a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<qz0<Bundle>> f9707b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<kc0> f9708c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ec0> f9709d;

    private uc0(af1<Context> af1Var, af1<qz0<Bundle>> af1Var2, af1<kc0> af1Var3, af1<ec0> af1Var4) {
        this.f9706a = af1Var;
        this.f9707b = af1Var2;
        this.f9708c = af1Var3;
        this.f9709d = af1Var4;
    }

    public static uc0 a(af1<Context> af1Var, af1<qz0<Bundle>> af1Var2, af1<kc0> af1Var3, af1<ec0> af1Var4) {
        return new uc0(af1Var, af1Var2, af1Var3, af1Var4);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new oc0(this.f9706a.get(), this.f9707b.get(), this.f9708c.get(), this.f9709d.get());
    }
}
