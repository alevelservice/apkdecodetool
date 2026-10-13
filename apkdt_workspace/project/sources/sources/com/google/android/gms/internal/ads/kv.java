package com.google.android.gms.internal.ads;

import androidx.annotation.Nullable;
import java.util.Collections;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kv extends cw<ov> {

    /* renamed from: f */
    private final ScheduledExecutorService f7759f;

    /* renamed from: g */
    private final com.google.android.gms.common.util.e f7760g;

    /* renamed from: h */
    @GuardedBy("this")
    private long f7761h;

    /* renamed from: i */
    @GuardedBy("this")
    private long f7762i;

    /* renamed from: j */
    @GuardedBy("this")
    private boolean f7763j;

    /* renamed from: k */
    @Nullable
    @GuardedBy("this")
    private ScheduledFuture<?> f7764k;

    public kv(ScheduledExecutorService scheduledExecutorService, com.google.android.gms.common.util.e eVar) {
        super(Collections.emptySet());
        this.f7761h = -1L;
        this.f7762i = -1L;
        this.f7763j = false;
        this.f7759f = scheduledExecutorService;
        this.f7760g = eVar;
    }

    public final void h() {
        a(nv.f8439a);
    }

    public final synchronized void a(int i2) {
        if (i2 <= 0) {
            return;
        }
        long millis = TimeUnit.SECONDS.toMillis(i2);
        if (!this.f7763j) {
            if (this.f7760g.c() > this.f7761h || this.f7761h - this.f7760g.c() > millis) {
                a(millis);
            }
        } else {
            if (this.f7762i <= 0 || millis >= this.f7762i) {
                millis = this.f7762i;
            }
            this.f7762i = millis;
        }
    }

    public final synchronized void g() {
        this.f7763j = false;
        a(0L);
    }

    public final synchronized void onPause() {
        if (!this.f7763j) {
            if (this.f7764k != null && !this.f7764k.isCancelled()) {
                this.f7764k.cancel(true);
                this.f7762i = this.f7761h - this.f7760g.c();
            } else {
                this.f7762i = -1L;
            }
            this.f7763j = true;
        }
    }

    public final synchronized void onResume() {
        if (this.f7763j) {
            if (this.f7762i > 0 && this.f7764k.isCancelled()) {
                a(this.f7762i);
            }
            this.f7763j = false;
        }
    }

    private final synchronized void a(long j2) {
        if (this.f7764k != null && !this.f7764k.isDone()) {
            this.f7764k.cancel(true);
        }
        this.f7761h = this.f7760g.c() + j2;
        this.f7764k = this.f7759f.schedule(new pv(this), j2, TimeUnit.MILLISECONDS);
    }
}
