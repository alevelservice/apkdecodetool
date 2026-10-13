package e.b.b.a.a.d.f;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.IntentFilter;
import android.os.Bundle;
import android.text.TextUtils;
import com.alipay.iap.android.aplog.core.filter.g;
import e.b.b.a.a.b.c.c;
import e.b.b.a.a.d.i;
import e.b.b.a.a.e.n;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: LogLifecycleCallback.java */
@TargetApi(14)
/* loaded from: classes.dex */
public class a implements Application.ActivityLifecycleCallbacks {

    /* renamed from: f, reason: collision with root package name */
    public static boolean f17014f = false;

    /* renamed from: g, reason: collision with root package name */
    private static int f17015g;

    /* renamed from: h, reason: collision with root package name */
    private static int f17016h;

    /* renamed from: i, reason: collision with root package name */
    private static int f17017i;

    /* renamed from: j, reason: collision with root package name */
    private static long f17018j;

    /* renamed from: e, reason: collision with root package name */
    private HashMap<String, c> f17019e = new HashMap<>();

    public a(Context context) {
        try {
            b bVar = new b(this);
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("android.intent.action.SCREEN_OFF");
            context.registerReceiver(bVar, intentFilter);
        } catch (Throwable th) {
            i.c().b("LoggingLifecycleCallback", th);
        }
    }

    private void b(Context context) {
        if (g.b().a()) {
            try {
                n.a("com.alipay.iap.android.aplog.monitor.ANRBinder", "startAnrWatch", new Class[]{Context.class}, null, new Object[]{context});
            } catch (Exception e2) {
                i.c().a("LogLifecycleCallback", TextUtils.isEmpty(e2.getMessage()) ? "startAnrWatch error" : e2.getMessage());
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        f17017i++;
        a(true);
        i.c().c("LogLifecycleCallback", activity.getClass().getName() + " onActivityCreated ");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        f17017i--;
        if (f17017i <= 0) {
            try {
                n.a("com.alipay.iap.android.aplog.core.logger.NativeCrashHandlerApi", "onExit", null, null, null);
            } catch (Exception e2) {
                i.c().a("LogLifecycleCallback", TextUtils.isEmpty(e2.getMessage()) ? "reflect onExit fail" : e2.getMessage());
            }
        }
        i.c().c("LogLifecycleCallback", activity.getClass().getName() + " onActivityDestroyed ");
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        f17016h--;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        f17016h++;
        a(true);
        i.c().c("LogLifecycleCallback", activity.getClass().getName() + " onActivityResumed ");
        if (a()) {
            i.a().a(new e.b.b.a.a.b.c.b());
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        f17015g++;
        a(true);
        if (f17015g > 0) {
            f17014f = false;
            b(activity);
            i.c().c("LogLifecycleCallback", activity.getPackageName() + " go to foreground");
        }
        if (activity == null || !a(activity.getClass().getName())) {
            return;
        }
        c cVar = new c(activity);
        cVar.b(activity.getClass().getName());
        i.c().c("LogLifecycleCallback", "put activity: " + activity.getClass().getName());
        this.f17019e.put(activity.getClass().getName(), cVar);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        c remove;
        f17015g--;
        i.c().c("LogLifecycleCallback", activity.getClass().getName() + " onActivityStopped ");
        if (f17015g <= 0) {
            f17014f = true;
            a(activity);
            a(false);
            i.a().a("gotoBackground", null);
            i.c().c("LogLifecycleCallback", activity.getPackageName() + " go back to background ");
        }
        if (activity == null || !a(activity.getClass().getName()) || (remove = this.f17019e.remove(activity.getClass().getName())) == null) {
            return;
        }
        remove.c(System.currentTimeMillis() + "");
        i.c().c("LogLifecycleCallback", "remove  activity: " + activity.getClass().getName());
        i.a().a(remove);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(boolean z) {
        try {
            n.a("com.alipay.iap.android.aplog.core.logger.NativeCrashHandlerApi", "setForeground", new Class[]{Boolean.TYPE}, null, new Object[]{Boolean.valueOf(z)});
        } catch (Exception e2) {
            i.c().a("LogLifecycleCallback", TextUtils.isEmpty(e2.getMessage()) ? "reflect setForeground fail" : e2.getMessage());
        }
    }

    public static boolean a() {
        long currentTimeMillis = System.currentTimeMillis();
        if (currentTimeMillis - f17018j <= i.a().h()) {
            return false;
        }
        f17018j = currentTimeMillis;
        return true;
    }

    private boolean a(String str) {
        if (i.a().q() == null || i.a().q().size() <= 0) {
            return false;
        }
        Iterator<String> it = i.a().q().iterator();
        while (it.hasNext()) {
            if (it.next().equals(str)) {
                return true;
            }
        }
        return false;
    }

    private void a(Context context) {
        try {
            n.a("com.alipay.iap.android.aplog.monitor.ANRBinder", "stopAnrWatch", null, null, null);
        } catch (Exception e2) {
            i.c().a("LogLifecycleCallback", TextUtils.isEmpty(e2.getMessage()) ? "stopAnrWatch error" : e2.getMessage());
        }
        i.a().c();
    }
}
