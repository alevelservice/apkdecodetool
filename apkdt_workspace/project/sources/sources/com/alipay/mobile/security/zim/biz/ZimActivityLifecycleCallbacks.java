package com.alipay.mobile.security.zim.biz;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.os.Bundle;

/* loaded from: classes.dex */
public class ZimActivityLifecycleCallbacks implements Application.ActivityLifecycleCallbacks {
    private static final String TAG = "ZimPlatform";
    private static ZimActivityLifecycleCallbacks sInstance;
    protected Context mApplicationContext;

    private ZimActivityLifecycleCallbacks(Context context) {
        this.mApplicationContext = context.getApplicationContext();
    }

    public static ZimActivityLifecycleCallbacks getInstance(Application application) {
        if (sInstance == null) {
            synchronized (ZimActivityLifecycleCallbacks.class) {
                if (sInstance == null) {
                    ZimActivityLifecycleCallbacks zimActivityLifecycleCallbacks = new ZimActivityLifecycleCallbacks(application);
                    application.registerActivityLifecycleCallbacks(zimActivityLifecycleCallbacks);
                    sInstance = zimActivityLifecycleCallbacks;
                }
            }
        }
        return sInstance;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityCreated(Activity activity, Bundle bundle) {
        String str = activity.getClass().getSimpleName() + ".onActivityCreated(activity=" + activity + ", savedInstanceState=" + bundle + ")";
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityDestroyed(Activity activity) {
        String str = activity.getClass().getSimpleName() + ".onActivityDestroyed(activity=" + activity + ")";
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityPaused(Activity activity) {
        String str = activity.getClass().getSimpleName() + ".onActivityPaused(activity=" + activity + ")";
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityResumed(Activity activity) {
        String str = activity.getClass().getSimpleName() + ".onActivityResumed(activity=" + activity + ")";
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        String str = activity.getClass().getSimpleName() + ".onActivitySaveInstanceState(activity=" + activity + ", outState=" + bundle + ")";
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStarted(Activity activity) {
        String str = activity.getClass().getSimpleName() + ".onActivityStarted(activity=" + activity + ")";
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public void onActivityStopped(Activity activity) {
        String str = activity.getClass().getSimpleName() + ".onActivityStopped(activity=" + activity + ")";
    }
}
