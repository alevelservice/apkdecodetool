package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lp0 implements oe1<ip0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<m7> f7945a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f7946b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<String> f7947c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<tz0> f7948d;

    public lp0(af1<m7> af1Var, af1<Context> af1Var2, af1<String> af1Var3, af1<tz0> af1Var4) {
        this.f7945a = af1Var;
        this.f7946b = af1Var2;
        this.f7947c = af1Var3;
        this.f7948d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ip0(this.f7945a.get(), this.f7946b.get(), this.f7947c.get(), this.f7948d.get());
    }
}
