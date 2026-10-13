package io.flutter.plugins.imagepicker;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;
import android.os.Environment;
import android.os.Handler;
import android.os.Looper;
import androidx.annotation.VisibleForTesting;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;
import java.io.File;

/* compiled from: ImagePickerPlugin.java */
/* loaded from: classes2.dex */
public class e implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private final m.d f19485e;

    /* renamed from: f, reason: collision with root package name */
    private d f19486f;

    /* renamed from: g, reason: collision with root package name */
    private Application.ActivityLifecycleCallbacks f19487g;

    /* compiled from: ImagePickerPlugin.java */
    /* loaded from: classes2.dex */
    class a implements Application.ActivityLifecycleCallbacks {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ m.d f19488e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ d f19489f;

        a(e eVar, m.d dVar, d dVar2) {
            this.f19488e = dVar;
            this.f19489f = dVar2;
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityPaused(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
            if (activity == this.f19488e.b()) {
                this.f19489f.a();
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
        }
    }

    /* compiled from: ImagePickerPlugin.java */
    /* loaded from: classes2.dex */
    private static class b implements k.d {

        /* renamed from: a, reason: collision with root package name */
        private k.d f19490a;

        /* renamed from: b, reason: collision with root package name */
        private Handler f19491b = new Handler(Looper.getMainLooper());

        /* compiled from: ImagePickerPlugin.java */
        /* loaded from: classes2.dex */
        class a implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ Object f19492e;

            a(Object obj) {
                this.f19492e = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f19490a.a(this.f19492e);
            }
        }

        /* compiled from: ImagePickerPlugin.java */
        /* renamed from: io.flutter.plugins.imagepicker.e$b$b, reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        class RunnableC0247b implements Runnable {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ String f19494e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f19495f;

            /* renamed from: g, reason: collision with root package name */
            final /* synthetic */ Object f19496g;

            RunnableC0247b(String str, String str2, Object obj) {
                this.f19494e = str;
                this.f19495f = str2;
                this.f19496g = obj;
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f19490a.a(this.f19494e, this.f19495f, this.f19496g);
            }
        }

        /* compiled from: ImagePickerPlugin.java */
        /* loaded from: classes2.dex */
        class c implements Runnable {
            c() {
            }

            @Override // java.lang.Runnable
            public void run() {
                b.this.f19490a.a();
            }
        }

        b(k.d dVar) {
            this.f19490a = dVar;
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            this.f19491b.post(new a(obj));
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            this.f19491b.post(new RunnableC0247b(str, str2, obj));
        }

        @Override // g.a.c.a.k.d
        public void a() {
            this.f19491b.post(new c());
        }
    }

    @VisibleForTesting
    e(m.d dVar, d dVar2) {
        this.f19485e = dVar;
        this.f19486f = dVar2;
        this.f19487g = new a(this, dVar, dVar2);
        m.d dVar3 = this.f19485e;
        if (dVar3 == null || dVar3.b() == null || this.f19485e.b().getApplication() == null) {
            return;
        }
        this.f19485e.b().getApplication().registerActivityLifecycleCallbacks(this.f19487g);
    }

    public static void a(m.d dVar) {
        if (dVar.b() == null) {
            return;
        }
        c.a(dVar.b());
        k kVar = new k(dVar.d(), "plugins.flutter.io/image_picker");
        File externalFilesDir = dVar.b().getExternalFilesDir(Environment.DIRECTORY_PICTURES);
        d dVar2 = new d(dVar.b(), externalFilesDir, new g(externalFilesDir, new io.flutter.plugins.imagepicker.a()));
        dVar.a((m.a) dVar2);
        dVar.a((m.e) dVar2);
        kVar.a(new e(dVar, dVar2));
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        if (this.f19485e.b() == null) {
            dVar.a("no_activity", "image_picker plugin requires a foreground activity.", null);
            return;
        }
        b bVar = new b(dVar);
        String str = jVar.f18223a;
        char c2 = 65535;
        int hashCode = str.hashCode();
        if (hashCode != -1457314374) {
            if (hashCode != -1445424934) {
                if (hashCode == -310034372 && str.equals("retrieve")) {
                    c2 = 2;
                }
            } else if (str.equals("pickVideo")) {
                c2 = 1;
            }
        } else if (str.equals("pickImage")) {
            c2 = 0;
        }
        if (c2 == 0) {
            int intValue = ((Integer) jVar.a("source")).intValue();
            if (intValue == 0) {
                this.f19486f.c(jVar, bVar);
                return;
            } else {
                if (intValue == 1) {
                    this.f19486f.a(jVar, bVar);
                    return;
                }
                throw new IllegalArgumentException("Invalid image source: " + intValue);
            }
        }
        if (c2 != 1) {
            if (c2 == 2) {
                this.f19486f.a(bVar);
                return;
            }
            throw new IllegalArgumentException("Unknown method " + jVar.f18223a);
        }
        int intValue2 = ((Integer) jVar.a("source")).intValue();
        if (intValue2 == 0) {
            this.f19486f.d(jVar, bVar);
        } else {
            if (intValue2 == 1) {
                this.f19486f.b(jVar, bVar);
                return;
            }
            throw new IllegalArgumentException("Invalid video source: " + intValue2);
        }
    }
}
