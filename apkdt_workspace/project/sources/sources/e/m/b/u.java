package e.m.b;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import g.a.c.a.m;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: MapboxMapsPlugin.java */
/* loaded from: classes2.dex */
public class u implements Application.ActivityLifecycleCallbacks {

    /* renamed from: e, reason: collision with root package name */
    private final AtomicInteger f18101e = new AtomicInteger(0);

    /* renamed from: f, reason: collision with root package name */
    private final int f18102f;

    private u(m.d dVar) {
        this.f18102f = dVar.b().hashCode();
    }

    public static void a(m.d dVar) {
        if (dVar.b() == null) {
            return;
        }
        u uVar = new u(dVar);
        dVar.b().getApplication().registerActivityLifecycleCallbacks(uVar);
        dVar.e().a("plugins.flutter.io/mapbox_gl", new s(uVar.f18101e, dVar));
        new g.a.c.a.k(dVar.d(), "plugins.flutter.io/mapbox_gl").a(new m(dVar));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        if (activity.hashCode() != this.f18102f) {
            return;
        }
        this.f18101e.set(1);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        if (activity.hashCode() != this.f18102f) {
            return;
        }
        this.f18101e.set(6);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        if (activity.hashCode() != this.f18102f) {
            return;
        }
        this.f18101e.set(4);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        if (activity.hashCode() != this.f18102f) {
            return;
        }
        this.f18101e.set(3);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        if (activity.hashCode() != this.f18102f) {
            return;
        }
        this.f18101e.set(2);
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        if (activity.hashCode() != this.f18102f) {
            return;
        }
        this.f18101e.set(5);
    }
}
