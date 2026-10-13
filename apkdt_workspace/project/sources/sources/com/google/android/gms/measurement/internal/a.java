package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.WorkerThread;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public final class a extends b2 {

    /* renamed from: b, reason: collision with root package name */
    private final Map<String, Long> f12739b;

    /* renamed from: c, reason: collision with root package name */
    private final Map<String, Integer> f12740c;

    /* renamed from: d, reason: collision with root package name */
    private long f12741d;

    public a(j4 j4Var) {
        super(j4Var);
        this.f12740c = new a.e.a();
        this.f12739b = new a.e.a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void c(String str, long j2) {
        e();
        g();
        com.google.android.gms.common.internal.m.b(str);
        if (this.f12740c.isEmpty()) {
            this.f12741d = j2;
        }
        Integer num = this.f12740c.get(str);
        if (num != null) {
            this.f12740c.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (this.f12740c.size() >= 100) {
            zzab().t().a("Too many ads visible");
        } else {
            this.f12740c.put(str, 1);
            this.f12739b.put(str, Long.valueOf(j2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void d(String str, long j2) {
        e();
        g();
        com.google.android.gms.common.internal.m.b(str);
        Integer num = this.f12740c.get(str);
        if (num != null) {
            q6 y = p().y();
            int intValue = num.intValue() - 1;
            if (intValue == 0) {
                this.f12740c.remove(str);
                Long l2 = this.f12739b.get(str);
                if (l2 == null) {
                    zzab().q().a("First ad unit exposure time was never set");
                } else {
                    long longValue = j2 - l2.longValue();
                    this.f12739b.remove(str);
                    a(str, longValue, y);
                }
                if (this.f12740c.isEmpty()) {
                    long j3 = this.f12741d;
                    if (j3 == 0) {
                        zzab().q().a("First ad exposure time was never set");
                        return;
                    } else {
                        a(j2 - j3, y);
                        this.f12741d = 0L;
                        return;
                    }
                }
                return;
            }
            this.f12740c.put(str, Integer.valueOf(intValue));
            return;
        }
        zzab().q().a("Call to endAdUnitExposure for unknown ad unit id", str);
    }

    public final void a(String str, long j2) {
        if (str != null && str.length() != 0) {
            b().a(new a1(this, str, j2));
        } else {
            zzab().q().a("Ad unit id must be a non-empty string");
        }
    }

    public final void b(String str, long j2) {
        if (str != null && str.length() != 0) {
            b().a(new z(this, str, j2));
        } else {
            zzab().q().a("Ad unit id must be a non-empty string");
        }
    }

    @WorkerThread
    private final void a(long j2, q6 q6Var) {
        if (q6Var == null) {
            zzab().y().a("Not logging ad exposure. No active activity");
            return;
        }
        if (j2 < 1000) {
            zzab().y().a("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j2));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j2);
        p6.a(q6Var, bundle, true);
        m().b("am", "_xa", bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void b(long j2) {
        Iterator<String> it = this.f12739b.keySet().iterator();
        while (it.hasNext()) {
            this.f12739b.put(it.next(), Long.valueOf(j2));
        }
        if (this.f12739b.isEmpty()) {
            return;
        }
        this.f12741d = j2;
    }

    @WorkerThread
    private final void a(String str, long j2, q6 q6Var) {
        if (q6Var == null) {
            zzab().y().a("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j2 < 1000) {
            zzab().y().a("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j2));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j2);
        p6.a(q6Var, bundle, true);
        m().b("am", "_xu", bundle);
    }

    @WorkerThread
    public final void a(long j2) {
        q6 y = p().y();
        for (String str : this.f12739b.keySet()) {
            a(str, j2 - this.f12739b.get(str).longValue(), y);
        }
        if (!this.f12739b.isEmpty()) {
            a(j2 - this.f12741d, y);
        }
        b(j2);
    }
}
