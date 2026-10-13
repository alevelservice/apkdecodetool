package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class uz implements oe1<rz> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9836a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<fi> f9837b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ns0> f9838c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<zzawv> f9839d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<Integer> f9840e;

    private uz(af1<Context> af1Var, af1<fi> af1Var2, af1<ns0> af1Var3, af1<zzawv> af1Var4, af1<Integer> af1Var5) {
        this.f9836a = af1Var;
        this.f9837b = af1Var2;
        this.f9838c = af1Var3;
        this.f9839d = af1Var4;
        this.f9840e = af1Var5;
    }

    public static uz a(af1<Context> af1Var, af1<fi> af1Var2, af1<ns0> af1Var3, af1<zzawv> af1Var4, af1<Integer> af1Var5) {
        return new uz(af1Var, af1Var2, af1Var3, af1Var4, af1Var5);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new rz(this.f9836a.get(), this.f9837b.get(), this.f9838c.get(), this.f9839d.get(), this.f9840e.get().intValue());
    }
}
