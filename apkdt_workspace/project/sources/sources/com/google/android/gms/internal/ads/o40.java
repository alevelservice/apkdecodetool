package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class o40 implements oe1<d40> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8469a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ws0> f8470b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Executor> f8471c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<d60> f8472d;

    public o40(af1<Context> af1Var, af1<ws0> af1Var2, af1<Executor> af1Var3, af1<d60> af1Var4) {
        this.f8469a = af1Var;
        this.f8470b = af1Var2;
        this.f8471c = af1Var3;
        this.f8472d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new d40(this.f8469a.get(), this.f8470b.get(), this.f8471c.get(), this.f8472d.get());
    }
}
