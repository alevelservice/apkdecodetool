package com.google.android.gms.internal.ads;

import android.os.SystemClock;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ap1 implements ro1 {

    /* renamed from: a, reason: collision with root package name */
    private boolean f5639a;

    /* renamed from: b, reason: collision with root package name */
    private long f5640b;

    /* renamed from: c, reason: collision with root package name */
    private long f5641c;

    /* renamed from: d, reason: collision with root package name */
    private qh1 f5642d = qh1.f8911d;

    public final void a(long j2) {
        this.f5640b = j2;
        if (this.f5639a) {
            this.f5641c = SystemClock.elapsedRealtime();
        }
    }

    public final void b() {
        if (this.f5639a) {
            return;
        }
        this.f5641c = SystemClock.elapsedRealtime();
        this.f5639a = true;
    }

    @Override // com.google.android.gms.internal.ads.ro1
    public final qh1 c() {
        return this.f5642d;
    }

    public final void d() {
        if (this.f5639a) {
            a(a());
            this.f5639a = false;
        }
    }

    public final void a(ro1 ro1Var) {
        a(ro1Var.a());
        this.f5642d = ro1Var.c();
    }

    @Override // com.google.android.gms.internal.ads.ro1
    public final long a() {
        long a2;
        long j2 = this.f5640b;
        if (!this.f5639a) {
            return j2;
        }
        long elapsedRealtime = SystemClock.elapsedRealtime() - this.f5641c;
        qh1 qh1Var = this.f5642d;
        if (qh1Var.f8912a == 1.0f) {
            a2 = xg1.b(elapsedRealtime);
        } else {
            a2 = qh1Var.a(elapsedRealtime);
        }
        return j2 + a2;
    }

    @Override // com.google.android.gms.internal.ads.ro1
    public final qh1 a(qh1 qh1Var) {
        if (this.f5639a) {
            a(a());
        }
        this.f5642d = qh1Var;
        return qh1Var;
    }
}
