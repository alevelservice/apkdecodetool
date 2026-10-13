package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class iq implements oe1<zp> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<rq> f7356a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<zzack> f7357b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Runnable> f7358c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<Executor> f7359d;

    public iq(af1<rq> af1Var, af1<zzack> af1Var2, af1<Runnable> af1Var3, af1<Executor> af1Var4) {
        this.f7356a = af1Var;
        this.f7357b = af1Var2;
        this.f7358c = af1Var3;
        this.f7359d = af1Var4;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zp(this.f7356a.get(), this.f7357b.get(), this.f7358c.get(), this.f7359d.get());
    }
}
