package com.example.native_webview;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import com.google.gson.Gson;
import g.a.c.a.d;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;
import io.flutter.embedding.engine.g.a;
import java.util.ArrayList;
import java.util.Map;

/* compiled from: NativeWebviewPlugin.java */
/* loaded from: classes.dex */
public class e implements io.flutter.embedding.engine.g.a, k.c, m.a, d.InterfaceC0212d, io.flutter.embedding.engine.g.c.a {

    /* renamed from: k, reason: collision with root package name */
    public static k f3443k;

    /* renamed from: l, reason: collision with root package name */
    public static g.a.c.a.d f3444l;

    /* renamed from: e, reason: collision with root package name */
    private Activity f3445e;

    /* renamed from: f, reason: collision with root package name */
    private k.d f3446f;

    /* renamed from: g, reason: collision with root package name */
    private d f3447g;

    /* renamed from: h, reason: collision with root package name */
    private BroadcastReceiver f3448h;

    /* renamed from: i, reason: collision with root package name */
    private Context f3449i;

    /* renamed from: j, reason: collision with root package name */
    private io.flutter.embedding.engine.g.c.c f3450j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: NativeWebviewPlugin.java */
    /* loaded from: classes.dex */
    public class a extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ d.b f3451a;

        a(e eVar, d.b bVar) {
            this.f3451a = bVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            this.f3451a.a(true);
        }
    }

    private void a(Context context, g.a.c.a.c cVar) {
        this.f3449i = context;
        f3443k = new k(cVar, "native_webview");
        f3444l = new g.a.c.a.d(cVar, "native_webview_stream");
        f3443k.a(this);
        f3444l.a(this);
    }

    private d b(Object obj) {
        if (!(obj instanceof Map)) {
            return null;
        }
        Gson gson = new Gson();
        return (d) gson.a(gson.b(obj), d.class);
    }

    private void c() {
        Intent intent = new Intent(this.f3445e, (Class<?>) WebViewActivity.class);
        intent.putExtra(WebViewActivity.EXTRA_ACCESS_TOKEN, this.f3447g.getToken());
        intent.putExtra(WebViewActivity.EXTRA_FULL_URL, this.f3447g.getFullURL());
        intent.putExtra(WebViewActivity.EXTRA_PAGE_TITLE, this.f3447g.getTitle());
        intent.putStringArrayListExtra(WebViewActivity.EXTRA_ROOT_URL, (ArrayList) this.f3447g.getRootURL());
        intent.putExtra(WebViewActivity.EXTRA_ERROR_MESSAGE, this.f3447g.getErrorMessage());
        intent.putExtra(WebViewActivity.EXTRA_FULL_SCREEN_WEB_VIEW, this.f3447g.getShowInFullScreen());
        intent.putExtra(WebViewActivity.EXTRA_APP_VERSION, this.f3447g.getAppVersion());
        this.f3445e.startActivityForResult(intent, 1001);
    }

    @Override // g.a.c.a.m.a
    public boolean onActivityResult(int i2, int i3, Intent intent) {
        if (i2 != 1001) {
            return false;
        }
        if (i3 == -1) {
            this.f3446f.a(intent.getStringExtra("success"));
        }
        a();
        return true;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onAttachedToActivity(io.flutter.embedding.engine.g.c.c cVar) {
        this.f3450j = cVar;
        this.f3445e = cVar.getActivity();
        cVar.a(this);
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.a(), bVar.b());
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivity() {
        io.flutter.embedding.engine.g.c.c cVar = this.f3450j;
        if (cVar != null) {
            cVar.b(this);
            this.f3450j = null;
        }
        this.f3445e = null;
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onDetachedFromActivityForConfigChanges() {
        onDetachedFromActivity();
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        this.f3449i = null;
        k kVar = f3443k;
        if (kVar != null) {
            kVar.a((k.c) null);
            f3443k = null;
        }
        g.a.c.a.d dVar = f3444l;
        if (dVar != null) {
            dVar.a((d.InterfaceC0212d) null);
            f3444l = null;
        }
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        if (jVar.f18223a.equals("showWebView")) {
            this.f3446f = dVar;
            this.f3447g = b(jVar.f18224b);
            if (this.f3447g == null) {
                this.f3446f.a("INVALID_OPTIONS", "Plugin not passing a map as parameter: " + jVar.f18224b.toString(), null);
                a();
                return;
            }
            c();
            dVar.a("success");
            return;
        }
        if (jVar.f18223a.equals("closeWebView")) {
            b();
        } else {
            dVar.a();
        }
    }

    @Override // io.flutter.embedding.engine.g.c.a
    public void onReattachedToActivityForConfigChanges(io.flutter.embedding.engine.g.c.c cVar) {
        onAttachedToActivity(cVar);
    }

    private void b() {
        Activity activity = this.f3445e;
        if (activity != null) {
            activity.finishActivity(1001);
        }
    }

    private void a() {
        this.f3446f = null;
        this.f3447g = null;
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj, d.b bVar) {
        this.f3448h = a(bVar);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction(WebViewActivity.BROADCAST_ACTION);
        this.f3449i.registerReceiver(this.f3448h, intentFilter);
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj) {
        this.f3449i.unregisterReceiver(this.f3448h);
        this.f3448h = null;
    }

    private BroadcastReceiver a(d.b bVar) {
        return new a(this, bVar);
    }
}
