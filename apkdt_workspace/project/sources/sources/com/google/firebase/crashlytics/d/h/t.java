package com.google.firebase.crashlytics.d.h;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import androidx.annotation.Nullable;

/* compiled from: DataCollectionArbiter.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: a, reason: collision with root package name */
    private final SharedPreferences f14557a;

    /* renamed from: b, reason: collision with root package name */
    private final com.google.firebase.c f14558b;

    /* renamed from: e, reason: collision with root package name */
    boolean f14561e;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    private Boolean f14563g;

    /* renamed from: c, reason: collision with root package name */
    private final Object f14559c = new Object();

    /* renamed from: d, reason: collision with root package name */
    e.i.b.b.d.i<Void> f14560d = new e.i.b.b.d.i<>();

    /* renamed from: f, reason: collision with root package name */
    private boolean f14562f = false;

    /* renamed from: h, reason: collision with root package name */
    private e.i.b.b.d.i<Void> f14564h = new e.i.b.b.d.i<>();

    public t(com.google.firebase.c cVar) {
        this.f14561e = false;
        Context b2 = cVar.b();
        this.f14558b = cVar;
        this.f14557a = h.h(b2);
        Boolean d2 = d();
        this.f14563g = d2 == null ? a(b2) : d2;
        synchronized (this.f14559c) {
            if (a()) {
                this.f14560d.b((e.i.b.b.d.i<Void>) null);
                this.f14561e = true;
            }
        }
    }

    @Nullable
    private Boolean d() {
        if (!this.f14557a.contains("firebase_crashlytics_collection_enabled")) {
            return null;
        }
        this.f14562f = false;
        return Boolean.valueOf(this.f14557a.getBoolean("firebase_crashlytics_collection_enabled", true));
    }

    public synchronized boolean a() {
        boolean f2;
        if (this.f14563g != null) {
            f2 = this.f14563g.booleanValue();
        } else {
            f2 = this.f14558b.f();
        }
        b(f2);
        return f2;
    }

    public e.i.b.b.d.h<Void> b() {
        e.i.b.b.d.h<Void> a2;
        synchronized (this.f14559c) {
            a2 = this.f14560d.a();
        }
        return a2;
    }

    public e.i.b.b.d.h<Void> c() {
        return l0.a(this.f14564h.a(), b());
    }

    private void b(boolean z) {
        String str;
        String str2 = z ? "ENABLED" : "DISABLED";
        if (this.f14563g == null) {
            str = "global Firebase setting";
        } else {
            str = this.f14562f ? "firebase_crashlytics_collection_enabled manifest flag" : "API";
        }
        com.google.firebase.crashlytics.d.b.a().a(String.format("Crashlytics automatic data collection %s by %s.", str2, str));
    }

    public synchronized void a(@Nullable Boolean bool) {
        if (bool != null) {
            try {
                this.f14562f = false;
            } catch (Throwable th) {
                throw th;
            }
        }
        this.f14563g = bool != null ? bool : a(this.f14558b.b());
        a(this.f14557a, bool);
        synchronized (this.f14559c) {
            if (a()) {
                if (!this.f14561e) {
                    this.f14560d.b((e.i.b.b.d.i<Void>) null);
                    this.f14561e = true;
                }
            } else if (this.f14561e) {
                this.f14560d = new e.i.b.b.d.i<>();
                this.f14561e = false;
            }
        }
    }

    @Nullable
    private static Boolean b(Context context) {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = context.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(context.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_crashlytics_collection_enabled")) {
                return null;
            }
            return Boolean.valueOf(applicationInfo.metaData.getBoolean("firebase_crashlytics_collection_enabled"));
        } catch (PackageManager.NameNotFoundException e2) {
            com.google.firebase.crashlytics.d.b.a().a("Unable to get PackageManager. Falling through", e2);
            return null;
        }
    }

    public void a(boolean z) {
        if (z) {
            this.f14564h.b((e.i.b.b.d.i<Void>) null);
            return;
        }
        throw new IllegalStateException("An invalid data collection token was used.");
    }

    @Nullable
    private Boolean a(Context context) {
        Boolean b2 = b(context);
        if (b2 == null) {
            this.f14562f = false;
            return null;
        }
        this.f14562f = true;
        return Boolean.valueOf(Boolean.TRUE.equals(b2));
    }

    @SuppressLint({"ApplySharedPref"})
    private static void a(SharedPreferences sharedPreferences, Boolean bool) {
        SharedPreferences.Editor edit = sharedPreferences.edit();
        if (bool != null) {
            edit.putBoolean("firebase_crashlytics_collection_enabled", bool.booleanValue());
        } else {
            edit.remove("firebase_crashlytics_collection_enabled");
        }
        edit.commit();
    }
}
