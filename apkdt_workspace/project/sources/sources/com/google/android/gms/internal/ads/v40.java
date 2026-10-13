package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class v40 implements oe1<zzbxh> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f9857a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<l10> f9858b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<c20> f9859c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<d10> f9860d;

    private v40(af1<Context> af1Var, af1<l10> af1Var2, af1<c20> af1Var3, af1<d10> af1Var4) {
        this.f9857a = af1Var;
        this.f9858b = af1Var2;
        this.f9859c = af1Var3;
        this.f9860d = af1Var4;
    }

    public static v40 a(af1<Context> af1Var, af1<l10> af1Var2, af1<c20> af1Var3, af1<d10> af1Var4) {
        return new v40(af1Var, af1Var2, af1Var3, af1Var4);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zzbxh(this.f9857a.get(), this.f9858b.get(), this.f9859c.get(), this.f9860d.get());
    }
}
