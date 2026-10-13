package com.pichillilorenzo.flutter_inappwebview;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.ChromeCustomTabsActivity;
import com.pichillilorenzo.flutter_inappwebview.ChromeCustomTabs.b;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import g.a.c.a.c;
import g.a.c.a.k;
import java.io.Serializable;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: ChromeSafariBrowserManager.java */
/* loaded from: classes2.dex */
public class a implements k.c {

    /* renamed from: e, reason: collision with root package name */
    public g.a.c.a.k f16563e;

    public a(c cVar) {
        this.f16563e = new g.a.c.a.k(cVar, "com.pichillilorenzo/flutter_chromesafaribrowser");
        this.f16563e.a(this);
    }

    public void a(Activity activity, String str, String str2, HashMap<String, Object> hashMap, List<HashMap<String, Object>> list, String str3, Map<String, String> map, HashMap<String, Object> hashMap2, HashMap<String, Object> hashMap3, Integer num, k.d dVar) {
        Intent intent;
        Bundle bundle = new Bundle();
        bundle.putString("fromActivity", activity.getClass().getName());
        bundle.putString(HummerConstants.URL, str2);
        bundle.putBoolean("isData", false);
        bundle.putString("uuid", str);
        bundle.putSerializable("options", hashMap);
        bundle.putSerializable("menuItemList", (Serializable) list);
        bundle.putSerializable("headers", (Serializable) map);
        bundle.putSerializable("contextMenu", hashMap3);
        bundle.putInt("windowId", num != null ? num.intValue() : -1);
        if (b.c(activity)) {
            intent = new Intent(activity, (Class<?>) ChromeCustomTabsActivity.class);
        } else if (b.c(activity) || str3 == null) {
            intent = null;
        } else {
            bundle.putString("uuid", str3);
            if (hashMap2 != null) {
                bundle.putSerializable("options", hashMap2);
            } else {
                bundle.putSerializable("options", (Serializable) new com.pichillilorenzo.flutter_inappwebview.InAppBrowser.a().a());
            }
            intent = new Intent(activity, (Class<?>) InAppBrowserActivity.class);
        }
        if (intent != null) {
            intent.putExtras(bundle);
            activity.startActivity(intent);
            dVar.a(true);
            return;
        }
        dVar.a("ChromeBrowserManager", "No WebView fallback declared.", null);
    }

    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        Activity activity = q.f16643f;
        String str = (String) jVar.a("uuid");
        String str2 = jVar.f18223a;
        int hashCode = str2.hashCode();
        if (hashCode != 3417674) {
            if (hashCode == 444517567 && str2.equals("isAvailable")) {
                c2 = 1;
            }
            c2 = 65535;
        } else {
            if (str2.equals("open")) {
                c2 = 0;
            }
            c2 = 65535;
        }
        if (c2 == 0) {
            a(activity, str, (String) jVar.a(HummerConstants.URL), (HashMap) jVar.a("options"), (List) jVar.a("menuItemList"), (String) jVar.a("uuidFallback"), (Map) jVar.a("headersFallback"), (HashMap) jVar.a("optionsFallback"), (HashMap) jVar.a("contextMenuFallback"), (Integer) jVar.a("windowIdFallback"), dVar);
        } else if (c2 != 1) {
            dVar.a();
        } else {
            dVar.a(Boolean.valueOf(b.c(activity)));
        }
    }

    public void a() {
        this.f16563e.a((k.c) null);
    }
}
