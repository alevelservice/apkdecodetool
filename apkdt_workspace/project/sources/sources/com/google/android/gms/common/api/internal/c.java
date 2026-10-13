package com.google.android.gms.common.api.internal;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.ActivityManager;
import android.app.Application;
import android.content.ComponentCallbacks2;
import android.content.res.Configuration;
import android.os.Bundle;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.ArrayList;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class c implements Application.ActivityLifecycleCallbacks, ComponentCallbacks2 {

    /* renamed from: i, reason: collision with root package name */
    private static final c f5035i = new c();

    /* renamed from: e, reason: collision with root package name */
    private final AtomicBoolean f5036e = new AtomicBoolean();

    /* renamed from: f, reason: collision with root package name */
    private final AtomicBoolean f5037f = new AtomicBoolean();

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("sInstance")
    private final ArrayList<a> f5038g = new ArrayList<>();

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("sInstance")
    private boolean f5039h = false;

    /* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
    @KeepForSdk
    /* loaded from: classes.dex */
    public interface a {
        @KeepForSdk
        void a(boolean z);
    }

    @KeepForSdk
    private c() {
    }

    @KeepForSdk
    public static void a(Application application) {
        synchronized (f5035i) {
            if (!f5035i.f5039h) {
                application.registerActivityLifecycleCallbacks(f5035i);
                application.registerComponentCallbacks(f5035i);
                f5035i.f5039h = true;
            }
        }
    }

    @KeepForSdk
    public static c b() {
        return f5035i;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        boolean compareAndSet = this.f5036e.compareAndSet(true, false);
        this.f5037f.set(true);
        if (compareAndSet) {
            b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
        boolean compareAndSet = this.f5036e.compareAndSet(true, false);
        this.f5037f.set(true);
        if (compareAndSet) {
            b(false);
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i2) {
        if (i2 == 20 && this.f5036e.compareAndSet(false, true)) {
            this.f5037f.set(true);
            b(true);
        }
    }

    private final void b(boolean z) {
        synchronized (f5035i) {
            ArrayList<a> arrayList = this.f5038g;
            int size = arrayList.size();
            int i2 = 0;
            while (i2 < size) {
                a aVar = arrayList.get(i2);
                i2++;
                aVar.a(z);
            }
        }
    }

    @KeepForSdk
    @TargetApi(16)
    public final boolean a(boolean z) {
        if (!this.f5037f.get()) {
            if (!com.google.android.gms.common.util.o.c()) {
                return z;
            }
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (!this.f5037f.getAndSet(true) && runningAppProcessInfo.importance > 100) {
                this.f5036e.set(true);
            }
        }
        return a();
    }

    @KeepForSdk
    public final boolean a() {
        return this.f5036e.get();
    }

    @KeepForSdk
    public final void a(a aVar) {
        synchronized (f5035i) {
            this.f5038g.add(aVar);
        }
    }
}
