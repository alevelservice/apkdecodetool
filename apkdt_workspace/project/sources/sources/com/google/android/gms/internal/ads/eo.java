package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class eo implements sq1 {

    /* renamed from: a, reason: collision with root package name */
    private final ScheduledExecutorService f6471a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f6472b;

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    @GuardedBy("this")
    private ScheduledFuture<?> f6473c;

    /* renamed from: d, reason: collision with root package name */
    @GuardedBy("this")
    private long f6474d = -1;

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private long f6475e = -1;

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("this")
    private Runnable f6476f = null;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private boolean f6477g = false;

    public eo(ScheduledExecutorService scheduledExecutorService, com.google.android.gms.common.util.e eVar) {
        this.f6471a = scheduledExecutorService;
        this.f6472b = eVar;
        com.google.android.gms.ads.internal.n.f().a(this);
    }

    @VisibleForTesting
    private final synchronized void b() {
        if (this.f6477g) {
            if (this.f6475e > 0 && this.f6473c != null && this.f6473c.isCancelled()) {
                this.f6473c = this.f6471a.schedule(this.f6476f, this.f6475e, TimeUnit.MILLISECONDS);
            }
            this.f6477g = false;
        }
    }

    @Override // com.google.android.gms.internal.ads.sq1
    public final void a(boolean z) {
        if (z) {
            b();
        } else {
            a();
        }
    }

    public final synchronized void a(int i2, Runnable runnable) {
        this.f6476f = runnable;
        long j2 = i2;
        this.f6474d = this.f6472b.c() + j2;
        this.f6473c = this.f6471a.schedule(runnable, j2, TimeUnit.MILLISECONDS);
    }

    @VisibleForTesting
    private final synchronized void a() {
        if (!this.f6477g) {
            if (this.f6473c != null && !this.f6473c.isDone()) {
                this.f6473c.cancel(true);
                this.f6475e = this.f6474d - this.f6472b.c();
            } else {
                this.f6475e = -1L;
            }
            this.f6477g = true;
        }
    }
}
