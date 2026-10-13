package com.google.android.gms.measurement.internal;

import android.os.Handler;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public abstract class b {

    /* renamed from: d, reason: collision with root package name */
    private static volatile Handler f12773d;

    /* renamed from: a, reason: collision with root package name */
    private final h5 f12774a;

    /* renamed from: b, reason: collision with root package name */
    private final Runnable f12775b;

    /* renamed from: c, reason: collision with root package name */
    private volatile long f12776c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(h5 h5Var) {
        com.google.android.gms.common.internal.m.a(h5Var);
        this.f12774a = h5Var;
        this.f12775b = new e(this, h5Var);
    }

    private final Handler d() {
        Handler handler;
        if (f12773d != null) {
            return f12773d;
        }
        synchronized (b.class) {
            if (f12773d == null) {
                f12773d = new com.google.android.gms.internal.measurement.b6(this.f12774a.getContext().getMainLooper());
            }
            handler = f12773d;
        }
        return handler;
    }

    public final void a(long j2) {
        a();
        if (j2 >= 0) {
            this.f12776c = this.f12774a.a().a();
            if (d().postDelayed(this.f12775b, j2)) {
                return;
            }
            this.f12774a.zzab().q().a("Failed to schedule delayed post. time", Long.valueOf(j2));
        }
    }

    public abstract void b();

    public final boolean c() {
        return this.f12776c != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        this.f12776c = 0L;
        d().removeCallbacks(this.f12775b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ long a(b bVar, long j2) {
        bVar.f12776c = 0L;
        return 0L;
    }
}
