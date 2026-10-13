package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Set;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fn0 implements oe1<dn0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f6693a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f6694b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Set<String>> f6695c;

    private fn0(af1<tz0> af1Var, af1<Context> af1Var2, af1<Set<String>> af1Var3) {
        this.f6693a = af1Var;
        this.f6694b = af1Var2;
        this.f6695c = af1Var3;
    }

    public static fn0 a(af1<tz0> af1Var, af1<Context> af1Var2, af1<Set<String>> af1Var3) {
        return new fn0(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new dn0(this.f6693a.get(), this.f6694b.get(), this.f6695c.get());
    }
}
