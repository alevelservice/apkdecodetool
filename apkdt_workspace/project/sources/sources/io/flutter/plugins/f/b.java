package io.flutter.plugins.f;

import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.ValueCallback;
import g.a.c.a.j;
import g.a.c.a.k;

/* compiled from: FlutterCookieManager.java */
/* loaded from: classes2.dex */
class b implements k.c {

    /* renamed from: e, reason: collision with root package name */
    private final k f19369e;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlutterCookieManager.java */
    /* loaded from: classes2.dex */
    public static class a implements ValueCallback<Boolean> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f19370a;

        /* renamed from: b, reason: collision with root package name */
        final /* synthetic */ boolean f19371b;

        a(k.d dVar, boolean z) {
            this.f19370a = dVar;
            this.f19371b = z;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Boolean bool) {
            this.f19370a.a(Boolean.valueOf(this.f19371b));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(g.a.c.a.c cVar) {
        this.f19369e = new k(cVar, "plugins.flutter.io/cookie_manager");
        this.f19369e.a(this);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void a() {
        this.f19369e.a((k.c) null);
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        String str = jVar.f18223a;
        if (((str.hashCode() == 928375682 && str.equals("clearCookies")) ? (char) 0 : (char) 65535) != 0) {
            dVar.a();
        } else {
            a(dVar);
        }
    }

    private static void a(k.d dVar) {
        CookieManager cookieManager = CookieManager.getInstance();
        boolean hasCookies = cookieManager.hasCookies();
        if (Build.VERSION.SDK_INT >= 21) {
            cookieManager.removeAllCookies(new a(dVar, hasCookies));
        } else {
            cookieManager.removeAllCookie();
            dVar.a(Boolean.valueOf(hasCookies));
        }
    }
}
