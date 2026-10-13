package io.flutter.plugins.a;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.wifi.WifiManager;
import g.a.c.a.d;
import g.a.c.a.k;
import io.flutter.embedding.engine.g.a;

/* compiled from: ConnectivityPlugin.java */
/* loaded from: classes2.dex */
public class d implements io.flutter.embedding.engine.g.a {

    /* renamed from: e, reason: collision with root package name */
    private k f19339e;

    /* renamed from: f, reason: collision with root package name */
    private g.a.c.a.d f19340f;

    private void a(g.a.c.a.c cVar, Context context) {
        this.f19339e = new k(cVar, "plugins.flutter.io/connectivity");
        this.f19340f = new g.a.c.a.d(cVar, "plugins.flutter.io/connectivity_status");
        a aVar = new a((ConnectivityManager) context.getSystemService("connectivity"), (WifiManager) context.getApplicationContext().getSystemService("wifi"));
        c cVar2 = new c(aVar);
        b bVar = new b(context, aVar);
        this.f19339e.a(cVar2);
        this.f19340f.a(bVar);
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onAttachedToEngine(a.b bVar) {
        a(bVar.b(), bVar.a());
    }

    @Override // io.flutter.embedding.engine.g.a
    public void onDetachedFromEngine(a.b bVar) {
        a();
    }

    private void a() {
        this.f19339e.a((k.c) null);
        this.f19340f.a((d.InterfaceC0212d) null);
        this.f19339e = null;
        this.f19340f = null;
    }
}
