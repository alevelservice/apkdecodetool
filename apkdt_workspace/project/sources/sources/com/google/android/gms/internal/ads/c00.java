package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c00 implements oe1<zz> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Map<String, ad0<br>>> f5890a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Map<String, ad0<d10>>> f5891b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Map<String, bf0<d10>>> f5892c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<tq<uo>> f5893d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<x10> f5894e;

    public c00(af1<Map<String, ad0<br>>> af1Var, af1<Map<String, ad0<d10>>> af1Var2, af1<Map<String, bf0<d10>>> af1Var3, af1<tq<uo>> af1Var4, af1<x10> af1Var5) {
        this.f5890a = af1Var;
        this.f5891b = af1Var2;
        this.f5892c = af1Var3;
        this.f5893d = af1Var4;
        this.f5894e = af1Var5;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zz(this.f5890a.get(), this.f5891b.get(), this.f5892c.get(), this.f5893d, this.f5894e.get());
    }
}
