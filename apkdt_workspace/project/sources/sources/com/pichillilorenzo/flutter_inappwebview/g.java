package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import android.content.Context;
import android.net.Uri;
import android.os.Build;
import android.webkit.ValueCallback;
import g.a.c.a.c;
import io.flutter.embedding.engine.g.a;
import io.flutter.view.FlutterView;

/* compiled from: InAppWebViewFlutterPlugin.java */
/* loaded from: classes2.dex */
public class g implements io.flutter.embedding.engine.g.a, io.flutter.embedding.engine.g.c.a {

    /* renamed from: e, reason: collision with root package name */
    public static f f16607e;

    /* renamed from: f, reason: collision with root package name */
    public static e f16608f;

    /* renamed from: g, reason: collision with root package name */
    public static a f16609g;

    /* renamed from: h, reason: collision with root package name */
    public static h f16610h;

    /* renamed from: i, reason: collision with root package name */
    public static j f16611i;

    /* renamed from: j, reason: collision with root package name */
    public static d f16612j;

    /* renamed from: k, reason: collision with root package name */
    public static k f16613k;

    /* renamed from: l, reason: collision with root package name */
    public static ValueCallback<Uri> f16614l;
    public static ValueCallback<Uri[]> m;

    private void a(Context context, c cVar, Activity activity, io.flutter.plugin.platform.h hVar, FlutterView flutterView) {
        q.f16638a = context;
        q.f16643f = activity;
        q.f16640c = cVar;
        f16607e = new f(cVar);
        f16608f = new e(cVar);
        f16609g = new a(cVar);
        hVar.a("com.pichillilorenzo/flutter_inappwebview", new com.pichillilorenzo.flutter_inappwebview.InAppWebView.d(cVar, flutterView));
        f16610h = new h(cVar);
        f16611i = new j(cVar);
        f16613k = new k(cVar);
        if (Build.VERSION.SDK_INT >= 26) {
            f16612j = new d(cVar);
        }
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        q.f16642e = cVar;
        q.f16643f = cVar.getActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        q.f16641d = bVar.c();
        a(bVar.a(), bVar.b(), q.f16643f, bVar.e(), null);
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        q.f16642e = null;
        q.f16643f = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        q.f16642e = null;
        q.f16643f = null;
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        f fVar = f16607e;
        if (fVar != null) {
            fVar.a();
            f16607e = null;
        }
        e eVar = f16608f;
        if (eVar != null) {
            eVar.a();
            f16608f = null;
        }
        a aVar = f16609g;
        if (aVar != null) {
            aVar.a();
            f16609g = null;
        }
        j jVar = f16611i;
        if (jVar != null) {
            jVar.a();
            f16611i = null;
        }
        k kVar = f16613k;
        if (kVar != null) {
            kVar.a();
            f16613k = null;
        }
        if (f16612j != null && Build.VERSION.SDK_INT >= 26) {
            f16612j.a();
            f16612j = null;
        }
        h hVar = f16610h;
        if (hVar != null) {
            hVar.a();
            f16610h = null;
        }
        f16614l = null;
        m = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        q.f16642e = cVar;
        q.f16643f = cVar.getActivity();
    }
}
