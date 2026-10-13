package h.a.a;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import g.a.c.a.d;
import g.a.c.a.j;
import g.a.c.a.k;
import g.a.c.a.m;

/* compiled from: UniLinksPlugin.java */
/* loaded from: classes2.dex */
public class a implements k.c, d.InterfaceC0212d, m.b {

    /* renamed from: e, reason: collision with root package name */
    private BroadcastReceiver f18368e;

    /* renamed from: f, reason: collision with root package name */
    private m.d f18369f;

    /* renamed from: g, reason: collision with root package name */
    private String f18370g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: UniLinksPlugin.java */
    /* renamed from: h.a.a.a$a, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public class C0220a extends BroadcastReceiver {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ d.b f18371a;

        C0220a(a aVar, d.b bVar) {
            this.f18371a = bVar;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String dataString = intent.getDataString();
            if (dataString == null) {
                this.f18371a.a("UNAVAILABLE", "Link unavailable", null);
            } else {
                this.f18371a.a(dataString);
            }
        }
    }

    private a(m.d dVar) {
        this.f18369f = dVar;
        a(dVar.a(), dVar.b().getIntent(), true);
    }

    public static void a(m.d dVar) {
        if (dVar.b() == null) {
            return;
        }
        a aVar = new a(dVar);
        new k(dVar.d(), "uni_links/messages").a(aVar);
        new d(dVar.d(), "uni_links/events").a(aVar);
        dVar.a(aVar);
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        if (jVar.f18223a.equals("getInitialLink")) {
            dVar.a(this.f18370g);
        } else {
            dVar.a();
        }
    }

    @Override // g.a.c.a.m.b
    public boolean onNewIntent(Intent intent) {
        a(this.f18369f.a(), intent, false);
        return false;
    }

    private void a(Context context, Intent intent, Boolean bool) {
        String action = intent.getAction();
        String dataString = intent.getDataString();
        if ("android.intent.action.VIEW".equals(action)) {
            if (bool.booleanValue()) {
                this.f18370g = dataString;
            }
            BroadcastReceiver broadcastReceiver = this.f18368e;
            if (broadcastReceiver != null) {
                broadcastReceiver.onReceive(context, intent);
            }
        }
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj, d.b bVar) {
        this.f18368e = a(bVar);
    }

    @Override // g.a.c.a.d.InterfaceC0212d
    public void a(Object obj) {
        this.f18368e = null;
    }

    private BroadcastReceiver a(d.b bVar) {
        return new C0220a(this, bVar);
    }
}
