package com.mapbox.android.telemetry;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import java.util.HashMap;
import java.util.Map;

/* compiled from: TelemetryEnabler.java */
/* loaded from: classes2.dex */
public class j0 {

    /* renamed from: c, reason: collision with root package name */
    static final Map<c, Boolean> f15611c = new a();

    /* renamed from: d, reason: collision with root package name */
    private static final Map<String, c> f15612d = new b();

    /* renamed from: a, reason: collision with root package name */
    private boolean f15613a;

    /* renamed from: b, reason: collision with root package name */
    private c f15614b = c.ENABLED;

    /* compiled from: TelemetryEnabler.java */
    /* loaded from: classes2.dex */
    static class a extends HashMap<c, Boolean> {
        a() {
            put(c.ENABLED, true);
            put(c.DISABLED, false);
        }
    }

    /* compiled from: TelemetryEnabler.java */
    /* loaded from: classes2.dex */
    static class b extends HashMap<String, c> {
        b() {
            put(c.ENABLED.name(), c.ENABLED);
            put(c.DISABLED.name(), c.DISABLED);
        }
    }

    /* compiled from: TelemetryEnabler.java */
    /* loaded from: classes2.dex */
    public enum c {
        ENABLED,
        DISABLED
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public j0(boolean z) {
        this.f15613a = true;
        this.f15613a = z;
    }

    public static c a(c cVar) {
        Context context = x.n;
        if (context == null) {
            return cVar;
        }
        SharedPreferences.Editor edit = l0.i(context).edit();
        edit.putString("mapboxTelemetryState", cVar.name());
        edit.apply();
        return cVar;
    }

    public static c b() {
        Context context = x.n;
        if (context == null) {
            return f15612d.get(c.ENABLED.name());
        }
        return f15612d.get(l0.i(context).getString("mapboxTelemetryState", c.ENABLED.name()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c a() {
        if (this.f15613a) {
            return b();
        }
        return this.f15614b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(Context context) {
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo != null && applicationInfo.metaData != null) {
                return applicationInfo.metaData.getBoolean("com.mapbox.EnableEvents", true);
            }
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
        }
        return true;
    }
}
