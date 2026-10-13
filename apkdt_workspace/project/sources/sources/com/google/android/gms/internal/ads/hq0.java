package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class hq0 implements oe1<fq0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<r6> f7149a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f7150b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<Context> f7151c;

    public hq0(af1<r6> af1Var, af1<ScheduledExecutorService> af1Var2, af1<Context> af1Var3) {
        this.f7149a = af1Var;
        this.f7150b = af1Var2;
        this.f7151c = af1Var3;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new fq0(this.f7149a.get(), this.f7150b.get(), this.f7151c.get());
    }
}
