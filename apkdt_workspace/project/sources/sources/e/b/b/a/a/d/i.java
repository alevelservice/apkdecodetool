package e.b.b.a.a.d;

import android.app.Application;
import android.text.TextUtils;
import com.ap.zoloz.hummer.biz.HummerConstants;
import e.b.b.a.a.a.d;
import e.b.b.a.a.a.f;
import e.b.b.a.a.d.c;
import e.b.b.a.a.d.d.a;
import e.b.b.a.a.e.h;
import java.lang.reflect.Method;

/* compiled from: LoggerFactory.java */
/* loaded from: classes.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private static f f17036a;

    /* renamed from: b, reason: collision with root package name */
    private static d f17037b;

    /* renamed from: c, reason: collision with root package name */
    private static e.b.b.a.a.d.d.b f17038c;

    /* renamed from: d, reason: collision with root package name */
    private static e.b.b.a.a.d.d.b f17039d;

    public static void a(Application application) {
        f17038c = new e.b.b.a.a.d.d.c();
        f17039d = new a();
        f17036a = new j(application);
        f17037b = new c(application);
        h.a(application);
        e.b.b.a.a.d.a.c.c();
        e.b.b.a.a.c.b.a().a(application);
        c.d.a();
        e();
        application.registerActivityLifecycleCallbacks(new e.b.b.a.a.d.f.a(application));
        b(application);
        e.b.b.a.a.d.h.h.a(application);
    }

    private static void b(Application application) {
        try {
            Method declaredMethod = Class.forName("com.alipay.iap.android.aplog.core.logger.CrashLogBinder").getDeclaredMethod("bind", Application.class);
            declaredMethod.setAccessible(true);
            declaredMethod.invoke(null, application);
        } catch (Exception e2) {
            c().a("LoggerFactory", TextUtils.isEmpty(e2.getMessage()) ? "init crashLog fail" : e2.getMessage());
        }
    }

    public static synchronized e.b.b.a.a.d.d.b c() {
        e.b.b.a.a.d.d.b bVar;
        synchronized (i.class) {
            bVar = f17038c;
        }
        return bVar;
    }

    public static synchronized e.b.b.a.a.d.d.b d() {
        e.b.b.a.a.d.d.b bVar;
        synchronized (i.class) {
            bVar = f17039d;
        }
        return bVar;
    }

    private static void e() {
        c.d.b().a("autouserbehavor", new e.b.b.a.a.d.c$b.c(f17037b));
        c.d.b().a("userbehavor", new e.b.b.a.a.d.c$b.f(f17037b));
        c.d.b().a("alivereport", new e.b.b.a.a.d.c$b.a(f17037b));
        c.d.b().a("pageMonitor", new e.b.b.a.a.d.c$b.h(f17037b));
        e.b.b.a.a.d.c$b.g gVar = new e.b.b.a.a.d.c$b.g(f17037b);
        c.d.b().a("performance", gVar);
        c.d.b().a("bizHighAvail", gVar);
        c.d.b().a("apm", new e.b.b.a.a.d.c$b.b(f17037b));
        c.d.b().a("applog", new e.b.b.a.a.d.c$b.i());
        c.d.b().a(HummerConstants.NORMAL_EXCEPTION, new e.b.b.a.a.d.c$b.d(f17037b));
    }

    public static f b() {
        return f17036a;
    }

    public static d a() {
        return f17037b;
    }
}
