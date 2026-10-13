package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wo0 implements oe1<uo0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f10157a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f10158b;

    private wo0(af1<tz0> af1Var, af1<Context> af1Var2) {
        this.f10157a = af1Var;
        this.f10158b = af1Var2;
    }

    public static wo0 a(af1<tz0> af1Var, af1<Context> af1Var2) {
        return new wo0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new uo0(this.f10157a.get(), this.f10158b.get());
    }
}
