package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class a01<V> extends dz0<V> {

    /* renamed from: l, reason: collision with root package name */
    @NullableDecl
    private qz0<V> f5495l;

    @NullableDecl
    private ScheduledFuture<?> m;

    private a01(qz0<V> qz0Var) {
        uw0.a(qz0Var);
        this.f5495l = qz0Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> qz0<V> a(qz0<V> qz0Var, long j2, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        a01 a01Var = new a01(qz0Var);
        c01 c01Var = new c01(a01Var);
        a01Var.m = scheduledExecutorService.schedule(c01Var, j2, timeUnit);
        qz0Var.a(c01Var, xy0.INSTANCE);
        return a01Var;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final void b() {
        a((Future<?>) this.f5495l);
        ScheduledFuture<?> scheduledFuture = this.m;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f5495l = null;
        this.m = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.fy0
    public final String c() {
        qz0<V> qz0Var = this.f5495l;
        ScheduledFuture<?> scheduledFuture = this.m;
        if (qz0Var == null) {
            return null;
        }
        String valueOf = String.valueOf(qz0Var);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
        sb.append("inputFuture=[");
        sb.append(valueOf);
        sb.append("]");
        String sb2 = sb.toString();
        if (scheduledFuture == null) {
            return sb2;
        }
        long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
        if (delay <= 0) {
            return sb2;
        }
        String valueOf2 = String.valueOf(sb2);
        StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 43);
        sb3.append(valueOf2);
        sb3.append(", remaining delay=[");
        sb3.append(delay);
        sb3.append(" ms]");
        return sb3.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ ScheduledFuture a(a01 a01Var, ScheduledFuture scheduledFuture) {
        a01Var.m = null;
        return null;
    }
}
