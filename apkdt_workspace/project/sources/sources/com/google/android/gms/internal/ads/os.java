package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class os implements oe1<ls> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8587a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws0> f8588b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<zzawv> f8589c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<pa> f8590d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<e90> f8591e;

    private os(af1<Context> af1Var, af1<ws0> af1Var2, af1<zzawv> af1Var3, af1<pa> af1Var4, af1<e90> af1Var5) {
        this.f8587a = af1Var;
        this.f8588b = af1Var2;
        this.f8589c = af1Var3;
        this.f8590d = af1Var4;
        this.f8591e = af1Var5;
    }

    public static os a(af1<Context> af1Var, af1<ws0> af1Var2, af1<zzawv> af1Var3, af1<pa> af1Var4, af1<e90> af1Var5) {
        return new os(af1Var, af1Var2, af1Var3, af1Var4, af1Var5);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ls(this.f8587a.get(), this.f8588b.get(), this.f8589c.get(), this.f8590d.get(), this.f8591e.get());
    }
}
