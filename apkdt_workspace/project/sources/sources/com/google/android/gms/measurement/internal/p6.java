package com.google.android.gms.measurement.internal;

import android.app.Activity;
import android.os.Bundle;
import androidx.annotation.MainThread;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Map;

/* loaded from: classes.dex */
public final class p6 extends z4 {

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    protected q6 f13150c;

    /* renamed from: d, reason: collision with root package name */
    private volatile q6 f13151d;

    /* renamed from: e, reason: collision with root package name */
    private q6 f13152e;

    /* renamed from: f, reason: collision with root package name */
    private final Map<Activity, q6> f13153f;

    /* renamed from: g, reason: collision with root package name */
    private String f13154g;

    public p6(j4 j4Var) {
        super(j4Var);
        this.f13153f = new a.e.a();
    }

    @MainThread
    private final q6 d(@NonNull Activity activity) {
        com.google.android.gms.common.internal.m.a(activity);
        q6 q6Var = this.f13153f.get(activity);
        if (q6Var != null) {
            return q6Var;
        }
        q6 q6Var2 = new q6(null, a(activity.getClass().getCanonicalName()), j().q());
        this.f13153f.put(activity, q6Var2);
        return q6Var2;
    }

    public final void a(@NonNull Activity activity, @Nullable @Size(max = 36, min = 1) String str, @Nullable @Size(max = 36, min = 1) String str2) {
        if (this.f13151d == null) {
            zzab().v().a("setCurrentScreen cannot be called while no activity active");
            return;
        }
        if (this.f13153f.get(activity) == null) {
            zzab().v().a("setCurrentScreen must be called with an activity in the activity lifecycle");
            return;
        }
        if (str2 == null) {
            str2 = a(activity.getClass().getCanonicalName());
        }
        boolean equals = this.f13151d.f13173b.equals(str2);
        boolean e2 = r8.e(this.f13151d.f13172a, str);
        if (equals && e2) {
            zzab().v().a("setCurrentScreen cannot be called with the same class and name");
            return;
        }
        if (str != null && (str.length() <= 0 || str.length() > 100)) {
            zzab().v().a("Invalid screen name length in setCurrentScreen. Length", Integer.valueOf(str.length()));
            return;
        }
        if (str2 != null && (str2.length() <= 0 || str2.length() > 100)) {
            zzab().v().a("Invalid class name length in setCurrentScreen. Length", Integer.valueOf(str2.length()));
            return;
        }
        zzab().y().a("Setting current screen to name, class", str == null ? "null" : str, str2);
        q6 q6Var = new q6(str, str2, j().q());
        this.f13153f.put(activity, q6Var);
        a(activity, q6Var, true);
    }

    @MainThread
    public final void b(Activity activity) {
        q6 d2 = d(activity);
        this.f13152e = this.f13151d;
        this.f13151d = null;
        b().a(new r6(this, d2));
    }

    @MainThread
    public final void c(Activity activity) {
        a(activity, d(activity), false);
        a l2 = l();
        l2.b().a(new z2(l2, l2.a().c()));
    }

    @Override // com.google.android.gms.measurement.internal.z4
    protected final boolean w() {
        return false;
    }

    @WorkerThread
    public final q6 y() {
        u();
        g();
        return this.f13150c;
    }

    public final q6 z() {
        e();
        return this.f13151d;
    }

    @MainThread
    public final void b(Activity activity, Bundle bundle) {
        q6 q6Var;
        if (bundle == null || (q6Var = this.f13153f.get(activity)) == null) {
            return;
        }
        Bundle bundle2 = new Bundle();
        bundle2.putLong("id", q6Var.f13174c);
        bundle2.putString("name", q6Var.f13172a);
        bundle2.putString("referrer_name", q6Var.f13173b);
        bundle.putBundle("com.google.app_measurement.screen_service", bundle2);
    }

    @MainThread
    private final void a(Activity activity, q6 q6Var, boolean z) {
        q6 q6Var2 = this.f13151d == null ? this.f13152e : this.f13151d;
        if (q6Var.f13173b == null) {
            q6Var = new q6(q6Var.f13172a, a(activity.getClass().getCanonicalName()), q6Var.f13174c);
        }
        this.f13152e = this.f13151d;
        this.f13151d = q6Var;
        b().a(new s6(this, z, q6Var2, q6Var));
    }

    /* JADX INFO: Access modifiers changed from: private */
    @WorkerThread
    public final void a(@NonNull q6 q6Var, boolean z) {
        l().a(a().c());
        if (r().a(q6Var.f13175d, z)) {
            q6Var.f13175d = false;
        }
    }

    public static void a(q6 q6Var, Bundle bundle, boolean z) {
        if (bundle != null && q6Var != null && (!bundle.containsKey("_sc") || z)) {
            String str = q6Var.f13172a;
            if (str != null) {
                bundle.putString("_sn", str);
            } else {
                bundle.remove("_sn");
            }
            bundle.putString("_sc", q6Var.f13173b);
            bundle.putLong("_si", q6Var.f13174c);
            return;
        }
        if (bundle != null && q6Var == null && z) {
            bundle.remove("_sn");
            bundle.remove("_sc");
            bundle.remove("_si");
        }
    }

    @WorkerThread
    public final void a(String str, q6 q6Var) {
        g();
        synchronized (this) {
            if (this.f13154g == null || this.f13154g.equals(str) || q6Var != null) {
                this.f13154g = str;
            }
        }
    }

    @VisibleForTesting
    private static String a(String str) {
        String[] split = str.split("\\.");
        String str2 = split.length > 0 ? split[split.length - 1] : "";
        return str2.length() > 100 ? str2.substring(0, 100) : str2;
    }

    @MainThread
    public final void a(Activity activity, Bundle bundle) {
        Bundle bundle2;
        if (bundle == null || (bundle2 = bundle.getBundle("com.google.app_measurement.screen_service")) == null) {
            return;
        }
        this.f13153f.put(activity, new q6(bundle2.getString("name"), bundle2.getString("referrer_name"), bundle2.getLong("id")));
    }

    @MainThread
    public final void a(Activity activity) {
        this.f13153f.remove(activity);
    }
}
