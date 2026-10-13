package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.ViewGroup;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ek0 implements oe1<ck0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f6452a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f6453b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<ws0> f6454c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ViewGroup> f6455d;

    public ek0(af1<tz0> af1Var, af1<Context> af1Var2, af1<ws0> af1Var3, af1<ViewGroup> af1Var4) {
        this.f6452a = af1Var;
        this.f6453b = af1Var2;
        this.f6454c = af1Var3;
        this.f6455d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new ck0(this.f6452a.get(), this.f6453b.get(), this.f6454c.get(), this.f6455d.get());
    }
}
