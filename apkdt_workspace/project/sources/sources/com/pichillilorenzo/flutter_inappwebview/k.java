package com.pichillilorenzo.flutter_inappwebview;

import android.webkit.ValueCallback;
import android.webkit.WebStorage;
import g.a.c.a.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* compiled from: MyWebStorage.java */
/* loaded from: classes2.dex */
public class k implements k.c {

    /* renamed from: e, reason: collision with root package name */
    public static g.a.c.a.k f16633e;

    /* renamed from: f, reason: collision with root package name */
    public static WebStorage f16634f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyWebStorage.java */
    /* loaded from: classes2.dex */
    public class a implements ValueCallback<Map> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16635a;

        a(k kVar, k.d dVar) {
            this.f16635a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Map map) {
            ArrayList arrayList = new ArrayList();
            Iterator it = map.keySet().iterator();
            while (it.hasNext()) {
                WebStorage.Origin origin = (WebStorage.Origin) map.get(it.next());
                HashMap hashMap = new HashMap();
                hashMap.put("origin", origin.getOrigin());
                hashMap.put("quota", Long.valueOf(origin.getQuota()));
                hashMap.put("usage", Long.valueOf(origin.getUsage()));
                arrayList.add(hashMap);
            }
            this.f16635a.a(arrayList);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyWebStorage.java */
    /* loaded from: classes2.dex */
    public class b implements ValueCallback<Long> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16636a;

        b(k kVar, k.d dVar) {
            this.f16636a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Long l2) {
            this.f16636a.a(l2);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyWebStorage.java */
    /* loaded from: classes2.dex */
    public class c implements ValueCallback<Long> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16637a;

        c(k kVar, k.d dVar) {
            this.f16637a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Long l2) {
            this.f16637a.a(l2);
        }
    }

    public k(g.a.c.a.c cVar) {
        f16633e = new g.a.c.a.k(cVar, "com.pichillilorenzo/flutter_inappwebview_webstoragemanager");
        f16633e.a(this);
        f16634f = WebStorage.getInstance();
    }

    public void a(k.d dVar) {
        f16634f.getOrigins(new a(this, dVar));
    }

    public void b(String str, k.d dVar) {
        f16634f.getUsageForOrigin(str, new c(this, dVar));
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1308548435:
                if (str.equals("getQuotaForOrigin")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -1117417280:
                if (str.equals("deleteAllData")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -876677967:
                if (str.equals("deleteOrigin")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case -165580329:
                if (str.equals("getOrigins")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 843309476:
                if (str.equals("getUsageForOrigin")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            a(dVar);
            return;
        }
        if (c2 == 1) {
            f16634f.deleteAllData();
            dVar.a(true);
            return;
        }
        if (c2 == 2) {
            f16634f.deleteOrigin((String) jVar.a("origin"));
            dVar.a(true);
        } else if (c2 == 3) {
            a((String) jVar.a("origin"), dVar);
        } else if (c2 != 4) {
            dVar.a();
        } else {
            b((String) jVar.a("origin"), dVar);
        }
    }

    public void a(String str, k.d dVar) {
        f16634f.getQuotaForOrigin(str, new b(this, dVar));
    }

    public void a() {
        f16633e.a((k.c) null);
    }
}
