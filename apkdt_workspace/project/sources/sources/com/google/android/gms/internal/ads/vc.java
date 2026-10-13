package com.google.android.gms.internal.ads;

import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class vc {

    /* renamed from: a, reason: collision with root package name */
    private long f9892a;

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("lock")
    private long f9893b = Long.MIN_VALUE;

    /* renamed from: c, reason: collision with root package name */
    private final Object f9894c = new Object();

    public vc(long j2) {
        this.f9892a = j2;
    }

    public final boolean a() {
        synchronized (this.f9894c) {
            long c2 = com.google.android.gms.ads.internal.n.j().c();
            if (this.f9893b + this.f9892a > c2) {
                return false;
            }
            this.f9893b = c2;
            return true;
        }
    }

    public final void a(long j2) {
        synchronized (this.f9894c) {
            this.f9892a = j2;
        }
    }
}
