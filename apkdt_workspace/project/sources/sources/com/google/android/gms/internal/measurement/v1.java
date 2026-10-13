package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import androidx.annotation.GuardedBy;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class v1 implements h1 {

    /* renamed from: f, reason: collision with root package name */
    @GuardedBy("SharedPreferencesLoader.class")
    static final Map<String, v1> f12141f = new HashMap();

    /* renamed from: a, reason: collision with root package name */
    private final SharedPreferences f12142a;

    /* renamed from: d, reason: collision with root package name */
    private volatile Map<String, ?> f12145d;

    /* renamed from: b, reason: collision with root package name */
    private final SharedPreferences.OnSharedPreferenceChangeListener f12143b = new SharedPreferences.OnSharedPreferenceChangeListener(this) { // from class: com.google.android.gms.internal.measurement.y1

        /* renamed from: a, reason: collision with root package name */
        private final v1 f12216a;

        /* JADX INFO: Access modifiers changed from: package-private */
        {
            this.f12216a = this;
        }

        @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
            this.f12216a.a(sharedPreferences, str);
        }
    };

    /* renamed from: c, reason: collision with root package name */
    private final Object f12144c = new Object();

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private final List<i1> f12146e = new ArrayList();

    private v1(SharedPreferences sharedPreferences) {
        this.f12142a = sharedPreferences;
        this.f12142a.registerOnSharedPreferenceChangeListener(this.f12143b);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static v1 a(Context context, String str) {
        v1 v1Var;
        SharedPreferences sharedPreferences;
        if (!((!e1.a() || str.startsWith("direct_boot:")) ? true : e1.a(context))) {
            return null;
        }
        synchronized (v1.class) {
            v1Var = f12141f.get(str);
            if (v1Var == null) {
                if (str.startsWith("direct_boot:")) {
                    if (e1.a()) {
                        context = context.createDeviceProtectedStorageContext();
                    }
                    sharedPreferences = context.getSharedPreferences(str.substring(12), 0);
                } else {
                    sharedPreferences = context.getSharedPreferences(str, 0);
                }
                v1Var = new v1(sharedPreferences);
                f12141f.put(str, v1Var);
            }
        }
        return v1Var;
    }

    @Override // com.google.android.gms.internal.measurement.h1
    public final Object a(String str) {
        Map<String, ?> map = this.f12145d;
        if (map == null) {
            synchronized (this.f12144c) {
                map = this.f12145d;
                if (map == null) {
                    map = this.f12142a.getAll();
                    this.f12145d = map;
                }
            }
        }
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f12144c) {
            this.f12145d = null;
            p1.c();
        }
        synchronized (this) {
            Iterator<i1> it = this.f12146e.iterator();
            while (it.hasNext()) {
                it.next().zzrk();
            }
        }
    }
}
