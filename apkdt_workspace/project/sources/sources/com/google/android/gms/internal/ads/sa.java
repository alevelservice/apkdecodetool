package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.os.Looper;
import android.security.NetworkSecurityPolicy;
import android.text.TextUtils;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import javax.annotation.concurrent.GuardedBy;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sa implements pa {

    /* renamed from: b, reason: collision with root package name */
    private boolean f9294b;

    /* renamed from: d, reason: collision with root package name */
    private qz0<?> f9296d;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private SharedPreferences f9298f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private SharedPreferences.Editor f9299g;

    /* renamed from: i, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private String f9301i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private String f9302j;

    /* renamed from: a, reason: collision with root package name */
    private final Object f9293a = new Object();

    /* renamed from: c, reason: collision with root package name */
    private final List<Runnable> f9295c = new ArrayList();

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    @GuardedBy("lock")
    private wq1 f9297e = null;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f9300h = true;

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("lock")
    private boolean f9303k = false;

    /* renamed from: l, reason: collision with root package name */
    @GuardedBy("lock")
    private String f9304l = "";

    @GuardedBy("lock")
    private long m = 0;

    @GuardedBy("lock")
    private long n = 0;

    @GuardedBy("lock")
    private long o = 0;

    @GuardedBy("lock")
    private int p = -1;

    @GuardedBy("lock")
    private int q = 0;

    @GuardedBy("lock")
    private Set<String> r = Collections.emptySet();

    @GuardedBy("lock")
    private JSONObject s = new JSONObject();

    @GuardedBy("lock")
    private boolean t = true;

    @GuardedBy("lock")
    private boolean u = true;

    @GuardedBy("lock")
    private String v = null;

    @GuardedBy("lock")
    private int w = -1;

    private final void o() {
        qz0<?> qz0Var = this.f9296d;
        if (qz0Var == null || qz0Var.isDone()) {
            return;
        }
        try {
            this.f9296d.get(1L, TimeUnit.SECONDS);
        } catch (InterruptedException e2) {
            Thread.currentThread().interrupt();
            qd.c("Interrupted while waiting for preferences loaded.", e2);
        } catch (CancellationException e3) {
            e = e3;
            qd.b("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (ExecutionException e4) {
            e = e4;
            qd.b("Fail to initialize AdSharedPreferenceManager.", e);
        } catch (TimeoutException e5) {
            e = e5;
            qd.b("Fail to initialize AdSharedPreferenceManager.", e);
        }
    }

    private final Bundle p() {
        Bundle bundle = new Bundle();
        bundle.putBoolean("listener_registration_bundle", true);
        synchronized (this.f9293a) {
            bundle.putBoolean("use_https", this.f9300h);
            bundle.putBoolean("content_url_opted_out", this.t);
            bundle.putBoolean("content_vertical_opted_out", this.u);
            bundle.putBoolean("auto_collect_location", this.f9303k);
            bundle.putInt("version_code", this.q);
            bundle.putStringArray("never_pool_slots", (String[]) this.r.toArray(new String[0]));
            bundle.putString("app_settings_json", this.f9304l);
            bundle.putLong("app_settings_last_update_ms", this.m);
            bundle.putLong("app_last_background_time_ms", this.n);
            bundle.putInt("request_in_session_count", this.p);
            bundle.putLong("first_ad_req_time_ms", this.o);
            bundle.putString("native_advanced_settings", this.s.toString());
            bundle.putString("display_cutout", this.v);
            bundle.putInt("app_measurement_npa", this.w);
            if (this.f9301i != null) {
                bundle.putString("content_url_hashes", this.f9301i);
            }
            if (this.f9302j != null) {
                bundle.putString("content_vertical_hashes", this.f9302j);
            }
        }
        return bundle;
    }

    public final void a(final Context context, String str, boolean z) {
        final String concat;
        synchronized (this.f9293a) {
            if (this.f9298f != null) {
                return;
            }
            if (str == null) {
                concat = "admob";
            } else {
                String valueOf = String.valueOf(str);
                concat = valueOf.length() != 0 ? "admob__".concat(valueOf) : new String("admob__");
            }
            this.f9296d = yd.f10540a.submit(new Runnable(this, context, concat) { // from class: com.google.android.gms.internal.ads.ra

                /* renamed from: e, reason: collision with root package name */
                private final sa f9064e;

                /* renamed from: f, reason: collision with root package name */
                private final Context f9065f;

                /* renamed from: g, reason: collision with root package name */
                private final String f9066g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f9064e = this;
                    this.f9065f = context;
                    this.f9066g = concat;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f9064e.a(this.f9065f, this.f9066g);
                }
            });
            this.f9294b = z;
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void b(boolean z) {
        o();
        synchronized (this.f9293a) {
            if (this.t == z) {
                return;
            }
            this.t = z;
            if (this.f9299g != null) {
                this.f9299g.putBoolean("content_url_opted_out", z);
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.t);
            bundle.putBoolean("content_vertical_opted_out", this.u);
            a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void c(boolean z) {
        o();
        synchronized (this.f9293a) {
            if (this.u == z) {
                return;
            }
            this.u = z;
            if (this.f9299g != null) {
                this.f9299g.putBoolean("content_vertical_opted_out", z);
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("content_url_opted_out", this.t);
            bundle.putBoolean("content_vertical_opted_out", this.u);
            a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    @Nullable
    public final wq1 d() {
        if (!this.f9294b || !com.google.android.gms.common.util.o.a()) {
            return null;
        }
        if (b() && m()) {
            return null;
        }
        if (!((Boolean) mu1.e().a(aw1.T)).booleanValue()) {
            return null;
        }
        synchronized (this.f9293a) {
            if (Looper.getMainLooper() == null) {
                return null;
            }
            if (this.f9297e == null) {
                this.f9297e = new wq1();
            }
            this.f9297e.b();
            qd.c("start fetching content...");
            return this.f9297e;
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final JSONObject e() {
        JSONObject jSONObject;
        o();
        synchronized (this.f9293a) {
            jSONObject = this.s;
        }
        return jSONObject;
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final long f() {
        long j2;
        o();
        synchronized (this.f9293a) {
            j2 = this.n;
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final long g() {
        long j2;
        o();
        synchronized (this.f9293a) {
            j2 = this.o;
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final y9 h() {
        y9 y9Var;
        o();
        synchronized (this.f9293a) {
            y9Var = new y9(this.f9304l, this.m);
        }
        return y9Var;
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final boolean i() {
        boolean z;
        o();
        synchronized (this.f9293a) {
            z = this.f9303k;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final int j() {
        int i2;
        o();
        synchronized (this.f9293a) {
            i2 = this.p;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final int k() {
        int i2;
        o();
        synchronized (this.f9293a) {
            i2 = this.q;
        }
        return i2;
    }

    @Override // com.google.android.gms.internal.ads.pa
    @Nullable
    public final String l() {
        String str;
        o();
        synchronized (this.f9293a) {
            str = this.f9302j;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final boolean m() {
        boolean z;
        o();
        synchronized (this.f9293a) {
            z = this.u;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.pa
    @Nullable
    public final String n() {
        String str;
        o();
        synchronized (this.f9293a) {
            str = this.f9301i;
        }
        return str;
    }

    private final void a(Bundle bundle) {
        yd.f10540a.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.ua

            /* renamed from: e, reason: collision with root package name */
            private final sa f9697e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9697e = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9697e.d();
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void a(boolean z) {
        o();
        synchronized (this.f9293a) {
            if (this.f9303k == z) {
                return;
            }
            this.f9303k = z;
            if (this.f9299g != null) {
                this.f9299g.putBoolean("auto_collect_location", z);
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putBoolean("auto_collect_location", z);
            a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final boolean b() {
        boolean z;
        o();
        synchronized (this.f9293a) {
            z = this.t;
        }
        return z;
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void c(@Nullable String str) {
        o();
        synchronized (this.f9293a) {
            if (str != null) {
                if (!str.equals(this.f9302j)) {
                    this.f9302j = str;
                    if (this.f9299g != null) {
                        this.f9299g.putString("content_vertical_hashes", str);
                        this.f9299g.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_vertical_hashes", str);
                    a(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void d(String str) {
        o();
        synchronized (this.f9293a) {
            long a2 = com.google.android.gms.ads.internal.n.j().a();
            this.m = a2;
            if (str != null && !str.equals(this.f9304l)) {
                this.f9304l = str;
                if (this.f9299g != null) {
                    this.f9299g.putString("app_settings_json", str);
                    this.f9299g.putLong("app_settings_last_update_ms", a2);
                    this.f9299g.apply();
                }
                Bundle bundle = new Bundle();
                bundle.putString("app_settings_json", str);
                bundle.putLong("app_settings_last_update_ms", a2);
                a(bundle);
                Iterator<Runnable> it = this.f9295c.iterator();
                while (it.hasNext()) {
                    it.next().run();
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void b(@Nullable String str) {
        o();
        synchronized (this.f9293a) {
            if (str != null) {
                if (!str.equals(this.f9301i)) {
                    this.f9301i = str;
                    if (this.f9299g != null) {
                        this.f9299g.putString("content_url_hashes", str);
                        this.f9299g.apply();
                    }
                    Bundle bundle = new Bundle();
                    bundle.putString("content_url_hashes", str);
                    a(bundle);
                }
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void a(int i2) {
        o();
        synchronized (this.f9293a) {
            if (this.q == i2) {
                return;
            }
            this.q = i2;
            if (this.f9299g != null) {
                this.f9299g.putInt("version_code", i2);
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("version_code", i2);
            a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void c() {
        o();
        synchronized (this.f9293a) {
            this.s = new JSONObject();
            if (this.f9299g != null) {
                this.f9299g.remove("native_advanced_settings");
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", "{}");
            a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void b(long j2) {
        o();
        synchronized (this.f9293a) {
            if (this.n == j2) {
                return;
            }
            this.n = j2;
            if (this.f9299g != null) {
                this.f9299g.putLong("app_last_background_time_ms", j2);
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("app_last_background_time_ms", j2);
            a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void a(Runnable runnable) {
        this.f9295c.add(runnable);
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void a(long j2) {
        o();
        synchronized (this.f9293a) {
            if (this.o == j2) {
                return;
            }
            this.o = j2;
            if (this.f9299g != null) {
                this.f9299g.putLong("first_ad_req_time_ms", j2);
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putLong("first_ad_req_time_ms", j2);
            a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void b(int i2) {
        o();
        synchronized (this.f9293a) {
            if (this.p == i2) {
                return;
            }
            this.p = i2;
            if (this.f9299g != null) {
                this.f9299g.putInt("request_in_session_count", i2);
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putInt("request_in_session_count", i2);
            a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void a(String str, String str2, boolean z) {
        o();
        synchronized (this.f9293a) {
            JSONArray optJSONArray = this.s.optJSONArray(str);
            if (optJSONArray == null) {
                optJSONArray = new JSONArray();
            }
            int length = optJSONArray.length();
            for (int i2 = 0; i2 < optJSONArray.length(); i2++) {
                JSONObject optJSONObject = optJSONArray.optJSONObject(i2);
                if (optJSONObject == null) {
                    return;
                }
                if (str2.equals(optJSONObject.optString("template_id"))) {
                    if (z && optJSONObject.optBoolean("uses_media_view", false)) {
                        return;
                    } else {
                        length = i2;
                    }
                }
            }
            try {
                JSONObject jSONObject = new JSONObject();
                jSONObject.put("template_id", str2);
                jSONObject.put("uses_media_view", z);
                jSONObject.put("timestamp_ms", com.google.android.gms.ads.internal.n.j().a());
                optJSONArray.put(length, jSONObject);
                this.s.put(str, optJSONArray);
            } catch (JSONException e2) {
                qd.c("Could not update native advanced settings", e2);
            }
            if (this.f9299g != null) {
                this.f9299g.putString("native_advanced_settings", this.s.toString());
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("native_advanced_settings", this.s.toString());
            a(bundle);
        }
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final String a() {
        String str;
        o();
        synchronized (this.f9293a) {
            str = this.v;
        }
        return str;
    }

    @Override // com.google.android.gms.internal.ads.pa
    public final void a(String str) {
        o();
        synchronized (this.f9293a) {
            if (TextUtils.equals(this.v, str)) {
                return;
            }
            this.v = str;
            if (this.f9299g != null) {
                this.f9299g.putString("display_cutout", str);
                this.f9299g.apply();
            }
            Bundle bundle = new Bundle();
            bundle.putString("display_cutout", str);
            a(bundle);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(Context context, String str) {
        SharedPreferences sharedPreferences = context.getSharedPreferences(str, 0);
        SharedPreferences.Editor edit = sharedPreferences.edit();
        synchronized (this.f9293a) {
            this.f9298f = sharedPreferences;
            this.f9299g = edit;
            if (com.google.android.gms.common.util.o.i()) {
                NetworkSecurityPolicy.getInstance().isCleartextTrafficPermitted();
            }
            this.f9300h = this.f9298f.getBoolean("use_https", this.f9300h);
            this.t = this.f9298f.getBoolean("content_url_opted_out", this.t);
            this.f9301i = this.f9298f.getString("content_url_hashes", this.f9301i);
            this.f9303k = this.f9298f.getBoolean("auto_collect_location", this.f9303k);
            this.u = this.f9298f.getBoolean("content_vertical_opted_out", this.u);
            this.f9302j = this.f9298f.getString("content_vertical_hashes", this.f9302j);
            this.q = this.f9298f.getInt("version_code", this.q);
            this.f9304l = this.f9298f.getString("app_settings_json", this.f9304l);
            this.m = this.f9298f.getLong("app_settings_last_update_ms", this.m);
            this.n = this.f9298f.getLong("app_last_background_time_ms", this.n);
            this.p = this.f9298f.getInt("request_in_session_count", this.p);
            this.o = this.f9298f.getLong("first_ad_req_time_ms", this.o);
            this.r = this.f9298f.getStringSet("never_pool_slots", this.r);
            this.v = this.f9298f.getString("display_cutout", this.v);
            this.w = this.f9298f.getInt("app_measurement_npa", this.w);
            try {
                this.s = new JSONObject(this.f9298f.getString("native_advanced_settings", "{}"));
            } catch (JSONException e2) {
                qd.c("Could not convert native advanced settings to json object", e2);
            }
            a(p());
        }
    }
}
