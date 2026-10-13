package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class he0 implements oe1<de0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<qp> f7045a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<jd0> f7046b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<mt> f7047c;

    /* renamed from: d, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f7048d;

    /* renamed from: e, reason: collision with root package name */
    private final af1<tz0> f7049e;

    public he0(af1<qp> af1Var, af1<jd0> af1Var2, af1<mt> af1Var3, af1<ScheduledExecutorService> af1Var4, af1<tz0> af1Var5) {
        this.f7045a = af1Var;
        this.f7046b = af1Var2;
        this.f7047c = af1Var3;
        this.f7048d = af1Var4;
        this.f7049e = af1Var5;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new de0(this.f7045a.get(), this.f7046b.get(), this.f7047c.get(), this.f7048d.get(), this.f7049e.get());
    }
}
