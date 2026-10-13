package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bm0 implements oe1<xl0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f5799a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz0> f5800b;

    private bm0(af1<Context> af1Var, af1<tz0> af1Var2) {
        this.f5799a = af1Var;
        this.f5800b = af1Var2;
    }

    public static bm0 a(af1<Context> af1Var, af1<tz0> af1Var2) {
        return new bm0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new xl0(this.f5799a.get(), this.f5800b.get());
    }
}
