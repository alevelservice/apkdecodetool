package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class o50 implements oe1<i50> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<Context> f8473a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<Executor> f8474b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<t11> f8475c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<zzawv> f8476d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<com.google.android.gms.ads.internal.b> f8477e;

    /* renamed from: f, reason: collision with root package name */
    private final af1<oi> f8478f;

    public o50(af1<Context> af1Var, af1<Executor> af1Var2, af1<t11> af1Var3, af1<zzawv> af1Var4, af1<com.google.android.gms.ads.internal.b> af1Var5, af1<oi> af1Var6) {
        this.f8473a = af1Var;
        this.f8474b = af1Var2;
        this.f8475c = af1Var3;
        this.f8476d = af1Var4;
        this.f8477e = af1Var5;
        this.f8478f = af1Var6;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new i50(this.f8473a.get(), this.f8474b.get(), this.f8475c.get(), this.f8476d.get(), this.f8477e.get(), this.f8478f.get());
    }
}
