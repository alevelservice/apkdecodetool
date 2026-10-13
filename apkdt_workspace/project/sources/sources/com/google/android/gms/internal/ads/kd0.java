package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kd0 implements oe1<gd0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<lo> f7668a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Context> f7669b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f7670c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<d60> f7671d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<ws0> f7672e;

    public kd0(af1<lo> af1Var, af1<Context> af1Var2, af1<Executor> af1Var3, af1<d60> af1Var4, af1<ws0> af1Var5) {
        this.f7668a = af1Var;
        this.f7669b = af1Var2;
        this.f7670c = af1Var3;
        this.f7671d = af1Var4;
        this.f7672e = af1Var5;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new gd0(this.f7668a.get(), this.f7669b.get(), this.f7670c.get(), this.f7671d.get(), this.f7672e.get());
    }
}
