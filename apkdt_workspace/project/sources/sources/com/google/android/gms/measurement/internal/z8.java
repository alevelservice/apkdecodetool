package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.util.VisibleForTesting;
import java.lang.reflect.InvocationTargetException;

/* loaded from: classes.dex */
public final class z8 extends f5 {

    /* renamed from: b, reason: collision with root package name */
    private Boolean f13373b;

    /* renamed from: c, reason: collision with root package name */
    @NonNull
    private b9 f13374c;

    /* renamed from: d, reason: collision with root package name */
    private Boolean f13375d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public z8(j4 j4Var) {
        super(j4Var);
        this.f13374c = c9.f12813a;
        j.a(j4Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String r() {
        return j.f12997f.a(null);
    }

    @Nullable
    @VisibleForTesting
    private final Bundle s() {
        try {
            if (getContext().getPackageManager() == null) {
                zzab().q().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo a2 = com.google.android.gms.common.o.c.a(getContext()).a(getContext().getPackageName(), 128);
            if (a2 == null) {
                zzab().q().a("Failed to load metadata: ApplicationInfo is null");
                return null;
            }
            return a2.metaData;
        } catch (PackageManager.NameNotFoundException e2) {
            zzab().q().a("Failed to load metadata: Package name not found", e2);
            return null;
        }
    }

    public static long t() {
        return j.I.a(null).longValue();
    }

    public static long u() {
        return j.f13000i.a(null).longValue();
    }

    public static boolean v() {
        return j.f12996e.a(null).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public static boolean w() {
        return j.Y.a(null).booleanValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(@NonNull b9 b9Var) {
        this.f13374c = b9Var;
    }

    @WorkerThread
    public final int b(String str, @NonNull w2<Integer> w2Var) {
        if (str == null) {
            return w2Var.a(null).intValue();
        }
        String a2 = this.f13374c.a(str, w2Var.a());
        if (TextUtils.isEmpty(a2)) {
            return w2Var.a(null).intValue();
        }
        try {
            return w2Var.a(Integer.valueOf(Integer.parseInt(a2))).intValue();
        } catch (NumberFormatException unused) {
            return w2Var.a(null).intValue();
        }
    }

    @WorkerThread
    public final double c(String str, @NonNull w2<Double> w2Var) {
        if (str == null) {
            return w2Var.a(null).doubleValue();
        }
        String a2 = this.f13374c.a(str, w2Var.a());
        if (TextUtils.isEmpty(a2)) {
            return w2Var.a(null).doubleValue();
        }
        try {
            return w2Var.a(Double.valueOf(Double.parseDouble(a2))).doubleValue();
        } catch (NumberFormatException unused) {
            return w2Var.a(null).doubleValue();
        }
    }

    @WorkerThread
    public final boolean d(String str, @NonNull w2<Boolean> w2Var) {
        if (str == null) {
            return w2Var.a(null).booleanValue();
        }
        String a2 = this.f13374c.a(str, w2Var.a());
        if (TextUtils.isEmpty(a2)) {
            return w2Var.a(null).booleanValue();
        }
        return w2Var.a(Boolean.valueOf(Boolean.parseBoolean(a2))).booleanValue();
    }

    public final boolean e(String str, w2<Boolean> w2Var) {
        return d(str, w2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean f(String str) {
        return d(str, j.S);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean g(String str) {
        return d(str, j.M);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final String h(String str) {
        w2<String> w2Var = j.N;
        if (str == null) {
            return w2Var.a(null);
        }
        return w2Var.a(this.f13374c.a(str, w2Var.a()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean i(String str) {
        return d(str, j.T);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean j(String str) {
        return d(str, j.U);
    }

    public final long k() {
        zzae();
        return 16250L;
    }

    public final boolean l() {
        if (this.f13375d == null) {
            synchronized (this) {
                if (this.f13375d == null) {
                    ApplicationInfo applicationInfo = getContext().getApplicationInfo();
                    String a2 = com.google.android.gms.common.util.q.a();
                    if (applicationInfo != null) {
                        String str = applicationInfo.processName;
                        this.f13375d = Boolean.valueOf(str != null && str.equals(a2));
                    }
                    if (this.f13375d == null) {
                        this.f13375d = Boolean.TRUE;
                        zzab().q().a("My process not in the list of running processes");
                    }
                }
            }
        }
        return this.f13375d.booleanValue();
    }

    public final boolean m() {
        zzae();
        Boolean b2 = b("firebase_analytics_collection_deactivated");
        return b2 != null && b2.booleanValue();
    }

    public final Boolean n() {
        zzae();
        return b("firebase_analytics_collection_enabled");
    }

    public final Boolean o() {
        e();
        Boolean b2 = b("google_analytics_adid_collection_enabled");
        return Boolean.valueOf(b2 == null || b2.booleanValue());
    }

    public final String p() {
        try {
            return (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, "debug.firebase.analytics.app", "");
        } catch (ClassNotFoundException e2) {
            zzab().q().a("Could not find SystemProperties class", e2);
            return "";
        } catch (IllegalAccessException e3) {
            zzab().q().a("Could not access SystemProperties.get()", e3);
            return "";
        } catch (NoSuchMethodException e4) {
            zzab().q().a("Could not find SystemProperties.get() method", e4);
            return "";
        } catch (InvocationTargetException e5) {
            zzab().q().a("SystemProperties.get() threw an exception", e5);
            return "";
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean q() {
        if (this.f13373b == null) {
            this.f13373b = b("app_measurement_lite");
            if (this.f13373b == null) {
                this.f13373b = false;
            }
        }
        return this.f13373b.booleanValue() || !this.f12908a.n();
    }

    @WorkerThread
    public final int a(@Size(min = 1) String str) {
        return b(str, j.t);
    }

    public final boolean e(String str) {
        return "1".equals(this.f13374c.a(str, "measurement.event_sampling_enabled"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean k(String str) {
        return d(str, j.V);
    }

    @WorkerThread
    public final long a(String str, @NonNull w2<Long> w2Var) {
        if (str == null) {
            return w2Var.a(null).longValue();
        }
        String a2 = this.f13374c.a(str, w2Var.a());
        if (TextUtils.isEmpty(a2)) {
            return w2Var.a(null).longValue();
        }
        try {
            return w2Var.a(Long.valueOf(Long.parseLong(a2))).longValue();
        } catch (NumberFormatException unused) {
            return w2Var.a(null).longValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean n(String str) {
        return d(str, j.Z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean m(String str) {
        return d(str, j.W);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean o(String str) {
        return d(str, j.a0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean r(String str) {
        return d(str, j.h0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean q(String str) {
        return d(str, j.c0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean p(String str) {
        return d(str, j.b0);
    }

    public final boolean d(String str) {
        return "1".equals(this.f13374c.a(str, "gaia_collection_enabled"));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    @VisibleForTesting
    public final Boolean b(@Size(min = 1) String str) {
        com.google.android.gms.common.internal.m.b(str);
        Bundle s = s();
        if (s == null) {
            zzab().q().a("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (s.containsKey(str)) {
            return Boolean.valueOf(s.getBoolean(str));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:6:0x002a A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002b A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @androidx.annotation.Nullable
    @com.google.android.gms.common.util.VisibleForTesting
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.util.List<java.lang.String> c(@androidx.annotation.Size(min = 1) java.lang.String r4) {
        /*
            r3 = this;
            com.google.android.gms.common.internal.m.b(r4)
            android.os.Bundle r0 = r3.s()
            r1 = 0
            if (r0 != 0) goto L19
            com.google.android.gms.measurement.internal.f3 r4 = r3.zzab()
            com.google.android.gms.measurement.internal.h3 r4 = r4.q()
            java.lang.String r0 = "Failed to load metadata: Metadata bundle is null"
            r4.a(r0)
        L17:
            r4 = r1
            goto L28
        L19:
            boolean r2 = r0.containsKey(r4)
            if (r2 != 0) goto L20
            goto L17
        L20:
            int r4 = r0.getInt(r4)
            java.lang.Integer r4 = java.lang.Integer.valueOf(r4)
        L28:
            if (r4 != 0) goto L2b
            return r1
        L2b:
            android.content.Context r0 = r3.getContext()     // Catch: android.content.res.Resources.NotFoundException -> L43
            android.content.res.Resources r0 = r0.getResources()     // Catch: android.content.res.Resources.NotFoundException -> L43
            int r4 = r4.intValue()     // Catch: android.content.res.Resources.NotFoundException -> L43
            java.lang.String[] r4 = r0.getStringArray(r4)     // Catch: android.content.res.Resources.NotFoundException -> L43
            if (r4 != 0) goto L3e
            return r1
        L3e:
            java.util.List r4 = java.util.Arrays.asList(r4)     // Catch: android.content.res.Resources.NotFoundException -> L43
            return r4
        L43:
            r4 = move-exception
            com.google.android.gms.measurement.internal.f3 r0 = r3.zzab()
            com.google.android.gms.measurement.internal.h3 r0 = r0.q()
            java.lang.String r2 = "Failed to load string array from metadata: resource not found"
            r0.a(r2, r4)
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.measurement.internal.z8.c(java.lang.String):java.util.List");
    }

    public final boolean a(w2<Boolean> w2Var) {
        return d(null, w2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @WorkerThread
    public final boolean l(String str) {
        return d(str, j.X);
    }
}
