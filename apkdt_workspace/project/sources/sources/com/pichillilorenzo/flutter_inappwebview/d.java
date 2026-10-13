package com.pichillilorenzo.flutter_inappwebview;

import android.webkit.WebViewDatabase;
import androidx.annotation.RequiresApi;
import com.pichillilorenzo.flutter_inappwebview.c.c;
import g.a.c.a.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

/* compiled from: CredentialDatabaseHandler.java */
@RequiresApi(api = 26)
/* loaded from: classes2.dex */
public class d implements k.c {

    /* renamed from: e, reason: collision with root package name */
    public static g.a.c.a.k f16602e;

    /* renamed from: f, reason: collision with root package name */
    public static c f16603f;

    public d(g.a.c.a.c cVar) {
        f16602e = new g.a.c.a.k(cVar, "com.pichillilorenzo/flutter_inappwebview_credential_database");
        f16602e.a(this);
        f16603f = c.a(q.f16638a);
    }

    public void a() {
        f16602e.a((k.c) null);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1851697792:
                if (str.equals("clearAllAuthCredentials")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -410271914:
                if (str.equals("getHttpAuthCredentials")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 589173355:
                if (str.equals("removeHttpAuthCredential")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 998955721:
                if (str.equals("setHttpAuthCredential")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1084504936:
                if (str.equals("removeHttpAuthCredentials")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1930845769:
                if (str.equals("getAllAuthCredentials")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            ArrayList arrayList = new ArrayList();
            for (com.pichillilorenzo.flutter_inappwebview.c.e eVar : f16603f.f16592a.a()) {
                ArrayList arrayList2 = new ArrayList();
                Iterator<com.pichillilorenzo.flutter_inappwebview.c.a> it = f16603f.f16593b.a(eVar.f16595a).iterator();
                while (it.hasNext()) {
                    arrayList2.add(it.next().a());
                }
                HashMap hashMap = new HashMap();
                hashMap.put("protectionSpace", eVar.a());
                hashMap.put("credentials", arrayList2);
                arrayList.add(hashMap);
            }
            dVar.a(arrayList);
            return;
        }
        if (c2 == 1) {
            String str2 = (String) jVar.a("host");
            String str3 = (String) jVar.a("protocol");
            String str4 = (String) jVar.a("realm");
            Integer num = (Integer) jVar.a("port");
            ArrayList arrayList3 = new ArrayList();
            Iterator<com.pichillilorenzo.flutter_inappwebview.c.a> it2 = f16603f.a(str2, str3, str4, num).iterator();
            while (it2.hasNext()) {
                arrayList3.add(it2.next().a());
            }
            dVar.a(arrayList3);
            return;
        }
        if (c2 == 2) {
            f16603f.b((String) jVar.a("host"), (String) jVar.a("protocol"), (String) jVar.a("realm"), (Integer) jVar.a("port"), (String) jVar.a("username"), (String) jVar.a("password"));
            dVar.a(true);
            return;
        }
        if (c2 == 3) {
            f16603f.a((String) jVar.a("host"), (String) jVar.a("protocol"), (String) jVar.a("realm"), (Integer) jVar.a("port"), (String) jVar.a("username"), (String) jVar.a("password"));
            dVar.a(true);
            return;
        }
        if (c2 != 4) {
            if (c2 != 5) {
                dVar.a();
                return;
            }
            f16603f.a();
            WebViewDatabase.getInstance(q.f16638a).clearHttpAuthUsernamePassword();
            dVar.a(true);
            return;
        }
        f16603f.b((String) jVar.a("host"), (String) jVar.a("protocol"), (String) jVar.a("realm"), (Integer) jVar.a("port"));
        dVar.a(true);
    }
}
