package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nn implements oe1<on> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8398a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zp1> f8399b;

    private nn(af1<Context> af1Var, af1<zp1> af1Var2) {
        this.f8398a = af1Var;
        this.f8399b = af1Var2;
    }

    public static nn a(af1<Context> af1Var, af1<zp1> af1Var2) {
        return new nn(af1Var, af1Var2);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new on(this.f8398a.get(), this.f8399b.get());
    }
}
