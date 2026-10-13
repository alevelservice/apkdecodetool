package com.pichillilorenzo.flutter_inappwebview;

import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.webkit.JavascriptInterface;
import android.webkit.ValueCallback;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.c;
import g.a.c.a.k;
import java.util.HashMap;
import java.util.Map;

/* compiled from: JavaScriptBridgeInterface.java */
/* loaded from: classes2.dex */
public class i {

    /* renamed from: a, reason: collision with root package name */
    private c f16618a;

    /* renamed from: b, reason: collision with root package name */
    private InAppBrowserActivity f16619b;

    /* renamed from: c, reason: collision with root package name */
    public g.a.c.a.k f16620c;

    /* compiled from: JavaScriptBridgeInterface.java */
    /* loaded from: classes2.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ InAppWebView f16621e;

        a(i iVar, InAppWebView inAppWebView) {
            this.f16621e = inAppWebView;
        }

        @Override // java.lang.Runnable
        public void run() {
            InAppWebView inAppWebView = this.f16621e;
            if (inAppWebView == null || inAppWebView.floatingContextMenu == null) {
                return;
            }
            inAppWebView.hideContextMenu();
        }
    }

    public i(Object obj) {
        if (obj instanceof InAppBrowserActivity) {
            this.f16619b = (InAppBrowserActivity) obj;
        } else if (obj instanceof c) {
            this.f16618a = (c) obj;
        }
        InAppBrowserActivity inAppBrowserActivity = this.f16619b;
        this.f16620c = inAppBrowserActivity != null ? inAppBrowserActivity.channel : this.f16618a.f16458f;
    }

    @JavascriptInterface
    public void _callHandler(String str, String str2, String str3) {
        if (this.f16618a == null && this.f16619b == null) {
            return;
        }
        InAppBrowserActivity inAppBrowserActivity = this.f16619b;
        InAppWebView inAppWebView = inAppBrowserActivity != null ? inAppBrowserActivity.webView : this.f16618a.f16457e;
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity2 = this.f16619b;
        if (inAppBrowserActivity2 != null) {
            hashMap.put("uuid", inAppBrowserActivity2.uuid);
        }
        hashMap.put("handlerName", str);
        hashMap.put("args", str3);
        new Handler(Looper.getMainLooper()).post(new b(str, inAppWebView, hashMap, str2));
    }

    @JavascriptInterface
    public void _hideContextMenu() {
        if (this.f16618a == null && this.f16619b == null) {
            return;
        }
        InAppBrowserActivity inAppBrowserActivity = this.f16619b;
        new Handler(Looper.getMainLooper()).post(new a(this, inAppBrowserActivity != null ? inAppBrowserActivity.webView : this.f16618a.f16457e));
    }

    public void a() {
        this.f16620c.a((k.c) null);
        if (this.f16619b != null) {
            this.f16619b = null;
        }
        if (this.f16618a != null) {
            this.f16618a = null;
        }
    }

    /* compiled from: JavaScriptBridgeInterface.java */
    /* loaded from: classes2.dex */
    class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ String f16622e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ InAppWebView f16623f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ Map f16624g;

        /* renamed from: h, reason: collision with root package name */
        final /* synthetic */ String f16625h;

        b(String str, InAppWebView inAppWebView, Map map, String str2) {
            this.f16622e = str;
            this.f16623f = inAppWebView;
            this.f16624g = map;
            this.f16625h = str2;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f16622e.equals("onPrint") && Build.VERSION.SDK_INT >= 21) {
                this.f16623f.printCurrentPage();
            }
            i.this.f16620c.a("onCallJsHandler", this.f16624g, new a());
        }

        /* compiled from: JavaScriptBridgeInterface.java */
        /* loaded from: classes2.dex */
        class a implements k.d {
            a() {
            }

            @Override // g.a.c.a.k.d
            public void a() {
            }

            @Override // g.a.c.a.k.d
            public void a(Object obj) {
                InAppWebView inAppWebView = b.this.f16623f;
                if (inAppWebView == null) {
                    return;
                }
                if (Build.VERSION.SDK_INT >= 19) {
                    inAppWebView.evaluateJavascript("if(window.flutter_inappwebview[" + b.this.f16625h + "] != null) {window.flutter_inappwebview[" + b.this.f16625h + "](" + obj + "); delete window.flutter_inappwebview[" + b.this.f16625h + "];}", (ValueCallback<String>) null);
                    return;
                }
                inAppWebView.loadUrl("javascript:if(window.flutter_inappwebview[" + b.this.f16625h + "] != null) {window.flutter_inappwebview[" + b.this.f16625h + "](" + obj + "); delete window.flutter_inappwebview[" + b.this.f16625h + "];}");
            }

            @Override // g.a.c.a.k.d
            public void a(String str, String str2, Object obj) {
                String str3 = "ERROR: " + str + HanziToPinyin.Token.SEPARATOR + str2;
            }
        }
    }
}
