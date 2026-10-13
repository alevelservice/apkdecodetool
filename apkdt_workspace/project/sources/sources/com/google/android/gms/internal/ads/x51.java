package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class x51 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: e, reason: collision with root package name */
    private final Application f10279e;

    /* renamed from: f, reason: collision with root package name */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f10280f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f10281g = false;

    public x51(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f10280f = new WeakReference<>(activityLifecycleCallbacks);
        this.f10279e = application;
    }

    private final void a(jd1 jd1Var) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f10280f.get();
            if (activityLifecycleCallbacks != null) {
                jd1Var.a(activityLifecycleCallbacks);
            } else {
                if (this.f10281g) {
                    return;
                }
                this.f10279e.unregisterActivityLifecycleCallbacks(this);
                this.f10281g = true;
            }
        } catch (Exception unused) {
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new o51(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new da1(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new c91(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new l61(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new cb1(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new b71(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new c81(this, activity));
    }
}
