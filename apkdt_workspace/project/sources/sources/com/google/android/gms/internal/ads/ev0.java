package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ev0 implements oe1<zu0> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<tz0> f6530a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f6531b;

    /* renamed from: c, reason: collision with root package name */
    private final af1<yu0> f6532c;

    private ev0(af1<tz0> af1Var, af1<ScheduledExecutorService> af1Var2, af1<yu0> af1Var3) {
        this.f6530a = af1Var;
        this.f6531b = af1Var2;
        this.f6532c = af1Var3;
    }

    public static ev0 a(af1<tz0> af1Var, af1<ScheduledExecutorService> af1Var2, af1<yu0> af1Var3) {
        return new ev0(af1Var, af1Var2, af1Var3);
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return new zu0(this.f6530a.get(), this.f6531b.get(), this.f6532c.get());
    }
}
