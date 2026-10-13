package com.google.android.datatransport.runtime.scheduling.jobscheduling;

import android.app.job.JobInfo;
import androidx.annotation.RequiresApi;
import com.google.android.datatransport.runtime.scheduling.jobscheduling.d;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/* compiled from: SchedulerConfig.java */
/* loaded from: classes.dex */
public abstract class g {

    /* compiled from: SchedulerConfig.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: a, reason: collision with root package name */
        private com.google.android.datatransport.runtime.time.a f4409a;

        /* renamed from: b, reason: collision with root package name */
        private Map<e.i.b.a.d, b> f4410b = new HashMap();

        public a a(com.google.android.datatransport.runtime.time.a aVar) {
            this.f4409a = aVar;
            return this;
        }

        public a a(e.i.b.a.d dVar, b bVar) {
            this.f4410b.put(dVar, bVar);
            return this;
        }

        public g a() {
            if (this.f4409a != null) {
                if (this.f4410b.keySet().size() >= e.i.b.a.d.values().length) {
                    Map<e.i.b.a.d, b> map = this.f4410b;
                    this.f4410b = new HashMap();
                    return g.a(this.f4409a, map);
                }
                throw new IllegalStateException("Not all priorities have been configured");
            }
            throw new NullPointerException("missing required property: clock");
        }
    }

    /* compiled from: SchedulerConfig.java */
    /* loaded from: classes.dex */
    public static abstract class b {

        /* compiled from: SchedulerConfig.java */
        /* loaded from: classes.dex */
        public static abstract class a {
            public abstract a a(long j2);

            public abstract a a(Set<c> set);

            public abstract b a();

            public abstract a b(long j2);
        }

        public static a d() {
            d.b bVar = new d.b();
            bVar.a(Collections.emptySet());
            return bVar;
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long a();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract Set<c> b();

        /* JADX INFO: Access modifiers changed from: package-private */
        public abstract long c();
    }

    /* compiled from: SchedulerConfig.java */
    /* loaded from: classes.dex */
    public enum c {
        NETWORK_UNMETERED,
        DEVICE_IDLE,
        DEVICE_CHARGING
    }

    public static g a(com.google.android.datatransport.runtime.time.a aVar) {
        a c2 = c();
        e.i.b.a.d dVar = e.i.b.a.d.DEFAULT;
        b.a d2 = b.d();
        d2.a(30000L);
        d2.b(86400000L);
        c2.a(dVar, d2.a());
        e.i.b.a.d dVar2 = e.i.b.a.d.HIGHEST;
        b.a d3 = b.d();
        d3.a(1000L);
        d3.b(86400000L);
        c2.a(dVar2, d3.a());
        e.i.b.a.d dVar3 = e.i.b.a.d.VERY_LOW;
        b.a d4 = b.d();
        d4.a(86400000L);
        d4.b(86400000L);
        d4.a(a(c.NETWORK_UNMETERED, c.DEVICE_IDLE));
        c2.a(dVar3, d4.a());
        c2.a(aVar);
        return c2.a();
    }

    public static a c() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract com.google.android.datatransport.runtime.time.a a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract Map<e.i.b.a.d, b> b();

    static g a(com.google.android.datatransport.runtime.time.a aVar, Map<e.i.b.a.d, b> map) {
        return new com.google.android.datatransport.runtime.scheduling.jobscheduling.c(aVar, map);
    }

    public long a(e.i.b.a.d dVar, long j2, int i2) {
        long a2 = j2 - a().a();
        b bVar = b().get(dVar);
        return Math.min(Math.max(a(i2, bVar.a()), a2), bVar.c());
    }

    private long a(int i2, long j2) {
        int i3 = i2 - 1;
        double max = Math.max(1.0d, Math.log(10000.0d) / Math.log((j2 > 1 ? j2 : 2L) * i3));
        double pow = Math.pow(3.0d, i3);
        double d2 = j2;
        Double.isNaN(d2);
        return (long) (pow * d2 * max);
    }

    @RequiresApi(api = 21)
    public JobInfo.Builder a(JobInfo.Builder builder, e.i.b.a.d dVar, long j2, int i2) {
        builder.setMinimumLatency(a(dVar, j2, i2));
        a(builder, b().get(dVar).b());
        return builder;
    }

    @RequiresApi(api = 21)
    private void a(JobInfo.Builder builder, Set<c> set) {
        if (set.contains(c.NETWORK_UNMETERED)) {
            builder.setRequiredNetworkType(2);
        } else {
            builder.setRequiredNetworkType(1);
        }
        if (set.contains(c.DEVICE_CHARGING)) {
            builder.setRequiresCharging(true);
        }
        if (set.contains(c.DEVICE_IDLE)) {
            builder.setRequiresDeviceIdle(true);
        }
    }

    private static <T> Set<T> a(T... tArr) {
        return Collections.unmodifiableSet(new HashSet(Arrays.asList(tArr)));
    }
}
