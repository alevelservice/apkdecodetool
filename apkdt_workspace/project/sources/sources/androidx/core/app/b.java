package androidx.core.app;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* compiled from: ActivityRecreator.java */
@RestrictTo({RestrictTo.a.LIBRARY})
/* loaded from: classes.dex */
final class b {

    /* renamed from: g, reason: collision with root package name */
    private static final Handler f1718g = new Handler(Looper.getMainLooper());

    /* renamed from: a, reason: collision with root package name */
    protected static final Class<?> f1712a = a();

    /* renamed from: b, reason: collision with root package name */
    protected static final Field f1713b = b();

    /* renamed from: c, reason: collision with root package name */
    protected static final Field f1714c = c();

    /* renamed from: d, reason: collision with root package name */
    protected static final Method f1715d = b(f1712a);

    /* renamed from: e, reason: collision with root package name */
    protected static final Method f1716e = a(f1712a);

    /* renamed from: f, reason: collision with root package name */
    protected static final Method f1717f = c(f1712a);

    /* compiled from: ActivityRecreator.java */
    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ d f1719e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Object f1720f;

        a(d dVar, Object obj) {
            this.f1719e = dVar;
            this.f1720f = obj;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1719e.f1725e = this.f1720f;
        }
    }

    /* compiled from: ActivityRecreator.java */
    /* renamed from: androidx.core.app.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0031b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Application f1721e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ d f1722f;

        RunnableC0031b(Application application, d dVar) {
            this.f1721e = application;
            this.f1722f = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f1721e.unregisterActivityLifecycleCallbacks(this.f1722f);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActivityRecreator.java */
    /* loaded from: classes.dex */
    public class c implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ Object f1723e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ Object f1724f;

        c(Object obj, Object obj2) {
            this.f1723e = obj;
            this.f1724f = obj2;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                if (b.f1715d != null) {
                    b.f1715d.invoke(this.f1723e, this.f1724f, false, "AppCompat recreation");
                } else {
                    b.f1716e.invoke(this.f1723e, this.f1724f, false);
                }
            } catch (RuntimeException e2) {
                if (e2.getClass() == RuntimeException.class && e2.getMessage() != null && e2.getMessage().startsWith("Unable to stop")) {
                    throw e2;
                }
            } catch (Throwable unused) {
            }
        }
    }

    /* compiled from: ActivityRecreator.java */
    /* loaded from: classes.dex */
    private static final class d implements Application.ActivityLifecycleCallbacks {

        /* renamed from: e, reason: collision with root package name */
        Object f1725e;

        /* renamed from: f, reason: collision with root package name */
        private Activity f1726f;

        /* renamed from: g, reason: collision with root package name */
        private boolean f1727g = false;

        /* renamed from: h, reason: collision with root package name */
        private boolean f1728h = false;

        /* renamed from: i, reason: collision with root package name */
        private boolean f1729i = false;

        d(@NonNull Activity activity) {
            this.f1726f = activity;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            if (this.f1726f == activity) {
                this.f1726f = null;
                this.f1728h = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
            if (!this.f1728h || this.f1729i || this.f1727g || !b.a(this.f1725e, activity)) {
                return;
            }
            this.f1729i = true;
            this.f1725e = null;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            if (this.f1726f == activity) {
                this.f1727g = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(@NonNull Activity activity) {
        Object obj;
        if (Build.VERSION.SDK_INT >= 28) {
            activity.recreate();
            return true;
        }
        if (d() && f1717f == null) {
            return false;
        }
        if (f1716e == null && f1715d == null) {
            return false;
        }
        try {
            Object obj2 = f1714c.get(activity);
            if (obj2 == null || (obj = f1713b.get(activity)) == null) {
                return false;
            }
            Application application = activity.getApplication();
            d dVar = new d(activity);
            application.registerActivityLifecycleCallbacks(dVar);
            f1718g.post(new a(dVar, obj2));
            try {
                if (d()) {
                    f1717f.invoke(obj, obj2, null, null, 0, false, null, null, false, false);
                } else {
                    activity.recreate();
                }
                return true;
            } finally {
                f1718g.post(new RunnableC0031b(application, dVar));
            }
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Method b(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Method c(Class<?> cls) {
        if (d() && cls != null) {
            try {
                Method declaredMethod = cls.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, Boolean.TYPE, Configuration.class, Configuration.class, Boolean.TYPE, Boolean.TYPE);
                declaredMethod.setAccessible(true);
                return declaredMethod;
            } catch (Throwable unused) {
            }
        }
        return null;
    }

    private static boolean d() {
        int i2 = Build.VERSION.SDK_INT;
        return i2 == 26 || i2 == 27;
    }

    private static Field b() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Field c() {
        try {
            Field declaredField = Activity.class.getDeclaredField("mToken");
            declaredField.setAccessible(true);
            return declaredField;
        } catch (Throwable unused) {
            return null;
        }
    }

    protected static boolean a(Object obj, Activity activity) {
        try {
            Object obj2 = f1714c.get(activity);
            if (obj2 != obj) {
                return false;
            }
            f1718g.postAtFrontOfQueue(new c(f1713b.get(activity), obj2));
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    private static Method a(Class<?> cls) {
        if (cls == null) {
            return null;
        }
        try {
            Method declaredMethod = cls.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
            declaredMethod.setAccessible(true);
            return declaredMethod;
        } catch (Throwable unused) {
            return null;
        }
    }

    private static Class<?> a() {
        try {
            return Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            return null;
        }
    }
}
