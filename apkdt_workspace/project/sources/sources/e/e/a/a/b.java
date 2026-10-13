package e.e.a.a;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Build;
import android.os.Handler;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import com.example.native_webview.WebViewActivity;
import java.util.Iterator;
import java.util.List;

/* compiled from: interceptWebViewClient.java */
/* loaded from: classes.dex */
public class b extends WebViewClient {

    /* renamed from: a, reason: collision with root package name */
    private boolean f17093a;

    /* renamed from: e, reason: collision with root package name */
    private WebView f17097e;

    /* renamed from: f, reason: collision with root package name */
    private c f17098f;

    /* renamed from: g, reason: collision with root package name */
    private List<String> f17099g;

    /* renamed from: i, reason: collision with root package name */
    private String f17101i;

    /* renamed from: j, reason: collision with root package name */
    private String f17102j;

    /* renamed from: b, reason: collision with root package name */
    boolean f17094b = false;

    /* renamed from: c, reason: collision with root package name */
    private boolean f17095c = false;

    /* renamed from: h, reason: collision with root package name */
    private boolean f17100h = false;

    /* renamed from: d, reason: collision with root package name */
    private Handler f17096d = new Handler();

    /* compiled from: interceptWebViewClient.java */
    /* loaded from: classes.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (b.this.f17095c) {
                return;
            }
            b.this.f17098f.h();
            b bVar = b.this;
            if (bVar.f17094b) {
                return;
            }
            bVar.a();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(c cVar, WebView webView, List<String> list, String str, String str2) {
        this.f17098f = cVar;
        this.f17097e = webView;
        this.f17099g = list;
        this.f17101i = str;
        this.f17102j = str2;
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        if (this.f17093a) {
            return;
        }
        this.f17094b = true;
        this.f17098f.h();
        if (this.f17095c) {
            return;
        }
        c();
    }

    @Override // android.webkit.WebViewClient
    public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
        if (!this.f17093a) {
            if (!this.f17100h) {
                this.f17098f.k();
                this.f17100h = true;
            }
            this.f17094b = false;
            a aVar = new a();
            a(webView);
            this.f17096d.postDelayed(aVar, 60000L);
        }
        this.f17093a = false;
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i2, String str, String str2) {
        a();
        this.f17098f.h();
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        a();
        this.f17098f.h();
        super.onReceivedSslError(webView, sslErrorHandler, sslError);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        this.f17093a = true;
        for (String str2 : this.f17099g) {
            if (str != null && str.contains(str2)) {
                this.f17098f.k();
                return false;
            }
        }
        webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(str)));
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        WebViewActivity webViewActivity = (WebViewActivity) this.f17098f.getActivity();
        if (webViewActivity != null) {
            com.example.errorWidget.a.a(webViewActivity.getBinding().c(), this.f17101i);
        }
        this.f17095c = true;
        b();
    }

    private void b() {
        this.f17097e.setVisibility(4);
    }

    private void c() {
        this.f17097e.setVisibility(0);
    }

    private void a(WebView webView) {
        if (Build.VERSION.SDK_INT >= 19) {
            webView.evaluateJavascript("window.appVersion='" + this.f17102j + "';", null);
            return;
        }
        webView.loadUrl("javascript:window.appVersion='" + this.f17102j + "';");
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(24)
    public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        String uri = webResourceRequest.getUrl().toString();
        this.f17093a = true;
        Iterator<String> it = this.f17099g.iterator();
        while (it.hasNext()) {
            if (uri.contains(it.next())) {
                this.f17098f.k();
                return false;
            }
        }
        webView.getContext().startActivity(new Intent("android.intent.action.VIEW", Uri.parse(uri)));
        return true;
    }
}
