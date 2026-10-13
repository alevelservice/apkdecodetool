package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.lo0;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class en0<S extends lo0<?>> implements ko0<S> {

    /* renamed from: a, reason: collision with root package name */
    private final ko0<S> f6468a;

    /* renamed from: b, reason: collision with root package name */
    private final long f6469b;

    /* renamed from: c, reason: collision with root package name */
    private final ScheduledExecutorService f6470c;

    public en0(ko0<S> ko0Var, long j2, ScheduledExecutorService scheduledExecutorService) {
        this.f6468a = ko0Var;
        this.f6469b = j2;
        this.f6470c = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<S> a() {
        qz0<S> a2 = this.f6468a.a();
        long j2 = this.f6469b;
        if (j2 > 0) {
            a2 = gz0.a(a2, j2, TimeUnit.MILLISECONDS, this.f6470c);
        }
        return gz0.a(a2, Throwable.class, hn0.f7126a, yd.f10544e);
    }
}
