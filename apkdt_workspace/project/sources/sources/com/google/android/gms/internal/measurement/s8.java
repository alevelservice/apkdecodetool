package com.google.android.gms.internal.measurement;

/* loaded from: classes.dex */
public final class s8 implements t8 {
    private static final p1<Long> A;
    private static final p1<Long> B;
    private static final p1<Long> C;
    private static final p1<Long> D;
    private static final p1<Long> E;
    private static final p1<Long> F;
    private static final p1<Long> G;
    private static final p1<Long> H;
    private static final p1<String> I;
    private static final p1<Long> J;

    /* renamed from: a, reason: collision with root package name */
    private static final p1<Long> f12090a;

    /* renamed from: b, reason: collision with root package name */
    private static final p1<Long> f12091b;

    /* renamed from: c, reason: collision with root package name */
    private static final p1<String> f12092c;

    /* renamed from: d, reason: collision with root package name */
    private static final p1<String> f12093d;

    /* renamed from: e, reason: collision with root package name */
    private static final p1<String> f12094e;

    /* renamed from: f, reason: collision with root package name */
    private static final p1<Long> f12095f;

    /* renamed from: g, reason: collision with root package name */
    private static final p1<Long> f12096g;

    /* renamed from: h, reason: collision with root package name */
    private static final p1<Long> f12097h;

    /* renamed from: i, reason: collision with root package name */
    private static final p1<Long> f12098i;

    /* renamed from: j, reason: collision with root package name */
    private static final p1<Long> f12099j;

    /* renamed from: k, reason: collision with root package name */
    private static final p1<Long> f12100k;

    /* renamed from: l, reason: collision with root package name */
    private static final p1<Long> f12101l;
    private static final p1<Long> m;
    private static final p1<Long> n;
    private static final p1<Long> o;
    private static final p1<Long> p;
    private static final p1<Long> q;
    private static final p1<String> r;
    private static final p1<Long> s;
    private static final p1<Long> t;
    private static final p1<Long> u;
    private static final p1<Long> v;
    private static final p1<Long> w;
    private static final p1<Long> x;
    private static final p1<Long> y;
    private static final p1<Long> z;

    static {
        w1 w1Var = new w1(q1.a("com.google.android.gms.measurement"));
        f12090a = w1Var.a("measurement.ad_id_cache_time", 10000L);
        f12091b = w1Var.a("measurement.config.cache_time", 3600000L);
        f12092c = w1Var.a("measurement.log_tag", "FA");
        f12093d = w1Var.a("measurement.config.url_authority", "app-measurement.com");
        f12094e = w1Var.a("measurement.config.url_scheme", "https");
        f12095f = w1Var.a("measurement.upload.debug_upload_interval", 1000L);
        f12096g = w1Var.a("measurement.lifetimevalue.max_currency_tracked", 4L);
        f12097h = w1Var.a("measurement.store.max_stored_events_per_app", 100000L);
        f12098i = w1Var.a("measurement.experiment.max_ids", 50L);
        f12099j = w1Var.a("measurement.audience.filter_result_max_count", 200L);
        f12100k = w1Var.a("measurement.alarm_manager.minimum_interval", 60000L);
        f12101l = w1Var.a("measurement.upload.minimum_delay", 500L);
        m = w1Var.a("measurement.monitoring.sample_period_millis", 86400000L);
        n = w1Var.a("measurement.upload.realtime_upload_interval", 10000L);
        o = w1Var.a("measurement.upload.refresh_blacklisted_config_interval", 604800000L);
        p = w1Var.a("measurement.config.cache_time.service", 86400000L);
        q = w1Var.a("measurement.service_client.idle_disconnect_millis", 5000L);
        r = w1Var.a("measurement.log_tag.service", "FA-SVC");
        s = w1Var.a("measurement.upload.stale_data_deletion_interval", 86400000L);
        t = w1Var.a("measurement.upload.backoff_period", 43200000L);
        u = w1Var.a("measurement.upload.initial_upload_delay_time", 15000L);
        v = w1Var.a("measurement.upload.interval", 3600000L);
        w = w1Var.a("measurement.upload.max_bundle_size", 65536L);
        x = w1Var.a("measurement.upload.max_bundles", 100L);
        y = w1Var.a("measurement.upload.max_conversions_per_day", 500L);
        z = w1Var.a("measurement.upload.max_error_events_per_day", 1000L);
        A = w1Var.a("measurement.upload.max_events_per_bundle", 1000L);
        B = w1Var.a("measurement.upload.max_events_per_day", 100000L);
        C = w1Var.a("measurement.upload.max_public_events_per_day", 50000L);
        D = w1Var.a("measurement.upload.max_queue_time", 2419200000L);
        E = w1Var.a("measurement.upload.max_realtime_events_per_day", 10L);
        F = w1Var.a("measurement.upload.max_batch_size", 65536L);
        G = w1Var.a("measurement.upload.retry_count", 6L);
        H = w1Var.a("measurement.upload.retry_time", 1800000L);
        I = w1Var.a("measurement.upload.url", "https://app-measurement.com/a");
        J = w1Var.a("measurement.upload.window_interval", 3600000L);
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long a() {
        return s.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long b() {
        return f12096g.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long c() {
        return B.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final String d() {
        return r.a();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long e() {
        return A.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long f() {
        return y.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long g() {
        return m.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long h() {
        return q.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long i() {
        return z.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long j() {
        return x.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long k() {
        return f12101l.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long l() {
        return p.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long m() {
        return w.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long n() {
        return f12100k.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long o() {
        return o.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long p() {
        return v.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long q() {
        return f12099j.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long r() {
        return n.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long s() {
        return u.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long t() {
        return f12098i.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long u() {
        return D.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long v() {
        return t.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long w() {
        return f12097h.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long x() {
        return C.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long zzxn() {
        return f12090a.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long zzxo() {
        return f12091b.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final String zzxp() {
        return f12092c.a();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final String zzxq() {
        return f12093d.a();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final String zzxr() {
        return f12094e.a();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long zzxs() {
        return f12095f.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long zzyr() {
        return E.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long zzys() {
        return F.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long zzyt() {
        return G.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long zzyu() {
        return H.a().longValue();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final String zzyv() {
        return I.a();
    }

    @Override // com.google.android.gms.internal.measurement.t8
    public final long zzyw() {
        return J.a().longValue();
    }
}
