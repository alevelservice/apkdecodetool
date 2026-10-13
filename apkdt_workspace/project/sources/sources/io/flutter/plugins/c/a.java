package io.flutter.plugins.c;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Build;
import g.a.c.a.c;
import g.a.c.a.j;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;
import java.util.HashMap;

/* compiled from: PackageInfoPlugin.java */
/* loaded from: classes2.dex */
public class a implements k.c, io.flutter.embedding.engine.g.a {

    /* renamed from: e, reason: collision with root package name */
    private Context f19345e;

    /* renamed from: f, reason: collision with root package name */
    private k f19346f;

    private void a(Context context, c cVar) {
        this.f19345e = context;
        this.f19346f = new k(cVar, "plugins.flutter.io/package_info");
        this.f19346f.a(this);
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        this.f19345e = null;
        this.f19346f.a((k.c) null);
        this.f19346f = null;
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        try {
            if (jVar.f18223a.equals("getAll")) {
                PackageManager packageManager = this.f19345e.getPackageManager();
                PackageInfo packageInfo = packageManager.getPackageInfo(this.f19345e.getPackageName(), 0);
                HashMap hashMap = new HashMap();
                hashMap.put("appName", packageInfo.applicationInfo.loadLabel(packageManager).toString());
                hashMap.put("packageName", this.f19345e.getPackageName());
                hashMap.put("version", packageInfo.versionName);
                hashMap.put("buildNumber", String.valueOf(a(packageInfo)));
                dVar.a(hashMap);
            } else {
                dVar.a();
            }
        } catch (PackageManager.NameNotFoundException e2) {
            dVar.a("Name not found", e2.getMessage(), null);
        }
    }

    private static long a(PackageInfo packageInfo) {
        if (Build.VERSION.SDK_INT >= 28) {
            return packageInfo.getLongVersionCode();
        }
        return packageInfo.versionCode;
    }
}
