package com.google.android.gms.internal.measurement;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Pair;
import androidx.annotation.NonNull;
import androidx.annotation.Size;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.measurement.dynamite.ModuleDescriptor;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class zzz {

    /* renamed from: j, reason: collision with root package name */
    private static volatile zzz f12255j = null;

    /* renamed from: k, reason: collision with root package name */
    private static Boolean f12256k = null;

    /* renamed from: l, reason: collision with root package name */
    private static Boolean f12257l = null;

    @VisibleForTesting
    private static String m = "use_dynamite_api";

    @VisibleForTesting
    private static String n = "allow_remote_dynamite";

    /* renamed from: a, reason: collision with root package name */
    private final String f12258a;

    /* renamed from: b, reason: collision with root package name */
    protected final com.google.android.gms.common.util.e f12259b;

    /* renamed from: c, reason: collision with root package name */
    private final ExecutorService f12260c;

    /* renamed from: d, reason: collision with root package name */
    private final com.google.android.gms.measurement.a.a f12261d;

    /* renamed from: e, reason: collision with root package name */
    private List<Pair<com.google.android.gms.measurement.internal.n5, zzd>> f12262e;

    /* renamed from: f, reason: collision with root package name */
    private int f12263f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f12264g;

    /* renamed from: h, reason: collision with root package name */
    private String f12265h;

    /* renamed from: i, reason: collision with root package name */
    private zzk f12266i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public abstract class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final long f12267e;

        /* renamed from: f, reason: collision with root package name */
        final long f12268f;

        /* renamed from: g, reason: collision with root package name */
        private final boolean f12269g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(zzz zzzVar) {
            this(true);
        }

        abstract void a();

        protected void b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (zzz.this.f12264g) {
                b();
                return;
            }
            try {
                a();
            } catch (Exception e2) {
                zzz.this.a(e2, false, this.f12269g);
                b();
            }
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public a(boolean z) {
            this.f12267e = zzz.this.f12259b.a();
            this.f12268f = zzz.this.f12259b.c();
            this.f12269g = z;
        }
    }

    /* loaded from: classes.dex */
    class b implements Application.ActivityLifecycleCallbacks {
        b() {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
            zzz.this.a(new s(this, activity, bundle));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            zzz.this.a(new x(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            zzz.this.a(new t(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
            zzz.this.a(new u(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            zzl zzlVar = new zzl();
            zzz.this.a(new v(this, activity, zzlVar));
            Bundle zzb = zzlVar.zzb(50L);
            if (zzb != null) {
                bundle.putAll(zzb);
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            zzz.this.a(new r(this, activity));
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
            zzz.this.a(new w(this, activity));
        }
    }

    /* loaded from: classes.dex */
    static class zza extends zzt {

        /* renamed from: e, reason: collision with root package name */
        private final com.google.android.gms.measurement.internal.k5 f12272e;

        zza(com.google.android.gms.measurement.internal.k5 k5Var) {
            this.f12272e = k5Var;
        }

        @Override // com.google.android.gms.internal.measurement.zzq
        public final int id() {
            return System.identityHashCode(this.f12272e);
        }

        @Override // com.google.android.gms.internal.measurement.zzq
        public final void onEvent(String str, String str2, Bundle bundle, long j2) {
            this.f12272e.a(str, str2, bundle, j2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class zzd extends zzt {

        /* renamed from: e, reason: collision with root package name */
        private final com.google.android.gms.measurement.internal.n5 f12273e;

        zzd(com.google.android.gms.measurement.internal.n5 n5Var) {
            this.f12273e = n5Var;
        }

        @Override // com.google.android.gms.internal.measurement.zzq
        public final int id() {
            return System.identityHashCode(this.f12273e);
        }

        @Override // com.google.android.gms.internal.measurement.zzq
        public final void onEvent(String str, String str2, Bundle bundle, long j2) {
            this.f12273e.onEvent(str, str2, bundle, j2);
        }
    }

    private zzz(Context context, String str, String str2, String str3, Bundle bundle) {
        if (str != null && b(str2, str3)) {
            this.f12258a = str;
        } else {
            this.f12258a = "FA";
        }
        this.f12259b = com.google.android.gms.common.util.h.d();
        this.f12260c = new ThreadPoolExecutor(0, 1, 30L, TimeUnit.SECONDS, new LinkedBlockingQueue());
        this.f12261d = new com.google.android.gms.measurement.a.a(this);
        if (!(!b(context) || h())) {
            this.f12265h = null;
            this.f12264g = true;
            return;
        }
        if (!b(str2, str3)) {
            this.f12265h = "fa";
            if (str2 != null && str3 != null) {
                this.f12264g = true;
                return;
            }
            boolean z = (str2 == null) ^ (str3 == null);
        } else {
            this.f12265h = str2;
        }
        a(new sb(this, str2, str3, context, bundle));
        Application application = (Application) context.getApplicationContext();
        if (application == null) {
            return;
        }
        application.registerActivityLifecycleCallbacks(new b());
    }

    public static zzz a(@NonNull Context context) {
        return a(context, (String) null, (String) null, (String) null, (Bundle) null);
    }

    private static boolean b(Context context) {
        try {
            com.google.android.gms.common.api.internal.h.a(context);
        } catch (IllegalStateException unused) {
        }
        return com.google.android.gms.common.api.internal.h.a() != null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int c(Context context) {
        return DynamiteModule.b(context, ModuleDescriptor.MODULE_ID);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int d(Context context) {
        return DynamiteModule.a(context, ModuleDescriptor.MODULE_ID);
    }

    private static boolean h() {
        try {
            Class.forName("com.google.firebase.analytics.FirebaseAnalytics");
            return true;
        } catch (ClassNotFoundException unused) {
            return false;
        }
    }

    public final String e() {
        zzl zzlVar = new zzl();
        a(new f(this, zzlVar));
        return zzlVar.zza(500L);
    }

    public final com.google.android.gms.measurement.a.a f() {
        return this.f12261d;
    }

    public final String g() {
        zzl zzlVar = new zzl();
        a(new h(this, zzlVar));
        return zzlVar.zza(50L);
    }

    public static zzz a(Context context, String str, String str2, String str3, Bundle bundle) {
        com.google.android.gms.common.internal.m.a(context);
        if (f12255j == null) {
            synchronized (zzz.class) {
                if (f12255j == null) {
                    f12255j = new zzz(context, str, str2, str3, bundle);
                }
            }
        }
        return f12255j;
    }

    public final String c() {
        zzl zzlVar = new zzl();
        a(new i(this, zzlVar));
        return zzlVar.zza(500L);
    }

    public final String d() {
        zzl zzlVar = new zzl();
        a(new j(this, zzlVar));
        return zzlVar.zza(500L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static boolean b(String str, String str2) {
        return (str2 == null || str == null || h()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void e(Context context) {
        synchronized (zzz.class) {
            try {
            } catch (ClassCastException | IllegalStateException | NullPointerException unused) {
                f12256k = false;
                f12257l = false;
            }
            if (f12256k == null || f12257l == null) {
                if (a(context, "app_measurement_internal_disable_startup_flags")) {
                    f12256k = false;
                    f12257l = false;
                    return;
                }
                SharedPreferences sharedPreferences = context.getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
                f12256k = Boolean.valueOf(sharedPreferences.getBoolean(m, false));
                f12257l = Boolean.valueOf(sharedPreferences.getBoolean(n, false));
                SharedPreferences.Editor edit = sharedPreferences.edit();
                edit.remove(m);
                edit.remove(n);
                edit.apply();
            }
        }
    }

    public final void b(String str, String str2, Bundle bundle) {
        a(str, str2, bundle, true, true, null);
    }

    public final void b(String str) {
        a(new d(this, str));
    }

    public final int c(String str) {
        zzl zzlVar = new zzl();
        a(new m(this, str, zzlVar));
        Integer num = (Integer) zzl.zza(zzlVar.zzb(10000L), Integer.class);
        if (num == null) {
            return 25;
        }
        return num.intValue();
    }

    public final String b() {
        return this.f12265h;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(a aVar) {
        this.f12260c.execute(aVar);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final zzk a(Context context, boolean z) {
        DynamiteModule.b bVar;
        try {
            if (z) {
                bVar = DynamiteModule.f5463l;
            } else {
                bVar = DynamiteModule.f5461j;
            }
            return zzn.asInterface(DynamiteModule.a(context, bVar, ModuleDescriptor.MODULE_ID).a("com.google.android.gms.measurement.internal.AppMeasurementDynamiteService"));
        } catch (DynamiteModule.a e2) {
            a((Exception) e2, true, false);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void a(Exception exc, boolean z, boolean z2) {
        this.f12264g |= z;
        if (!z && z2) {
            a(5, "Error with data collection. Data lost.", exc, (Object) null, (Object) null);
        }
    }

    private final void a(String str, String str2, Bundle bundle, boolean z, boolean z2, Long l2) {
        a(new o(this, l2, str, str2, bundle, z, z2));
    }

    public final void a(String str, String str2, Object obj) {
        a(str, str2, obj, true);
    }

    private final void a(String str, String str2, Object obj, boolean z) {
        a(new q(this, str, str2, obj, z));
    }

    public final void a(Bundle bundle) {
        a(new p(this, bundle));
    }

    public final void a(String str, String str2, Bundle bundle) {
        a(new com.google.android.gms.internal.measurement.b(this, str, str2, bundle));
    }

    public final List<Bundle> a(String str, String str2) {
        zzl zzlVar = new zzl();
        a(new com.google.android.gms.internal.measurement.a(this, str, str2, zzlVar));
        List<Bundle> list = (List) zzl.zza(zzlVar.zzb(5000L), List.class);
        return list == null ? Collections.emptyList() : list;
    }

    public final void a(Activity activity, String str, String str2) {
        a(new c(this, activity, str, str2));
    }

    public final void a(String str) {
        a(new e(this, str));
    }

    public final long a() {
        zzl zzlVar = new zzl();
        a(new g(this, zzlVar));
        Long l2 = (Long) zzl.zza(zzlVar.zzb(500L), Long.class);
        if (l2 == null) {
            long nextLong = new Random(System.nanoTime() ^ this.f12259b.a()).nextLong();
            int i2 = this.f12263f + 1;
            this.f12263f = i2;
            return nextLong + i2;
        }
        return l2.longValue();
    }

    public final Map<String, Object> a(String str, String str2, boolean z) {
        zzl zzlVar = new zzl();
        a(new l(this, str, str2, z, zzlVar));
        Bundle zzb = zzlVar.zzb(5000L);
        if (zzb != null && zzb.size() != 0) {
            HashMap hashMap = new HashMap(zzb.size());
            for (String str3 : zzb.keySet()) {
                Object obj = zzb.get(str3);
                if ((obj instanceof Double) || (obj instanceof Long) || (obj instanceof String)) {
                    hashMap.put(str3, obj);
                }
            }
            return hashMap;
        }
        return Collections.emptyMap();
    }

    public final void a(int i2, String str, Object obj, Object obj2, Object obj3) {
        a(new k(this, false, 5, str, obj, null, null));
    }

    public final Bundle a(Bundle bundle, boolean z) {
        zzl zzlVar = new zzl();
        a(new n(this, bundle, zzlVar));
        if (z) {
            return zzlVar.zzb(5000L);
        }
        return null;
    }

    private static boolean a(Context context, @Size(min = 1) String str) {
        com.google.android.gms.common.internal.m.b(str);
        try {
            ApplicationInfo a2 = com.google.android.gms.common.o.c.a(context).a(context.getPackageName(), 128);
            if (a2 != null && a2.metaData != null) {
                return a2.metaData.getBoolean(str);
            }
        } catch (PackageManager.NameNotFoundException unused) {
        }
        return false;
    }
}
