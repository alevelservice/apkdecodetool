package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;

/* loaded from: classes.dex */
public final class v7 extends z4 {

    /* renamed from: c, reason: collision with root package name */
    private Handler f13285c;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    private long f13286d;

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private long f13287e;

    /* renamed from: f, reason: collision with root package name */
    private final b f13288f;

    /* renamed from: g, reason: collision with root package name */
    private final b f13289g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v7(j4 j4Var) {
        super(j4Var);
        this.f13288f = new y7(this, this.f12908a);
        this.f13289g = new x7(this, this.f12908a);
        this.f13286d = a().c();
        this.f13287e = this.f13286d;
    }

    private final void B() {
        synchronized (this) {
            if (this.f13285c == null) {
                this.f13285c = new com.google.android.gms.internal.measurement.b6(Looper.getMainLooper());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void C() {
        g();
        a(false, false);
        l().a(a().c());
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void a(long j2) {
        g();
        B();
        if (d().e(n().z(), j.d0)) {
            c().y.a(false);
        }
        zzab().y().a("Activity resumed, time", Long.valueOf(j2));
        this.f13286d = j2;
        this.f13287e = this.f13286d;
        if (this.f12908a.c()) {
            if (d().p(n().z())) {
                a(a().a(), false);
                return;
            }
            this.f13288f.a();
            this.f13289g.a();
            if (c().a(a().a())) {
                c().r.a(true);
                c().w.a(0L);
            }
            if (c().r.a()) {
                this.f13288f.a(Math.max(0L, c().p.a() - c().w.a()));
            } else {
                this.f13289g.a(Math.max(0L, 3600000 - c().w.a()));
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void b(long j2) {
        g();
        B();
        if (d().e(n().z(), j.d0)) {
            c().y.a(true);
        }
        this.f13288f.a();
        this.f13289g.a();
        zzab().y().a("Activity paused, time", Long.valueOf(j2));
        if (this.f13286d != 0) {
            c().w.a(c().w.a() + (j2 - this.f13286d));
        }
    }

    @WorkerThread
    private final void c(long j2) {
        g();
        zzab().y().a("Session started, time", Long.valueOf(a().c()));
        Long valueOf = d().n(n().z()) ? Long.valueOf(j2 / 1000) : null;
        m().a("auto", "_sid", valueOf, j2);
        c().r.a(false);
        Bundle bundle = new Bundle();
        if (d().n(n().z())) {
            bundle.putLong("_sid", valueOf.longValue());
        }
        m().a("auto", "_s", j2, bundle);
        c().v.a(j2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @VisibleForTesting
    @WorkerThread
    public final long A() {
        long c2 = a().c();
        long j2 = c2 - this.f13287e;
        this.f13287e = c2;
        return j2;
    }

    @Override // com.google.android.gms.measurement.internal.z4
    protected final boolean w() {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void y() {
        g();
        this.f13288f.a();
        this.f13289g.a();
        this.f13286d = 0L;
        this.f13287e = this.f13286d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @VisibleForTesting
    @WorkerThread
    public final void z() {
        g();
        c(a().a());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(long j2, boolean z) {
        g();
        B();
        this.f13288f.a();
        this.f13289g.a();
        if (c().a(j2)) {
            c().r.a(true);
            c().w.a(0L);
        }
        if (z && d().q(n().z())) {
            c().v.a(j2);
        }
        if (c().r.a()) {
            c(j2);
        } else {
            this.f13289g.a(Math.max(0L, 3600000 - c().w.a()));
        }
    }

    @WorkerThread
    public final boolean a(boolean z, boolean z2) {
        g();
        u();
        long c2 = a().c();
        c().v.a(a().a());
        long j2 = c2 - this.f13286d;
        if (!z && j2 < 1000) {
            zzab().y().a("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j2));
            return false;
        }
        c().w.a(j2);
        zzab().y().a("Recording user engagement, ms", Long.valueOf(j2));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j2);
        p6.a(p().y(), bundle, true);
        if (d().r(n().z())) {
            if (d().e(n().z(), j.i0)) {
                if (!z2) {
                    A();
                }
            } else if (z2) {
                bundle.putLong("_fr", 1L);
            } else {
                A();
            }
        }
        if (!d().e(n().z(), j.i0) || !z2) {
            m().b("auto", "_e", bundle);
        }
        this.f13286d = c2;
        this.f13289g.a();
        this.f13289g.a(Math.max(0L, 3600000 - c().w.a()));
        return true;
    }
}
