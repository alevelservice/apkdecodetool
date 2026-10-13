package io.flutter.plugins.f;

import android.annotation.TargetApi;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebStorage;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import g.a.c.a.j;
import g.a.c.a.k;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* compiled from: FlutterWebView.java */
/* loaded from: classes2.dex */
public class c implements io.flutter.plugin.platform.f, k.c {

    /* renamed from: e, reason: collision with root package name */
    private final e f19372e;

    /* renamed from: f, reason: collision with root package name */
    private final k f19373f;

    /* renamed from: g, reason: collision with root package name */
    private final d f19374g;

    /* renamed from: h, reason: collision with root package name */
    private final Handler f19375h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: FlutterWebView.java */
    /* loaded from: classes2.dex */
    public class a implements ValueCallback<String> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f19376a;

        a(c cVar, k.d dVar) {
            this.f19376a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(String str) {
            this.f19376a.a(str);
        }
    }

    /* compiled from: FlutterWebView.java */
    /* loaded from: classes2.dex */
    private class b extends WebChromeClient {
        private b() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            a aVar = new a();
            WebView webView2 = new WebView(webView.getContext());
            webView2.setWebViewClient(aVar);
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            return true;
        }

        /* synthetic */ b(c cVar, a aVar) {
            this();
        }

        /* compiled from: FlutterWebView.java */
        /* loaded from: classes2.dex */
        class a extends WebViewClient {
            a() {
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(21)
            public boolean shouldOverrideUrlLoading(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest) {
                String uri = webResourceRequest.getUrl().toString();
                if (c.this.f19374g.a(c.this.f19372e, webResourceRequest)) {
                    return true;
                }
                c.this.f19372e.loadUrl(uri);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                if (c.this.f19374g.a(c.this.f19372e, str)) {
                    return true;
                }
                c.this.f19372e.loadUrl(str);
                return true;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(17)
    public c(Context context, g.a.c.a.c cVar, int i2, Map<String, Object> map, View view) {
        io.flutter.plugins.f.a aVar = new io.flutter.plugins.f.a();
        DisplayManager displayManager = (DisplayManager) context.getSystemService(Constants$ScionAnalytics$MessageType.DISPLAY_NOTIFICATION);
        aVar.b(displayManager);
        this.f19372e = new e(context, view);
        aVar.a(displayManager);
        this.f19375h = new Handler(context.getMainLooper());
        this.f19372e.getSettings().setDomStorageEnabled(true);
        this.f19372e.getSettings().setJavaScriptCanOpenWindowsAutomatically(true);
        this.f19372e.getSettings().setSupportMultipleWindows(true);
        this.f19372e.setWebChromeClient(new b(this, null));
        this.f19373f = new k(cVar, "plugins.flutter.io/webview_" + i2);
        this.f19373f.a(this);
        this.f19374g = new d(this.f19373f);
        a((Map<String, Object>) map.get("settings"));
        if (map.containsKey("javascriptChannelNames")) {
            a((List<String>) map.get("javascriptChannelNames"));
        }
        a(((Integer) map.get("autoMediaPlaybackPolicy")).intValue());
        if (map.containsKey("userAgent")) {
            a((String) map.get("userAgent"));
        }
        if (map.containsKey("initialUrl")) {
            this.f19372e.loadUrl((String) map.get("initialUrl"));
        }
    }

    private void e(j jVar, k.d dVar) {
        Map map = (Map) jVar.f18224b;
        this.f19372e.scrollBy(((Integer) map.get("x")).intValue(), ((Integer) map.get("y")).intValue());
        dVar.a(null);
    }

    private void f(j jVar, k.d dVar) {
        Map map = (Map) jVar.f18224b;
        this.f19372e.scrollTo(((Integer) map.get("x")).intValue(), ((Integer) map.get("y")).intValue());
        dVar.a(null);
    }

    private void g(j jVar, k.d dVar) {
        a((Map<String, Object>) jVar.f18224b);
        dVar.a(null);
    }

    private void h(k.d dVar) {
        if (this.f19372e.canGoBack()) {
            this.f19372e.goBack();
        }
        dVar.a(null);
    }

    private void i(k.d dVar) {
        if (this.f19372e.canGoForward()) {
            this.f19372e.goForward();
        }
        dVar.a(null);
    }

    private void j(k.d dVar) {
        this.f19372e.reload();
        dVar.a(null);
    }

    @Override // io.flutter.plugin.platform.f
    public void c() {
        this.f19372e.c();
    }

    @Override // io.flutter.plugin.platform.f
    public void d() {
        this.f19372e.a((View) null);
    }

    @Override // io.flutter.plugin.platform.f
    public void dispose() {
        this.f19373f.a((k.c) null);
        this.f19372e.a();
        this.f19372e.destroy();
    }

    @Override // io.flutter.plugin.platform.f
    public View getView() {
        return this.f19372e;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1990164468:
                if (str.equals("updateSettings")) {
                    c2 = 1;
                    break;
                }
                c2 = 65535;
                break;
            case -1707388194:
                if (str.equals("addJavascriptChannels")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -1331417355:
                if (str.equals("getScrollX")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -1331417354:
                if (str.equals("getScrollY")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case -1241591313:
                if (str.equals("goBack")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -1088982730:
                if (str.equals("currentUrl")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case -1067273523:
                if (str.equals("canGoForward")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case -934641255:
                if (str.equals("reload")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case -759238347:
                if (str.equals("clearCache")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -402165756:
                if (str.equals("scrollBy")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case -402165208:
                if (str.equals("scrollTo")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case -318289731:
                if (str.equals("goForward")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case -317054497:
                if (str.equals("canGoBack")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 336631465:
                if (str.equals("loadUrl")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case 651673601:
                if (str.equals("removeJavascriptChannels")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 1937913574:
                if (str.equals("evaluateJavascript")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1966196898:
                if (str.equals("getTitle")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            default:
                c2 = 65535;
                break;
        }
        switch (c2) {
            case 0:
                c(jVar, dVar);
                return;
            case 1:
                g(jVar, dVar);
                return;
            case 2:
                a(dVar);
                return;
            case 3:
                b(dVar);
                return;
            case 4:
                h(dVar);
                return;
            case 5:
                i(dVar);
                return;
            case 6:
                j(dVar);
                return;
            case 7:
                d(dVar);
                return;
            case '\b':
                b(jVar, dVar);
                return;
            case '\t':
                a(jVar, dVar);
                return;
            case '\n':
                d(jVar, dVar);
                return;
            case 11:
                c(dVar);
                return;
            case '\f':
                g(dVar);
                return;
            case '\r':
                f(jVar, dVar);
                return;
            case 14:
                e(jVar, dVar);
                return;
            case 15:
                e(dVar);
                return;
            case 16:
                f(dVar);
                return;
            default:
                dVar.a();
                return;
        }
    }

    private void c(j jVar, k.d dVar) {
        Map map = (Map) jVar.f18224b;
        String str = (String) map.get(HummerConstants.URL);
        Map<String, String> map2 = (Map) map.get("headers");
        if (map2 == null) {
            map2 = Collections.emptyMap();
        }
        this.f19372e.loadUrl(str, map2);
        dVar.a(null);
    }

    private void d(k.d dVar) {
        dVar.a(this.f19372e.getUrl());
    }

    @Override // io.flutter.plugin.platform.f
    public void a(View view) {
        this.f19372e.a(view);
    }

    @Override // io.flutter.plugin.platform.f
    public void b() {
        this.f19372e.b();
    }

    private void a(k.d dVar) {
        dVar.a(Boolean.valueOf(this.f19372e.canGoBack()));
    }

    private void b(k.d dVar) {
        dVar.a(Boolean.valueOf(this.f19372e.canGoForward()));
    }

    private void d(j jVar, k.d dVar) {
        Iterator it = ((List) jVar.f18224b).iterator();
        while (it.hasNext()) {
            this.f19372e.removeJavascriptInterface((String) it.next());
        }
        dVar.a(null);
    }

    private void g(k.d dVar) {
        dVar.a(this.f19372e.getTitle());
    }

    private void a(j jVar, k.d dVar) {
        a((List<String>) jVar.f18224b);
        dVar.a(null);
    }

    @TargetApi(19)
    private void b(j jVar, k.d dVar) {
        String str = (String) jVar.f18224b;
        if (str != null) {
            this.f19372e.evaluateJavascript(str, new a(this, dVar));
            return;
        }
        throw new UnsupportedOperationException("JavaScript string cannot be null");
    }

    private void e(k.d dVar) {
        dVar.a(Integer.valueOf(this.f19372e.getScrollX()));
    }

    private void f(k.d dVar) {
        dVar.a(Integer.valueOf(this.f19372e.getScrollY()));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00a3 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0054 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void a(java.util.Map<java.lang.String, java.lang.Object> r9) {
        /*
            r8 = this;
            java.util.Set r0 = r9.keySet()
            java.util.Iterator r0 = r0.iterator()
        L8:
            boolean r1 = r0.hasNext()
            if (r1 == 0) goto Lb2
            java.lang.Object r1 = r0.next()
            java.lang.String r1 = (java.lang.String) r1
            r2 = -1
            int r3 = r1.hashCode()
            r4 = 4
            r5 = 3
            r6 = 2
            r7 = 1
            switch(r3) {
                case -1151668596: goto L49;
                case -1069908877: goto L3f;
                case 311430650: goto L35;
                case 858297331: goto L2b;
                case 1670862916: goto L21;
                default: goto L20;
            }
        L20:
            goto L52
        L21:
            java.lang.String r3 = "gestureNavigationEnabled"
            boolean r3 = r1.equals(r3)
            if (r3 == 0) goto L52
            r2 = 3
            goto L52
        L2b:
            java.lang.String r3 = "hasNavigationDelegate"
            boolean r3 = r1.equals(r3)
            if (r3 == 0) goto L52
            r2 = 1
            goto L52
        L35:
            java.lang.String r3 = "userAgent"
            boolean r3 = r1.equals(r3)
            if (r3 == 0) goto L52
            r2 = 4
            goto L52
        L3f:
            java.lang.String r3 = "debuggingEnabled"
            boolean r3 = r1.equals(r3)
            if (r3 == 0) goto L52
            r2 = 2
            goto L52
        L49:
            java.lang.String r3 = "jsMode"
            boolean r3 = r1.equals(r3)
            if (r3 == 0) goto L52
            r2 = 0
        L52:
            if (r2 == 0) goto La3
            if (r2 == r7) goto L8c
            if (r2 == r6) goto L7d
            if (r2 == r5) goto L8
            if (r2 != r4) goto L66
            java.lang.Object r1 = r9.get(r1)
            java.lang.String r1 = (java.lang.String) r1
            r8.a(r1)
            goto L8
        L66:
            java.lang.IllegalArgumentException r9 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r0.<init>()
            java.lang.String r2 = "Unknown WebView setting: "
            r0.append(r2)
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r9.<init>(r0)
            throw r9
        L7d:
            java.lang.Object r1 = r9.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            android.webkit.WebView.setWebContentsDebuggingEnabled(r1)
            goto L8
        L8c:
            java.lang.Object r1 = r9.get(r1)
            java.lang.Boolean r1 = (java.lang.Boolean) r1
            boolean r1 = r1.booleanValue()
            io.flutter.plugins.f.d r2 = r8.f19374g
            android.webkit.WebViewClient r1 = r2.a(r1)
            io.flutter.plugins.f.e r2 = r8.f19372e
            r2.setWebViewClient(r1)
            goto L8
        La3:
            java.lang.Object r1 = r9.get(r1)
            java.lang.Integer r1 = (java.lang.Integer) r1
            int r1 = r1.intValue()
            r8.b(r1)
            goto L8
        Lb2:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: io.flutter.plugins.f.c.a(java.util.Map):void");
    }

    private void b(int i2) {
        if (i2 == 0) {
            this.f19372e.getSettings().setJavaScriptEnabled(false);
        } else {
            if (i2 == 1) {
                this.f19372e.getSettings().setJavaScriptEnabled(true);
                return;
            }
            throw new IllegalArgumentException("Trying to set unknown JavaScript mode: " + i2);
        }
    }

    private void c(k.d dVar) {
        this.f19372e.clearCache(true);
        WebStorage.getInstance().deleteAllData();
        dVar.a(null);
    }

    private void a(int i2) {
        this.f19372e.getSettings().setMediaPlaybackRequiresUserGesture(i2 != 1);
    }

    private void a(List<String> list) {
        for (String str : list) {
            this.f19372e.addJavascriptInterface(new f(this.f19373f, str, this.f19375h), str);
        }
    }

    private void a(String str) {
        this.f19372e.getSettings().setUserAgentString(str);
    }
}
