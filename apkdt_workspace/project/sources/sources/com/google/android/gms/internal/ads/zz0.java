package com.google.android.gms.internal.ads;

import java.util.concurrent.Delayed;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zz0<V> extends ez0<V> implements qz0<V>, ScheduledFuture<V> {

    /* renamed from: f, reason: collision with root package name */
    private final ScheduledFuture<?> f10876f;

    public zz0(qz0<V> qz0Var, ScheduledFuture<?> scheduledFuture) {
        super(qz0Var);
        this.f10876f = scheduledFuture;
    }

    @Override // com.google.android.gms.internal.ads.bz0, java.util.concurrent.Future
    public final boolean cancel(boolean z) {
        boolean cancel = super.cancel(z);
        if (cancel) {
            this.f10876f.cancel(z);
        }
        return cancel;
    }

    @Override // java.lang.Comparable
    public final /* synthetic */ int compareTo(Delayed delayed) {
        return this.f10876f.compareTo(delayed);
    }

    @Override // java.util.concurrent.Delayed
    public final long getDelay(TimeUnit timeUnit) {
        return this.f10876f.getDelay(timeUnit);
    }
}
