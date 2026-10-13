package com.google.android.gms.internal.vision;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class a0 implements n {

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("SharedPreferencesLoader.class")
    private static final Map<String, a0> f12275f = new a.e.a();

    /* renamed from: a, reason: collision with root package name */
    private final SharedPreferences f12276a;

    /* renamed from: d, reason: collision with root package name */
    private volatile Map<String, ?> f12279d;

    /* renamed from: b, reason: collision with root package name */
    private final SharedPreferences.OnSharedPreferenceChangeListener f12277b = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.vision.c0

        /* renamed from: a, reason: collision with root package name */
        private final a0 f12311a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f12311a = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.f12311a.a(sharedPreferences, str);
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private final Object f12278c = new Object();

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private final List<k> f12280e = new ArrayList();

    private a0(SharedPreferences sharedPreferences) {
        this.f12276a = sharedPreferences;
        this.f12276a.registerOnSharedPreferenceChangeListener(this.f12277b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static a0 a(Context context, String str) {
        a0 a0Var;
        SharedPreferences sharedPreferences;
        if (!((!g.a() || str.startsWith("direct_boot:")) ? true : g.a(context))) {
            return null;
        }
        synchronized (a0.class) {
            a0Var = f12275f.get(str);
            if (a0Var == null) {
                if (str.startsWith("direct_boot:")) {
                    if (g.a()) {
                        context = context.createDeviceProtectedStorageContext();
                    }
                    sharedPreferences = context.getSharedPreferences(str.substring(12), 0);
                } else {
                    sharedPreferences = context.getSharedPreferences(str, 0);
                }
                a0Var = new a0(sharedPreferences);
                f12275f.put(str, a0Var);
            }
        }
        return a0Var;
    }

    @Override // com.google.android.gms.internal.vision.n
    public final Object zzb(String str) {
        Map<String, ?> map = this.f12279d;
        if (map == null) {
            synchronized (this.f12278c) {
                map = this.f12279d;
                if (map == null) {
                    map = this.f12276a.getAll();
                    this.f12279d = map;
                }
            }
        }
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static synchronized void a() {
        synchronized (a0.class) {
            for (a0 a0Var : f12275f.values()) {
                a0Var.f12276a.unregisterOnSharedPreferenceChangeListener(a0Var.f12277b);
            }
            f12275f.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f12278c) {
            this.f12279d = null;
            x.c();
        }
        synchronized (this) {
            Iterator<k> it = this.f12280e.iterator();
            while (it.hasNext()) {
                it.next().a();
            }
        }
    }
}
