package com.google.android.gms.internal.ads;

import android.content.Context;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class go0 implements oe1<eo0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f6950a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f6951b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<zzawv> f6952c;

    private go0(af1<tz0> af1Var, af1<Context> af1Var2, af1<zzawv> af1Var3) {
        this.f6950a = af1Var;
        this.f6951b = af1Var2;
        this.f6952c = af1Var3;
    }

    public static go0 a(af1<tz0> af1Var, af1<Context> af1Var2, af1<zzawv> af1Var3) {
        return new go0(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new eo0(this.f6950a.get(), this.f6951b.get(), this.f6952c.get());
    }
}
