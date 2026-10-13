package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import androidx.annotation.Nullable;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import javax.annotation.concurrent.GuardedBy;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(14)
/* loaded from: classes.dex */
public final class qq1 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    private Activity f8994e;

    /* renamed from: f, reason: collision with root package name */
    private Context f8995f;

    /* renamed from: l, reason: collision with root package name */
    private Runnable f9001l;
    private long n;

    /* renamed from: g, reason: collision with root package name */
    private final Object f8996g = new Object();

    /* renamed from: h, reason: collision with root package name */
    private boolean f8997h = true;

    /* renamed from: i, reason: collision with root package name */
    private boolean f8998i = false;

    /* renamed from: j, reason: collision with root package name */
    @GuardedBy("lock")
    private final List<sq1> f8999j = new ArrayList();

    /* renamed from: k, reason: collision with root package name */
    @GuardedBy("lock")
    private final List<ir1> f9000k = new ArrayList();
    private boolean m = false;

    public final void a(Application application, Context context) {
        if (this.m) {
            return;
        }
        application.registerActivityLifecycleCallbacks(this);
        if (context instanceof Activity) {
            a((Activity) context);
        }
        this.f8995f = application;
        this.n = ((Long) mu1.e().a(aw1.J0)).longValue();
        this.m = true;
    }

    public final void b(sq1 sq1Var) {
        synchronized (this.f8996g) {
            this.f8999j.remove(sq1Var);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        synchronized (this.f8996g) {
            if (this.f8994e == null) {
                return;
            }
            if (this.f8994e.equals(activity)) {
                this.f8994e = null;
            }
            Iterator<ir1> it = this.f9000k.iterator();
            while (it.hasNext()) {
                try {
                    if (it.next().a(activity)) {
                        it.remove();
                    }
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.n.g().a(e2, "AppActivityTracker.ActivityListener.onActivityDestroyed");
                    qd.b("", e2);
                }
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(activity);
        synchronized (this.f8996g) {
            Iterator<ir1> it = this.f9000k.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityPaused(activity);
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.n.g().a(e2, "AppActivityTracker.ActivityListener.onActivityPaused");
                    qd.b("", e2);
                }
            }
        }
        this.f8998i = true;
        Runnable runnable = this.f9001l;
        if (runnable != null) {
            wa.f10063h.removeCallbacks(runnable);
        }
        Handler handler = wa.f10063h;
        tq1 tq1Var = new tq1(this);
        this.f9001l = tq1Var;
        handler.postDelayed(tq1Var, this.n);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(activity);
        this.f8998i = false;
        boolean z = !this.f8997h;
        this.f8997h = true;
        Runnable runnable = this.f9001l;
        if (runnable != null) {
            wa.f10063h.removeCallbacks(runnable);
        }
        synchronized (this.f8996g) {
            Iterator<ir1> it = this.f9000k.iterator();
            while (it.hasNext()) {
                try {
                    it.next().onActivityResumed(activity);
                } catch (Exception e2) {
                    com.google.android.gms.ads.internal.n.g().a(e2, "AppActivityTracker.ActivityListener.onActivityResumed");
                    qd.b("", e2);
                }
            }
            if (z) {
                Iterator<sq1> it2 = this.f8999j.iterator();
                while (it2.hasNext()) {
                    try {
                        it2.next().a(true);
                    } catch (Exception e3) {
                        qd.b("", e3);
                    }
                }
            } else {
                qd.a("App is still foreground.");
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(activity);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Nullable
    public final Context b() {
        return this.f8995f;
    }

    public final void a(sq1 sq1Var) {
        synchronized (this.f8996g) {
            this.f8999j.add(sq1Var);
        }
    }

    @Nullable
    public final Activity a() {
        return this.f8994e;
    }

    private final void a(Activity activity) {
        synchronized (this.f8996g) {
            if (!activity.getClass().getName().startsWith("com.google.android.gms.ads")) {
                this.f8994e = activity;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ boolean a(qq1 qq1Var, boolean z) {
        qq1Var.f8997h = false;
        return false;
    }
}
