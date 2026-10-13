package com.pichillilorenzo.flutter_inappwebview;

import android.os.Build;
import android.webkit.CookieManager;
import android.webkit.CookieSyncManager;
import android.webkit.ValueCallback;
import com.ap.zoloz.hummer.biz.HummerConstants;
import g.a.c.a.k;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

/* compiled from: MyCookieManager.java */
/* loaded from: classes2.dex */
public class j implements k.c {

    /* renamed from: e, reason: collision with root package name */
    public static g.a.c.a.k f16628e;

    /* renamed from: f, reason: collision with root package name */
    public static CookieManager f16629f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyCookieManager.java */
    /* loaded from: classes2.dex */
    public static class a implements ValueCallback<Boolean> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16630a;

        a(k.d dVar) {
            this.f16630a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Boolean bool) {
            this.f16630a.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyCookieManager.java */
    /* loaded from: classes2.dex */
    public static class b implements ValueCallback<Boolean> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16631a;

        b(k.d dVar) {
            this.f16631a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Boolean bool) {
            this.f16631a.a(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: MyCookieManager.java */
    /* loaded from: classes2.dex */
    public static class c implements ValueCallback<Boolean> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16632a;

        c(k.d dVar) {
            this.f16632a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Boolean bool) {
            this.f16632a.a(true);
        }
    }

    public j(g.a.c.a.c cVar) {
        f16628e = new g.a.c.a.k(cVar, "com.pichillilorenzo/flutter_inappwebview_cookiemanager");
        f16628e.a(this);
        f16629f = CookieManager.getInstance();
    }

    public static void a(String str, String str2, String str3, String str4, String str5, Long l2, Integer num, Boolean bool, Boolean bool2, String str6, k.d dVar) {
        String str7 = str2 + "=" + str3 + "; Domain=" + str4 + "; Path=" + str5;
        if (l2 != null) {
            str7 = str7 + "; Expires=" + a(l2);
        }
        if (num != null) {
            str7 = str7 + "; Max-Age=" + num.toString();
        }
        if (bool != null && bool.booleanValue()) {
            str7 = str7 + "; Secure";
        }
        if (bool2 != null && bool2.booleanValue()) {
            str7 = str7 + "; HttpOnly";
        }
        if (str6 != null) {
            str7 = str7 + "; SameSite=" + str6;
        }
        String str8 = str7 + ";";
        if (Build.VERSION.SDK_INT >= 21) {
            f16629f.setCookie(str, str8, new a(dVar));
            f16629f.flush();
            return;
        }
        CookieSyncManager createInstance = CookieSyncManager.createInstance(q.f16638a);
        createInstance.startSync();
        f16629f.setCookie(str, str8);
        dVar.a(true);
        createInstance.stopSync();
        createInstance.sync();
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1222815761:
                if (str.equals("deleteCookie")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 126640486:
                if (str.equals("setCookie")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 747417188:
                if (str.equals("deleteCookies")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 822411705:
                if (str.equals("deleteAllCookies")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case 1989049945:
                if (str.equals("getCookies")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        if (c2 == 0) {
            String str2 = (String) jVar.a(HummerConstants.URL);
            String str3 = (String) jVar.a("name");
            String str4 = (String) jVar.a(HummerConstants.VALUE);
            String str5 = (String) jVar.a("domain");
            String str6 = (String) jVar.a("path");
            String str7 = (String) jVar.a("expiresDate");
            a(str2, str3, str4, str5, str6, str7 != null ? new Long(str7) : null, (Integer) jVar.a("maxAge"), (Boolean) jVar.a("isSecure"), (Boolean) jVar.a("isHttpOnly"), (String) jVar.a("sameSite"), dVar);
            return;
        }
        if (c2 == 1) {
            dVar.a(a((String) jVar.a(HummerConstants.URL)));
            return;
        }
        if (c2 == 2) {
            a((String) jVar.a(HummerConstants.URL), (String) jVar.a("name"), (String) jVar.a("domain"), (String) jVar.a("path"), dVar);
            return;
        }
        if (c2 == 3) {
            a((String) jVar.a(HummerConstants.URL), (String) jVar.a("domain"), (String) jVar.a("path"), dVar);
        } else if (c2 != 4) {
            dVar.a();
        } else {
            a(dVar);
        }
    }

    public static List<Map<String, Object>> a(String str) {
        ArrayList arrayList = new ArrayList();
        String cookie = f16629f.getCookie(str);
        if (cookie != null) {
            for (String str2 : cookie.split(";")) {
                String[] split = str2.split("=", 2);
                String trim = split[0].trim();
                String trim2 = split[1].trim();
                HashMap hashMap = new HashMap();
                hashMap.put("name", trim);
                hashMap.put(HummerConstants.VALUE, trim2);
                hashMap.put("expiresDate", null);
                hashMap.put("isSessionOnly", null);
                hashMap.put("domain", null);
                hashMap.put("sameSite", null);
                hashMap.put("isSecure", null);
                hashMap.put("isHttpOnly", null);
                hashMap.put("path", null);
                arrayList.add(hashMap);
            }
        }
        return arrayList;
    }

    public static void a(String str, String str2, String str3, String str4, k.d dVar) {
        String str5 = str2 + "=; Path=" + str4 + "; Domain=" + str3 + "; Max-Age=-1;";
        if (Build.VERSION.SDK_INT >= 21) {
            f16629f.setCookie(str, str5, new b(dVar));
            f16629f.flush();
            return;
        }
        CookieSyncManager createInstance = CookieSyncManager.createInstance(q.f16638a);
        createInstance.startSync();
        f16629f.setCookie(str, str5);
        dVar.a(true);
        createInstance.stopSync();
        createInstance.sync();
    }

    public static void a(String str, String str2, String str3, k.d dVar) {
        CookieSyncManager cookieSyncManager;
        String cookie = f16629f.getCookie(str);
        if (cookie != null) {
            if (Build.VERSION.SDK_INT < 21) {
                cookieSyncManager = CookieSyncManager.createInstance(q.f16638a);
                cookieSyncManager.startSync();
            } else {
                cookieSyncManager = null;
            }
            for (String str4 : cookie.split(";")) {
                String str5 = str4.split("=", 2)[0].trim() + "=; Path=" + str3 + "; Domain=" + str2 + "; Max-Age=-1;";
                if (Build.VERSION.SDK_INT >= 21) {
                    f16629f.setCookie(str, str5, null);
                } else {
                    f16629f.setCookie(str, str5);
                }
            }
            if (cookieSyncManager != null) {
                cookieSyncManager.stopSync();
                cookieSyncManager.sync();
            } else if (Build.VERSION.SDK_INT >= 21) {
                f16629f.flush();
            }
        }
        dVar.a(true);
    }

    public static void a(k.d dVar) {
        if (Build.VERSION.SDK_INT >= 21) {
            f16629f.removeAllCookies(new c(dVar));
            f16629f.flush();
            return;
        }
        CookieSyncManager createInstance = CookieSyncManager.createInstance(q.f16638a);
        createInstance.startSync();
        f16629f.removeAllCookie();
        dVar.a(true);
        createInstance.stopSync();
        createInstance.sync();
    }

    public static String a(Long l2) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("EEE, d MMM yyyy hh:mm:ss z", Locale.US);
        simpleDateFormat.setTimeZone(TimeZone.getTimeZone("GMT"));
        return simpleDateFormat.format(new Date(l2.longValue()));
    }

    public void a() {
        f16628e.a((k.c) null);
    }
}
