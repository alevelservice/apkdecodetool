package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ro implements oe1<kv> {

    /* renamed from: a, reason: collision with root package name */
    private final af1<ScheduledExecutorService> f9184a;

    /* renamed from: b, reason: collision with root package name */
    private final af1<com.google.android.gms.common.util.e> f9185b;

    public ro(af1<ScheduledExecutorService> af1Var, af1<com.google.android.gms.common.util.e> af1Var2) {
        this.f9184a = af1Var;
        this.f9185b = af1Var2;
    }

    public static kv a(ScheduledExecutorService scheduledExecutorService, com.google.android.gms.common.util.e eVar) {
        kv kvVar = new kv(scheduledExecutorService, eVar);
        ue1.a(kvVar, "Cannot return null from a non-@Nullable @Provides method");
        return kvVar;
    }

    @Override // com.google.android.gms.internal.ads.af1
    public final /* synthetic */ Object get() {
        return a(this.f9184a.get(), this.f9185b.get());
    }
}
