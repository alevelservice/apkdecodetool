package com.zoloz.webcontainer.r;

import android.graphics.Bitmap;
import android.os.Build;
import android.os.Message;
import android.text.TextUtils;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import com.alibaba.fastjson.JSONObject;
import com.zoloz.webcontainer.g;
import com.zoloz.webcontainer.k;

/* compiled from: H5WebChromeClient.java */
/* loaded from: classes2.dex */
public class c extends WebChromeClient {

    /* renamed from: a, reason: collision with root package name */
    private a f16772a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f16773b = true;

    public c(a aVar) {
        this.f16772a = aVar;
    }

    @Override // android.webkit.WebChromeClient
    public View getVideoLoadingProgressView() {
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "getVideoLoadingProgressView");
        return super.getVideoLoadingProgressView();
    }

    @Override // android.webkit.WebChromeClient
    public void getVisitedHistory(ValueCallback<String[]> valueCallback) {
        super.getVisitedHistory(valueCallback);
    }

    @Override // android.webkit.WebChromeClient
    public void onCloseWindow(WebView webView) {
        super.onCloseWindow(webView);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onConsoleMessage " + consoleMessage.message());
        return super.onConsoleMessage(consoleMessage);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
        return super.onCreateWindow(webView, z, z2, message);
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
        callback.invoke(str, true, false);
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onShowCustomView [SDK Version] " + Build.VERSION.SDK_INT);
        if (Build.VERSION.SDK_INT >= 12) {
            super.onHideCustomView();
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsBeforeUnload(WebView webView, String str, String str2, JsResult jsResult) {
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onJsBeforeUnload [url] " + str + " [message] " + str2);
        return super.onJsBeforeUnload(webView, str, str2, jsResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onJsPrompt [message] " + str2 + " [url] " + str);
        return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsTimeout() {
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onJsTimeout");
        return super.onJsTimeout();
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i2) {
        super.onProgressChanged(webView, i2);
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onProgressChanged [progress] " + i2);
        if (i2 == 100 && this.f16773b) {
            a(webView);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedIcon(WebView webView, Bitmap bitmap) {
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onReceivedIcon");
        super.onReceivedIcon(webView, bitmap);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        super.onReceivedTitle(webView, str);
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onReceivedTitle [title] " + str);
        a(webView);
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTouchIconUrl(WebView webView, String str, boolean z) {
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onReceivedTouchIconUrl. [url] " + str + " [precomposed] " + z);
        super.onReceivedTouchIconUrl(webView, str, z);
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onShowCustomView [SDK Version] " + Build.VERSION.SDK_INT);
        if (Build.VERSION.SDK_INT >= 12) {
            super.onShowCustomView(view, customViewCallback);
        }
    }

    private void a(WebView webView) {
        String a2 = k.a(webView.getContext(), g.f16719a);
        if (Build.VERSION.SDK_INT >= 19) {
            webView.evaluateJavascript(a2, new d(this));
            return;
        }
        webView.loadUrl("javascript:" + a2);
    }

    @Override // android.webkit.WebChromeClient
    public void onConsoleMessage(String str, int i2, String str2) {
        JSONObject a2;
        super.onConsoleMessage(str, i2, str2);
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "onConsoleMessage [message] " + str + " [lineNumber] " + i2 + " [sourceID] " + str2);
        if (TextUtils.isEmpty(str) || this.f16772a == null) {
            return;
        }
        String replaceFirst = str.startsWith("h5container.message: ") ? str.replaceFirst("h5container.message: ", "") : null;
        if (TextUtils.isEmpty(replaceFirst) || (a2 = com.zoloz.webcontainer.p.b.a(replaceFirst)) == null || a2.isEmpty()) {
            return;
        }
        String a3 = com.zoloz.webcontainer.p.b.a(a2, "clientId");
        String a4 = com.zoloz.webcontainer.p.b.a(a2, "func");
        String a5 = com.zoloz.webcontainer.p.b.a(a2, "msgType");
        boolean a6 = com.zoloz.webcontainer.p.b.a(a2, "keepCallback", false);
        if (TextUtils.isEmpty(a3)) {
            com.zoloz.webcontainer.b.b("H5WebChromeClient", "invalid client id!");
            return;
        }
        com.zoloz.webcontainer.b.a("H5WebChromeClient", "[name] " + a4 + " [msgType] " + a5 + " [clientId] " + a3);
        JSONObject a7 = com.zoloz.webcontainer.p.b.a(a2, "param", (JSONObject) null);
        com.zoloz.webcontainer.c.a aVar = new com.zoloz.webcontainer.c.a();
        aVar.a(a4);
        aVar.a(a7);
        aVar.a(this.f16772a);
        aVar.b(a5);
        aVar.c(a3);
        aVar.a(a6);
        aVar.a(this.f16772a.b());
        com.zoloz.webcontainer.j.b bVar = new com.zoloz.webcontainer.j.b();
        bVar.f16724a = aVar;
        bVar.f16725b = new com.zoloz.webcontainer.a.a.a(this.f16772a.a());
        this.f16772a.a().a(bVar);
    }
}
