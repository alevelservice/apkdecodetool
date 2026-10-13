package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.os.Build;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.WorkerThread;
import com.google.android.gms.ads.l.a;
import com.google.android.gms.common.util.VisibleForTesting;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class o3 extends e5 {

    @VisibleForTesting
    static final Pair<String, Long> A = new Pair<>("", 0L);

    /* renamed from: c, reason: collision with root package name */
    private SharedPreferences f13112c;

    /* renamed from: d, reason: collision with root package name */
    public s3 f13113d;

    /* renamed from: e, reason: collision with root package name */
    public final t3 f13114e;

    /* renamed from: f, reason: collision with root package name */
    public final t3 f13115f;

    /* renamed from: g, reason: collision with root package name */
    public final t3 f13116g;

    /* renamed from: h, reason: collision with root package name */
    public final t3 f13117h;

    /* renamed from: i, reason: collision with root package name */
    public final t3 f13118i;

    /* renamed from: j, reason: collision with root package name */
    public final t3 f13119j;

    /* renamed from: k, reason: collision with root package name */
    public final t3 f13120k;

    /* renamed from: l, reason: collision with root package name */
    public final v3 f13121l;
    private String m;
    private boolean n;
    private long o;
    public final t3 p;
    public final t3 q;
    public final q3 r;
    public final v3 s;
    public final q3 t;
    public final q3 u;
    public final t3 v;
    public final t3 w;
    public boolean x;
    public q3 y;
    public t3 z;

    /* JADX INFO: Access modifiers changed from: package-private */
    public o3(j4 j4Var) {
        super(j4Var);
        this.f13114e = new t3(this, "last_upload", 0L);
        this.f13115f = new t3(this, "last_upload_attempt", 0L);
        this.f13116g = new t3(this, "backoff", 0L);
        this.f13117h = new t3(this, "last_delete_stale", 0L);
        this.p = new t3(this, "time_before_start", 10000L);
        this.q = new t3(this, "session_timeout", 1800000L);
        this.r = new q3(this, "start_new_session", true);
        this.v = new t3(this, "last_pause_time", 0L);
        this.w = new t3(this, "time_active", 0L);
        this.s = new v3(this, "non_personalized_ads", null);
        this.t = new q3(this, "use_dynamite_api", false);
        this.u = new q3(this, "allow_remote_dynamite", false);
        this.f13118i = new t3(this, "midnight_offset", 0L);
        this.f13119j = new t3(this, "first_open_time", 0L);
        this.f13120k = new t3(this, "app_install_time", 0L);
        this.f13121l = new v3(this, "app_instance_id", null);
        this.y = new q3(this, "app_backgrounded", false);
        this.z = new t3(this, "deep_link_last_retrieved", -1L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final SharedPreferences y() {
        g();
        m();
        return this.f13112c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    @WorkerThread
    public final Pair<String, Boolean> a(String str) {
        g();
        long c2 = a().c();
        String str2 = this.m;
        if (str2 != null && c2 < this.o) {
            return new Pair<>(str2, Boolean.valueOf(this.n));
        }
        this.o = c2 + d().a(str, j.f12998g);
        com.google.android.gms.ads.l.a.a(true);
        try {
            a.C0077a a2 = com.google.android.gms.ads.l.a.a(getContext());
            if (a2 != null) {
                this.m = a2.a();
                this.n = a2.b();
            }
            if (this.m == null) {
                this.m = "";
            }
        } catch (Exception e2) {
            zzab().x().a("Unable to get advertising id", e2);
            this.m = "";
        }
        com.google.android.gms.ads.l.a.a(false);
        return new Pair<>(this.m, Boolean.valueOf(this.n));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final String b(String str) {
        g();
        String str2 = (String) a(str).first;
        MessageDigest u = r8.u();
        if (u == null) {
            return null;
        }
        return String.format(Locale.US, "%032X", new BigInteger(1, u.digest(str2.getBytes())));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void c(String str) {
        g();
        SharedPreferences.Editor edit = y().edit();
        edit.putString("gmp_app_id", str);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void d(String str) {
        g();
        SharedPreferences.Editor edit = y().edit();
        edit.putString("admob_app_id", str);
        edit.apply();
    }

    @Override // com.google.android.gms.measurement.internal.e5
    protected final boolean o() {
        return true;
    }

    @Override // com.google.android.gms.measurement.internal.e5
    @WorkerThread
    protected final void p() {
        this.f13112c = getContext().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.x = this.f13112c.getBoolean("has_been_opened", false);
        if (!this.x) {
            SharedPreferences.Editor edit = this.f13112c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        this.f13113d = new s3(this, "health_monitor", Math.max(0L, j.f12999h.a(null).longValue()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final String q() {
        g();
        return y().getString("gmp_app_id", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final String r() {
        g();
        return y().getString("admob_app_id", null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final Boolean s() {
        g();
        if (y().contains("use_service")) {
            return Boolean.valueOf(y().getBoolean("use_service", false));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void t() {
        g();
        zzab().y().a("Clearing collection preferences.");
        if (d().a(j.l0)) {
            Boolean u = u();
            SharedPreferences.Editor edit = y().edit();
            edit.clear();
            edit.apply();
            if (u != null) {
                a(u.booleanValue());
                return;
            }
            return;
        }
        boolean contains = y().contains("measurement_enabled");
        boolean c2 = contains ? c(true) : true;
        SharedPreferences.Editor edit2 = y().edit();
        edit2.clear();
        edit2.apply();
        if (contains) {
            a(c2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final Boolean u() {
        g();
        if (y().contains("measurement_enabled")) {
            return Boolean.valueOf(y().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @WorkerThread
    public final String v() {
        g();
        String string = y().getString("previous_os_version", null);
        h().m();
        String str = Build.VERSION.RELEASE;
        if (!TextUtils.isEmpty(str) && !str.equals(string)) {
            SharedPreferences.Editor edit = y().edit();
            edit.putString("previous_os_version", str);
            edit.apply();
        }
        return string;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean w() {
        g();
        return y().getBoolean("deferred_analytics_collection", false);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean x() {
        return this.f13112c.contains("deferred_analytics_collection");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void b(boolean z) {
        g();
        zzab().y().a("Setting useService", Boolean.valueOf(z));
        SharedPreferences.Editor edit = y().edit();
        edit.putBoolean("use_service", z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean c(boolean z) {
        g();
        return y().getBoolean("measurement_enabled", z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void d(boolean z) {
        g();
        zzab().y().a("Updating deferred analytics collection", Boolean.valueOf(z));
        SharedPreferences.Editor edit = y().edit();
        edit.putBoolean("deferred_analytics_collection", z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final void a(boolean z) {
        g();
        zzab().y().a("Setting measurementEnabled", Boolean.valueOf(z));
        SharedPreferences.Editor edit = y().edit();
        edit.putBoolean("measurement_enabled", z);
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean a(long j2) {
        return j2 - this.q.a() > this.v.a();
    }
}
