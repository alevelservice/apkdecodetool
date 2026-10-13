package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.lang.reflect.Method;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import javax.annotation.ParametersAreNonnullByDefault;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class a9 {

    /* renamed from: a, reason: collision with root package name */
    private final AtomicReference<ThreadPoolExecutor> f5535a = new AtomicReference<>(null);

    /* renamed from: b, reason: collision with root package name */
    private final Object f5536b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @Nullable
    @GuardedBy("gmpAppIdLock")
    private String f5537c = null;

    /* renamed from: d, reason: collision with root package name */
    @Nullable
    @GuardedBy("gmpAppIdLock")
    private String f5538d = null;

    /* renamed from: e, reason: collision with root package name */
    @VisibleForTesting
    private final AtomicBoolean f5539e = new AtomicBoolean(false);

    /* renamed from: f, reason: collision with root package name */
    private final AtomicInteger f5540f = new AtomicInteger(-1);

    /* renamed from: g, reason: collision with root package name */
    private final AtomicReference<Object> f5541g = new AtomicReference<>(null);

    /* renamed from: h, reason: collision with root package name */
    private final AtomicReference<Object> f5542h = new AtomicReference<>(null);

    /* renamed from: i, reason: collision with root package name */
    private final ConcurrentMap<String, Method> f5543i = new ConcurrentHashMap(9);

    /* renamed from: j, reason: collision with root package name */
    private final AtomicReference<zzbdl> f5544j = new AtomicReference<>(null);

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("proxyReference")
    private final BlockingQueue<FutureTask<?>> f5545k = new ArrayBlockingQueue(20);

    /* renamed from: l, reason: collision with root package name */
    private final Object f5546l = new Object();

    @VisibleForTesting
    private static boolean h(Context context) {
        if (!((Boolean) mu1.e().a(aw1.q0)).booleanValue()) {
            if (!((Boolean) mu1.e().a(aw1.p0)).booleanValue()) {
                return false;
            }
        }
        if (((Boolean) mu1.e().a(aw1.r0)).booleanValue()) {
            try {
                context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                return false;
            } catch (ClassNotFoundException unused) {
            }
        }
        return true;
    }

    @Nullable
    private final Method i(Context context) {
        Method method = this.f5543i.get("logEventInternal");
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod("logEventInternal", String.class, String.class, Bundle.class);
            this.f5543i.put("logEventInternal", declaredMethod);
            return declaredMethod;
        } catch (Exception e2) {
            a(e2, "logEventInternal", true);
            return null;
        }
    }

    private final Method j(Context context, String str) {
        Method method = this.f5543i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics").getDeclaredMethod(str, Activity.class, String.class, String.class);
            this.f5543i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e2) {
            a(e2, str, false);
            return null;
        }
    }

    public final boolean a(Context context) {
        if (((Boolean) mu1.e().a(aw1.i0)).booleanValue() && !this.f5539e.get()) {
            if (((Boolean) mu1.e().a(aw1.s0)).booleanValue()) {
                return true;
            }
            if (this.f5540f.get() == -1) {
                mu1.a();
                if (!gd.c(context, com.google.android.gms.common.h.f5182a)) {
                    mu1.a();
                    if (gd.c(context)) {
                        qd.d("Google Play Service is out of date, the Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires updated Google Play Service.");
                        this.f5540f.set(0);
                    }
                }
                this.f5540f.set(1);
            }
            if (this.f5540f.get() == 1) {
                return true;
            }
        }
        return false;
    }

    public final void b(Context context, final String str) {
        if (a(context)) {
            if (h(context)) {
                a("endAdUnitExposure", new q9(str) { // from class: com.google.android.gms.internal.ads.g9

                    /* renamed from: a, reason: collision with root package name */
                    private final String f6828a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6828a = str;
                    }

                    @Override // com.google.android.gms.internal.ads.q9
                    public final void a(zzbdl zzbdlVar) {
                        zzbdlVar.endAdUnitExposure(this.f6828a);
                    }
                });
            } else {
                a(context, str, "endAdUnitExposure");
            }
        }
    }

    public final void c(final Context context, final String str) {
        if (a(context) && (context instanceof Activity)) {
            if (h(context)) {
                a("setScreenName", new q9(context, str) { // from class: com.google.android.gms.internal.ads.i9

                    /* renamed from: a, reason: collision with root package name */
                    private final Context f7253a;

                    /* renamed from: b, reason: collision with root package name */
                    private final String f7254b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7253a = context;
                        this.f7254b = str;
                    }

                    @Override // com.google.android.gms.internal.ads.q9
                    public final void a(zzbdl zzbdlVar) {
                        Context context2 = this.f7253a;
                        zzbdlVar.zzb(ObjectWrapper.wrap(context2), this.f7254b, context2.getPackageName());
                    }
                });
                return;
            }
            if (a(context, "com.google.firebase.analytics.FirebaseAnalytics", this.f5542h, false)) {
                try {
                    j(context, "setCurrentScreen").invoke(this.f5542h.get(), (Activity) context, str, context.getPackageName());
                } catch (Exception e2) {
                    a(e2, "setCurrentScreen", false);
                }
            }
        }
    }

    @Nullable
    public final String d(final Context context) {
        if (!a(context)) {
            return null;
        }
        long longValue = ((Long) mu1.e().a(aw1.n0)).longValue();
        if (h(context)) {
            try {
                if (longValue < 0) {
                    return (String) a("getAppInstanceId", (String) null, (n9<String>) k9.f7640a);
                }
                return (String) b().submit(new Callable(this) { // from class: com.google.android.gms.internal.ads.j9

                    /* renamed from: e, reason: collision with root package name */
                    private final a9 f7442e;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f7442e = this;
                    }

                    @Override // java.util.concurrent.Callable
                    public final Object call() {
                        return this.f7442e.a();
                    }
                }).get(longValue, TimeUnit.MILLISECONDS);
            } catch (TimeoutException unused) {
                return "TIME_OUT";
            } catch (Exception unused2) {
                return null;
            }
        }
        if (longValue < 0) {
            return (String) a("getAppInstanceId", context);
        }
        try {
            return (String) b().submit(new Callable(this, context) { // from class: com.google.android.gms.internal.ads.m9

                /* renamed from: e, reason: collision with root package name */
                private final a9 f8066e;

                /* renamed from: f, reason: collision with root package name */
                private final Context f8067f;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f8066e = this;
                    this.f8067f = context;
                }

                @Override // java.util.concurrent.Callable
                public final Object call() {
                    return this.f8066e.g(this.f8067f);
                }
            }).get(longValue, TimeUnit.MILLISECONDS);
        } catch (TimeoutException unused3) {
            return "TIME_OUT";
        } catch (Exception unused4) {
            return null;
        }
    }

    @Nullable
    public final String e(Context context) {
        if (!a(context)) {
            return null;
        }
        if (h(context)) {
            Long l2 = (Long) a("getAdEventId", (String) null, (n9<String>) l9.f7848a);
            if (l2 != null) {
                return Long.toString(l2.longValue());
            }
            return null;
        }
        Object a2 = a("generateEventId", context);
        if (a2 != null) {
            return a2.toString();
        }
        return null;
    }

    @Nullable
    public final String f(Context context) {
        if (!a(context)) {
            return null;
        }
        synchronized (this.f5536b) {
            if (this.f5538d != null) {
                return this.f5538d;
            }
            if (h(context)) {
                this.f5538d = (String) a("getAppIdOrigin", this.f5538d, (n9<String>) c9.f5937a);
            } else {
                this.f5538d = "fa";
            }
            return this.f5538d;
        }
    }

    public final void g(Context context, String str) {
        a(context, "_aa", str, (Bundle) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String g(Context context) {
        return (String) a("getAppInstanceId", context);
    }

    public final String b(Context context) {
        if (!a(context)) {
            return "";
        }
        if (h(context)) {
            return (String) a("getCurrentScreenNameOrScreenClass", "", (n9<String>) f9.f6593a);
        }
        if (!a(context, "com.google.android.gms.measurement.AppMeasurement", this.f5541g, true)) {
            return "";
        }
        try {
            String str = (String) i(context, "getCurrentScreenName").invoke(this.f5541g.get(), new Object[0]);
            if (str == null) {
                str = (String) i(context, "getCurrentScreenClass").invoke(this.f5541g.get(), new Object[0]);
            }
            return str != null ? str : "";
        } catch (Exception e2) {
            a(e2, "getCurrentScreenName", false);
            return "";
        }
    }

    @Nullable
    private final Method i(Context context, String str) {
        Method method = this.f5543i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, new Class[0]);
            this.f5543i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e2) {
            a(e2, str, false);
            return null;
        }
    }

    public final void e(Context context, String str) {
        a(context, "_ai", str, (Bundle) null);
    }

    @Nullable
    private final Method h(Context context, String str) {
        Method method = this.f5543i.get(str);
        if (method != null) {
            return method;
        }
        try {
            Method declaredMethod = context.getClassLoader().loadClass("com.google.android.gms.measurement.AppMeasurement").getDeclaredMethod(str, String.class);
            this.f5543i.put(str, declaredMethod);
            return declaredMethod;
        } catch (Exception e2) {
            a(e2, str, false);
            return null;
        }
    }

    public final void f(Context context, String str) {
        a(context, "_aq", str, (Bundle) null);
    }

    @Nullable
    public final String c(Context context) {
        if (!a(context)) {
            return null;
        }
        synchronized (this.f5536b) {
            if (this.f5537c != null) {
                return this.f5537c;
            }
            if (h(context)) {
                this.f5537c = (String) a("getGmpAppId", this.f5537c, (n9<String>) h9.f7024a);
            } else {
                this.f5537c = (String) a("getGmpAppId", context);
            }
            return this.f5537c;
        }
    }

    private final ThreadPoolExecutor b() {
        if (this.f5535a.get() == null) {
            this.f5535a.compareAndSet(null, new ThreadPoolExecutor(((Integer) mu1.e().a(aw1.o0)).intValue(), ((Integer) mu1.e().a(aw1.o0)).intValue(), 1L, TimeUnit.MINUTES, new LinkedBlockingQueue(), new o9(this)));
        }
        return this.f5535a.get();
    }

    public final void d(Context context, String str) {
        a(context, "_ac", str, (Bundle) null);
    }

    public final void a(Context context, zzxw zzxwVar) {
        if (((Boolean) mu1.e().a(aw1.v0)).booleanValue() && a(context) && h(context)) {
            synchronized (this.f5546l) {
            }
        }
    }

    public final void a(Context context, zztp zztpVar) {
        if (((Boolean) mu1.e().a(aw1.v0)).booleanValue() && a(context) && h(context)) {
            synchronized (this.f5546l) {
            }
        }
    }

    public final void a(Context context, final String str) {
        if (a(context)) {
            if (h(context)) {
                a("beginAdUnitExposure", new q9(str) { // from class: com.google.android.gms.internal.ads.z8

                    /* renamed from: a, reason: collision with root package name */
                    private final String f10712a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10712a = str;
                    }

                    @Override // com.google.android.gms.internal.ads.q9
                    public final void a(zzbdl zzbdlVar) {
                        zzbdlVar.beginAdUnitExposure(this.f10712a);
                    }
                });
            } else {
                a(context, str, "beginAdUnitExposure");
            }
        }
    }

    public final void a(Context context, String str, String str2, String str3, int i2) {
        if (a(context)) {
            Bundle bundle = new Bundle();
            bundle.putString("_ai", str2);
            bundle.putString("type", str3);
            bundle.putInt(HummerConstants.VALUE, i2);
            a(context, "_ar", str, bundle);
            StringBuilder sb = new StringBuilder(String.valueOf(str3).length() + 75);
            sb.append("Log a Firebase reward video event, reward type: ");
            sb.append(str3);
            sb.append(", reward value: ");
            sb.append(i2);
            na.e(sb.toString());
        }
    }

    private final void a(Context context, final String str, String str2, @Nullable Bundle bundle) {
        if (a(context)) {
            final Bundle a2 = a(str2, str);
            if (bundle != null) {
                a2.putAll(bundle);
            }
            if (h(context)) {
                a("logEventInternal", new q9(str, a2) { // from class: com.google.android.gms.internal.ads.b9

                    /* renamed from: a, reason: collision with root package name */
                    private final String f5731a;

                    /* renamed from: b, reason: collision with root package name */
                    private final Bundle f5732b;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f5731a = str;
                        this.f5732b = a2;
                    }

                    @Override // com.google.android.gms.internal.ads.q9
                    public final void a(zzbdl zzbdlVar) {
                        zzbdlVar.logEvent("am", this.f5731a, this.f5732b);
                    }
                });
                return;
            }
            if (a(context, "com.google.android.gms.measurement.AppMeasurement", this.f5541g, true)) {
                try {
                    i(context).invoke(this.f5541g.get(), "am", str, a2);
                } catch (Exception e2) {
                    a(e2, "logEventInternal", true);
                }
            }
        }
    }

    private static Bundle a(String str, String str2) {
        Bundle bundle = new Bundle();
        try {
            bundle.putLong("_aeid", Long.parseLong(str));
        } catch (NullPointerException | NumberFormatException e2) {
            String valueOf = String.valueOf(str);
            qd.b(valueOf.length() != 0 ? "Invalid event ID: ".concat(valueOf) : new String("Invalid event ID: "), e2);
        }
        if ("_ac".equals(str2)) {
            bundle.putInt("_r", 1);
        }
        return bundle;
    }

    private final void a(Context context, String str, String str2) {
        if (a(context, "com.google.android.gms.measurement.AppMeasurement", this.f5541g, true)) {
            try {
                h(context, str2).invoke(this.f5541g.get(), str);
                StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 37 + String.valueOf(str).length());
                sb.append("Invoke Firebase method ");
                sb.append(str2);
                sb.append(", Ad Unit Id: ");
                sb.append(str);
                na.e(sb.toString());
            } catch (Exception e2) {
                a(e2, str2, false);
            }
        }
    }

    private final Object a(String str, Context context) {
        if (!a(context, "com.google.android.gms.measurement.AppMeasurement", this.f5541g, true)) {
            return null;
        }
        try {
            return i(context, str).invoke(this.f5541g.get(), new Object[0]);
        } catch (Exception e2) {
            a(e2, str, true);
            return null;
        }
    }

    private final void a(Exception exc, String str, boolean z) {
        if (this.f5539e.get()) {
            return;
        }
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 30);
        sb.append("Invoke Firebase method ");
        sb.append(str);
        sb.append(" error.");
        qd.d(sb.toString());
        if (z) {
            qd.d("The Google Mobile Ads SDK will not integrate with Firebase. Admob/Firebase integration requires the latest Firebase SDK jar, but Firebase SDK is either missing or out of date");
            this.f5539e.set(true);
        }
    }

    private final boolean a(Context context, String str, AtomicReference<Object> atomicReference, boolean z) {
        if (atomicReference.get() == null) {
            try {
                atomicReference.compareAndSet(null, context.getClassLoader().loadClass(str).getDeclaredMethod("getInstance", Context.class).invoke(null, context));
            } catch (Exception e2) {
                a(e2, "getInstance", z);
                return false;
            }
        }
        return true;
    }

    private final void a(final String str, final q9 q9Var) {
        synchronized (this.f5544j) {
            FutureTask<?> futureTask = new FutureTask<>(new Runnable(this, q9Var, str) { // from class: com.google.android.gms.internal.ads.e9

                /* renamed from: e, reason: collision with root package name */
                private final a9 f6354e;

                /* renamed from: f, reason: collision with root package name */
                private final q9 f6355f;

                /* renamed from: g, reason: collision with root package name */
                private final String f6356g;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f6354e = this;
                    this.f6355f = q9Var;
                    this.f6356g = str;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f6354e.a(this.f6355f, this.f6356g);
                }
            }, null);
            if (this.f5544j.get() != null) {
                futureTask.run();
            } else {
                this.f5545k.offer(futureTask);
            }
        }
    }

    private final <T> T a(String str, @Nullable T t, n9<T> n9Var) {
        synchronized (this.f5544j) {
            if (this.f5544j.get() != null) {
                try {
                    return n9Var.a(this.f5544j.get());
                } catch (Exception e2) {
                    a(e2, str, false);
                }
            }
            return t;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(q9 q9Var, String str) {
        if (this.f5544j.get() != null) {
            try {
                q9Var.a(this.f5544j.get());
            } catch (Exception e2) {
                a(e2, str, false);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ String a() {
        return (String) a("getAppInstanceId", (String) null, (n9<String>) d9.f6179a);
    }
}
