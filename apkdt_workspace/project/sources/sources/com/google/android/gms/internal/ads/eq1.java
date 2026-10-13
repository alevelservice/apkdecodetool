package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class eq1 implements Application.ActivityLifecycleCallbacks {

    /* renamed from: e, reason: collision with root package name */
    private final Application f6489e;

    /* renamed from: f, reason: collision with root package name */
    private final WeakReference<Application.ActivityLifecycleCallbacks> f6490f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f6491g = false;

    public eq1(Application application, Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        this.f6490f = new WeakReference<>(activityLifecycleCallbacks);
        this.f6489e = application;
    }

    private final void a(mq1 mq1Var) {
        try {
            Application.ActivityLifecycleCallbacks activityLifecycleCallbacks = this.f6490f.get();
            if (activityLifecycleCallbacks != null) {
                mq1Var.a(activityLifecycleCallbacks);
            } else {
                if (this.f6491g) {
                    return;
                }
                this.f6489e.unregisterActivityLifecycleCallbacks(this);
                this.f6491g = true;
            }
        } catch (Exception e2) {
            qd.b("Error while dispatching lifecycle callback.", e2);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        a(new hq1(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        a(new nq1(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
        a(new iq1(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        a(new jq1(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        a(new kq1(this, activity, bundle));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
        a(new gq1(this, activity));
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
        a(new lq1(this, activity));
    }
}
