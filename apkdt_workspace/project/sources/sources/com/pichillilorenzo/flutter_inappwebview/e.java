package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.c;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import g.a.c.a.k;
import java.util.HashMap;
import java.util.Map;

/* compiled from: HeadlessInAppWebViewManager.java */
/* loaded from: classes2.dex */
public class e implements k.c {

    /* renamed from: e, reason: collision with root package name */
    public g.a.c.a.k f16604e;

    /* renamed from: f, reason: collision with root package name */
    Map<String, c> f16605f = new HashMap();

    public e(g.a.c.a.c cVar) {
        this.f16604e = new g.a.c.a.k(cVar, "com.pichillilorenzo/flutter_headless_inappwebview");
        this.f16604e.a(this);
    }

    public void a(Activity activity, String str, HashMap<String, Object> hashMap) {
        this.f16605f.put(str, new c(q.f16640c, activity, str, hashMap, null));
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        Activity activity = q.f16643f;
        String str = (String) jVar.a("uuid");
        String str2 = jVar.f18223a;
        int hashCode = str2.hashCode();
        if (hashCode != 368876996) {
            if (hashCode == 454282817 && str2.equals("disposeHeadlessWebView")) {
                c2 = 1;
            }
            c2 = 65535;
        } else {
            if (str2.equals("createHeadlessWebView")) {
                c2 = 0;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            a(activity, str, (HashMap) jVar.a(ZdocRecordService.PARAMES));
            dVar.a(true);
        } else if (c2 != 1) {
            dVar.a();
        } else {
            a(str);
            dVar.a(true);
        }
    }

    public void a(String str) {
        if (this.f16605f.containsKey(str)) {
            this.f16605f.get(str).dispose();
            this.f16605f.remove(str);
        }
    }

    public void a() {
        this.f16604e.a((k.c) null);
    }
}
