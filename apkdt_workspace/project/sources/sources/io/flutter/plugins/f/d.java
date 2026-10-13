package io.flutter.plugins.f;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.os.Build;
import android.view.KeyEvent;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.RequiresApi;
import androidx.webkit.WebResourceErrorCompat;
import androidx.webkit.WebViewClientCompat;
import com.alipay.zoloz.toyger.ToygerCallback;
import com.ap.zoloz.hummer.biz.HummerConstants;
import g.a.c.a.k;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: FlutterWebViewClient.java */
/* loaded from: classes2.dex */
public class d {

    /* renamed from: a, reason: collision with root package name */
    private final k f19379a;

    /* renamed from: b, reason: collision with root package name */
    private boolean f19380b;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlutterWebViewClient.java */
    /* loaded from: classes2.dex */
    public class b extends WebViewClientCompat {
        b() {
        }

        @Override // androidx.webkit.WebViewClientCompat
        @RequiresApi(api = 21)
        @SuppressLint({"RequiresFeature"})
        public void a(WebView webView, WebResourceRequest webResourceRequest, WebResourceErrorCompat webResourceErrorCompat) {
            d.this.a(webResourceErrorCompat.b(), webResourceErrorCompat.a().toString(), webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            d.this.b(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            d.this.c(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            d.this.a(i2, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        }

        @Override // android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return d.this.a(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return d.this.a(webView, str);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: FlutterWebViewClient.java */
    /* loaded from: classes2.dex */
    public static class c implements k.d {

        /* renamed from: a, reason: collision with root package name */
        private final String f19383a;

        /* renamed from: b, reason: collision with root package name */
        private final Map<String, String> f19384b;

        /* renamed from: c, reason: collision with root package name */
        private final WebView f19385c;

        /* synthetic */ c(String str, Map map, WebView webView, a aVar) {
            this(str, map, webView);
        }

        private void b() {
            if (Build.VERSION.SDK_INT >= 21) {
                this.f19385c.loadUrl(this.f19383a, this.f19384b);
            } else {
                this.f19385c.loadUrl(this.f19383a);
            }
        }

        @Override // g.a.c.a.k.d
        public void a(Object obj) {
            if (((Boolean) obj).booleanValue()) {
                b();
            }
        }

        private c(String str, Map<String, String> map, WebView webView) {
            this.f19383a = str;
            this.f19384b = map;
            this.f19385c = webView;
        }

        @Override // g.a.c.a.k.d
        public void a(String str, String str2, Object obj) {
            throw new IllegalStateException("navigationRequest calls must succeed");
        }

        @Override // g.a.c.a.k.d
        public void a() {
            throw new IllegalStateException("navigationRequest must be implemented by the webview method channel");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public d(k kVar) {
        this.f19379a = kVar;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void c(WebView webView, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(HummerConstants.URL, str);
        this.f19379a.a("onPageStarted", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(WebView webView, String str) {
        HashMap hashMap = new HashMap();
        hashMap.put(HummerConstants.URL, str);
        this.f19379a.a("onPageFinished", hashMap);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlutterWebViewClient.java */
    /* loaded from: classes2.dex */
    public class a extends WebViewClient {
        a() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            d.this.b(webView, str);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            d.this.c(webView, str);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(23)
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            d.this.a(webResourceError.getErrorCode(), webResourceError.getDescription().toString(), webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public void onUnhandledKeyEvent(WebView webView, KeyEvent keyEvent) {
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(24)
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return d.this.a(webView, webResourceRequest);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i2, String str, String str2) {
            d.this.a(i2, str, str2);
        }
    }

    private static String a(int i2) {
        switch (i2) {
            case -16:
                return "unsafeResource";
            case -15:
                return "tooManyRequests";
            case -14:
                return "fileNotFound";
            case -13:
                return "file";
            case -12:
                return "badUrl";
            case -11:
                return "failedSslHandshake";
            case -10:
                return "unsupportedScheme";
            case -9:
                return "redirectLoop";
            case -8:
                return "timeout";
            case ToygerCallback.EVENT_CODE_MONITOR_LOG /* -7 */:
                return "io";
            case ToygerCallback.EVENT_CODE_LOG /* -6 */:
                return "connect";
            case ToygerCallback.EVENT_CODE_DOC_PARM_ERROR /* -5 */:
                return "proxyAuthentication";
            case ToygerCallback.EVENT_CODE_INIT_FAIL /* -4 */:
                return "authentication";
            case -3:
                return "unsupportedAuthScheme";
            case -2:
                return "hostLookup";
            case -1:
                return "unknown";
            default:
                throw new IllegalArgumentException(String.format(Locale.getDefault(), "Could not find a string for errorCode: %d", Integer.valueOf(i2)));
        }
    }

    private WebViewClientCompat b() {
        return new b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    public boolean a(WebView webView, WebResourceRequest webResourceRequest) {
        if (!this.f19380b) {
            return false;
        }
        a(webResourceRequest.getUrl().toString(), webResourceRequest.getRequestHeaders(), webView, webResourceRequest.isForMainFrame());
        return webResourceRequest.isForMainFrame();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean a(WebView webView, String str) {
        if (!this.f19380b) {
            return false;
        }
        a(str, (Map<String, String>) null, webView, true);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i2, String str, String str2) {
        HashMap hashMap = new HashMap();
        hashMap.put("errorCode", Integer.valueOf(i2));
        hashMap.put("description", str);
        hashMap.put("errorType", a(i2));
        hashMap.put("failingUrl", str2);
        this.f19379a.a("onWebResourceError", hashMap);
    }

    private void a(String str, Map<String, String> map, WebView webView, boolean z) {
        HashMap hashMap = new HashMap();
        hashMap.put(HummerConstants.URL, str);
        hashMap.put("isForMainFrame", Boolean.valueOf(z));
        if (z) {
            this.f19379a.a("navigationRequest", hashMap, new c(str, map, webView, null));
        } else {
            this.f19379a.a("navigationRequest", hashMap);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebViewClient a(boolean z) {
        this.f19380b = z;
        if (z && Build.VERSION.SDK_INT < 24) {
            return b();
        }
        return a();
    }

    private WebViewClient a() {
        return new a();
    }
}
