package com.google.firebase.q;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.firebase.n.c;

/* compiled from: DataCollectionConfigStorage.java */
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private final Context f15289a;

    /* renamed from: b, reason: collision with root package name */
    private final SharedPreferences f15290b;

    /* renamed from: c, reason: collision with root package name */
    private final c f15291c;

    /* renamed from: d, reason: collision with root package name */
    private boolean f15292d = b();

    public a(Context context, String str, c cVar) {
        this.f15289a = a(context);
        this.f15290b = this.f15289a.getSharedPreferences("com.google.firebase.common.prefs:" + str, 0);
        this.f15291c = cVar;
    }

    private static Context a(Context context) {
        return Build.VERSION.SDK_INT < 24 ? context : androidx.core.content.a.a(context);
    }

    private boolean b() {
        if (this.f15290b.contains("firebase_data_collection_default_enabled")) {
            return this.f15290b.getBoolean("firebase_data_collection_default_enabled", true);
        }
        return c();
    }

    private boolean c() {
        ApplicationInfo applicationInfo;
        try {
            PackageManager packageManager = this.f15289a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f15289a.getPackageName(), 128)) == null || applicationInfo.metaData == null || !applicationInfo.metaData.containsKey("firebase_data_collection_default_enabled")) {
                return true;
            }
            return applicationInfo.metaData.getBoolean("firebase_data_collection_default_enabled");
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    public synchronized boolean a() {
        return this.f15292d;
    }

    private synchronized void a(boolean z) {
        if (this.f15292d != z) {
            this.f15292d = z;
            this.f15291c.a(new com.google.firebase.n.a<>(com.google.firebase.a.class, new com.google.firebase.a(z)));
        }
    }

    public synchronized void a(Boolean bool) {
        if (bool == null) {
            this.f15290b.edit().remove("firebase_data_collection_default_enabled").apply();
            a(c());
        } else {
            boolean equals = Boolean.TRUE.equals(bool);
            this.f15290b.edit().putBoolean("firebase_data_collection_default_enabled", equals).apply();
            a(equals);
        }
    }
}
