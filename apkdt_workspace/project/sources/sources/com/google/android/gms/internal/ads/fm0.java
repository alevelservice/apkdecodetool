package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fm0 implements oe1<dm0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f6676a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<tz0> f6677b;

    private fm0(af1<Context> af1Var, af1<tz0> af1Var2) {
        this.f6676a = af1Var;
        this.f6677b = af1Var2;
    }

    public static fm0 a(af1<Context> af1Var, af1<tz0> af1Var2) {
        return new fm0(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new dm0(this.f6676a.get(), this.f6677b.get());
    }
}
