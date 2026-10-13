package com.pichillilorenzo.flutter_inappwebview;

import android.content.pm.PackageInfo;
import android.os.Build;
import android.webkit.ValueCallback;
import android.webkit.WebSettings;
import android.webkit.WebView;
import androidx.webkit.WebViewFeature;
import g.a.c.a.c;
import g.a.c.a.k;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: InAppWebViewStatic.java */
/* loaded from: classes2.dex */
public class h implements k.c {

    /* renamed from: e, reason: collision with root package name */
    public g.a.c.a.k f16615e;

    /* compiled from: InAppWebViewStatic.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ k.d f16616e;

        a(h hVar, k.d dVar) {
            this.f16616e = dVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f16616e.a(true);
        }
    }

    /* compiled from: InAppWebViewStatic.java */
    /* loaded from: classes2.dex */
    class b implements ValueCallback<Boolean> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16617a;

        b(h hVar, k.d dVar) {
            this.f16617a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Boolean bool) {
            this.f16617a.a(bool);
        }
    }

    public h(c cVar) {
        this.f16615e = new g.a.c.a.k(cVar, "com.pichillilorenzo/flutter_inappwebview_static");
        this.f16615e.a(this);
    }

    public Map<String, Object> a(PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        HashMap hashMap = new HashMap();
        hashMap.put("versionName", packageInfo.versionName);
        hashMap.put("packageName", packageInfo.packageName);
        return hashMap;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1600358415:
                if (str.equals("setSafeBrowsingWhitelist")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -436220260:
                if (str.equals("clearClientCertPreferences")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case 258673215:
                if (str.equals("getSafeBrowsingPrivacyPolicyUrl")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 643643439:
                if (str.equals("getDefaultUserAgent")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 1586319888:
                if (str.equals("getCurrentWebViewPackage")) {
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
            dVar.a(WebSettings.getDefaultUserAgent(q.f16638a));
            return;
        }
        if (c2 == 1) {
            if (Build.VERSION.SDK_INT >= 21) {
                WebView.clearClientCertPreferences(new a(this, dVar));
                return;
            } else {
                dVar.a(false);
                return;
            }
        }
        if (c2 == 2) {
            if (Build.VERSION.SDK_INT >= 27 && WebViewFeature.a("SAFE_BROWSING_PRIVACY_POLICY_URL")) {
                dVar.a(androidx.webkit.b.c().toString());
                return;
            } else {
                dVar.a(null);
                return;
            }
        }
        if (c2 == 3) {
            if (Build.VERSION.SDK_INT >= 27 && WebViewFeature.a("SAFE_BROWSING_WHITELIST")) {
                androidx.webkit.b.a((List<String>) jVar.a("hosts"), new b(this, dVar));
                return;
            } else {
                dVar.a(false);
                return;
            }
        }
        if (c2 != 4) {
            dVar.a();
        } else if (Build.VERSION.SDK_INT >= 26) {
            dVar.a(a(androidx.webkit.b.a(q.f16643f)));
        } else {
            dVar.a(null);
        }
    }

    public void a() {
        this.f16615e.a((k.c) null);
    }
}
