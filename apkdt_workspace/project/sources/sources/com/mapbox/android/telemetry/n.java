package com.mapbox.android.telemetry;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import i.s;
import i.z;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ConfigurationClient.java */
/* loaded from: classes2.dex */
public class n implements i.f {

    /* renamed from: f, reason: collision with root package name */
    private static final Map<o, String> f15636f = new a();

    /* renamed from: a, reason: collision with root package name */
    private final Context f15637a;

    /* renamed from: b, reason: collision with root package name */
    private final String f15638b;

    /* renamed from: c, reason: collision with root package name */
    private final String f15639c;

    /* renamed from: d, reason: collision with root package name */
    private final i.w f15640d;

    /* renamed from: e, reason: collision with root package name */
    private final List<m> f15641e = new CopyOnWriteArrayList();

    /* compiled from: ConfigurationClient.java */
    /* loaded from: classes2.dex */
    static class a extends HashMap<o, String> {
        a() {
            put(o.COM, "api.mapbox.com");
            put(o.STAGING, "api.mapbox.com");
            put(o.CHINA, "api.mapbox.cn");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public n(Context context, String str, String str2, i.w wVar) {
        this.f15637a = context;
        this.f15638b = str;
        this.f15639c = str2;
        this.f15640d = wVar;
    }

    private void c() {
        SharedPreferences.Editor edit = l0.i(this.f15637a).edit();
        edit.putLong("mapboxConfigSyncTimestamp", System.currentTimeMillis());
        edit.apply();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a(m mVar) {
        this.f15641e.add(mVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void b() {
        i.s a2 = a(this.f15637a, this.f15639c);
        z.a aVar = new z.a();
        aVar.a(a2);
        aVar.b("User-Agent", this.f15638b);
        this.f15640d.a(aVar.a()).a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a() {
        return System.currentTimeMillis() - l0.i(this.f15637a).getLong("mapboxConfigSyncTimestamp", 0L) >= 86400000;
    }

    @Override // i.f
    public void a(i.e eVar, IOException iOException) {
        c();
    }

    @Override // i.f
    public void a(i.e eVar, i.b0 b0Var) {
        i.c0 i2;
        c();
        if (b0Var == null || (i2 = b0Var.i()) == null) {
            return;
        }
        for (m mVar : this.f15641e) {
            if (mVar != null) {
                mVar.a(i2.m());
            }
        }
    }

    private static i.s a(Context context, String str) {
        s.a aVar = new s.a();
        aVar.e("https");
        aVar.c(a(context));
        aVar.a("events-config");
        aVar.b("access_token", str);
        return aVar.a();
    }

    private static String a(Context context) {
        q a2 = new p().a();
        try {
            ApplicationInfo applicationInfo = context.getPackageManager().getApplicationInfo(context.getPackageName(), 128);
            if (applicationInfo == null || applicationInfo.metaData == null) {
                return "api.mapbox.com";
            }
            return f15636f.get(a2.a(applicationInfo.metaData).b());
        } catch (PackageManager.NameNotFoundException e2) {
            e2.getMessage();
            return "api.mapbox.com";
        }
    }
}
