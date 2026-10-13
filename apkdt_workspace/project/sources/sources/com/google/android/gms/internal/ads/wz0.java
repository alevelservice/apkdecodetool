package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class wz0 extends xz0 implements tz0, ScheduledExecutorService {

    /* renamed from: f, reason: collision with root package name */
    private final ScheduledExecutorService f10239f;

    /* JADX INFO: Access modifiers changed from: package-private */
    public wz0(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        uw0.a(scheduledExecutorService);
        this.f10239f = scheduledExecutorService;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Callable callable, long j2, TimeUnit timeUnit) {
        f01 a2 = f01.a(callable);
        return new zz0(a2, this.f10239f.schedule(a2, j2, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleAtFixedRate(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        yz0 yz0Var = new yz0(runnable);
        return new zz0(yz0Var, this.f10239f.scheduleAtFixedRate(yz0Var, j2, j3, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture scheduleWithFixedDelay(Runnable runnable, long j2, long j3, TimeUnit timeUnit) {
        yz0 yz0Var = new yz0(runnable);
        return new zz0(yz0Var, this.f10239f.scheduleWithFixedDelay(yz0Var, j2, j3, timeUnit));
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public final /* synthetic */ ScheduledFuture schedule(Runnable runnable, long j2, TimeUnit timeUnit) {
        f01 a2 = f01.a(runnable, (Object) null);
        return new zz0(a2, this.f10239f.schedule(a2, j2, timeUnit));
    }
}
