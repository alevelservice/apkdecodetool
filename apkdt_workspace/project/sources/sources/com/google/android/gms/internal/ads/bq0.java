package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bq0 implements ko0<cq0> {

    /* renamed from: a, reason: collision with root package name */
    private t4 f5838a;

    /* renamed from: b, reason: collision with root package name */
    private ScheduledExecutorService f5839b;

    /* renamed from: c, reason: collision with root package name */
    private boolean f5840c;

    /* renamed from: d, reason: collision with root package name */
    private ApplicationInfo f5841d;

    public bq0(t4 t4Var, ScheduledExecutorService scheduledExecutorService, boolean z, ApplicationInfo applicationInfo) {
        this.f5838a = t4Var;
        this.f5839b = scheduledExecutorService;
        this.f5840c = z;
        this.f5841d = applicationInfo;
    }

    @Override // com.google.android.gms.internal.ads.ko0
    public final qz0<cq0> a() {
        if (!this.f5840c) {
            return gz0.a((Throwable) new Exception("Auto Collect Location is false."));
        }
        return gz0.a(gz0.a(this.f5838a.a(this.f5841d), ((Long) mu1.e().a(aw1.Y1)).longValue(), TimeUnit.MILLISECONDS, this.f5839b), eq0.f6488a, yd.f10540a);
    }
}
