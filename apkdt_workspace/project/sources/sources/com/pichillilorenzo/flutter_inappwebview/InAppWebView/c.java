package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.app.Activity;
import android.content.Context;
import android.hardware.display.DisplayManager;
import android.os.Build;
import android.os.Message;
import android.view.View;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.webkit.WebViewFeature;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import com.pichillilorenzo.flutter_inappwebview.q;
import com.pichillilorenzo.flutter_inappwebview.r;
import g.a.c.a.k;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.HashMap;
import java.util.Map;

/* compiled from: FlutterWebView.java */
/* loaded from: classes2.dex */
public class c implements io.flutter.plugin.platform.f, k.c {

    /* renamed from: e, reason: collision with root package name */
    public InAppWebView f16457e;

    /* renamed from: f, reason: collision with root package name */
    public final k f16458f;

    /* compiled from: FlutterWebView.java */
    /* loaded from: classes2.dex */
    class a implements ValueCallback<Boolean> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16459a;

        a(c cVar, k.d dVar) {
            this.f16459a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Boolean bool) {
            this.f16459a.a(bool);
        }
    }

    /* compiled from: FlutterWebView.java */
    /* loaded from: classes2.dex */
    class b implements ValueCallback<String> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16460a;

        b(c cVar, k.d dVar) {
            this.f16460a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(String str) {
            this.f16460a.a(str);
        }
    }

    /* compiled from: FlutterWebView.java */
    /* renamed from: com.pichillilorenzo.flutter_inappwebview.InAppWebView.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0171c extends WebViewClient {
        C0171c() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            c.this.f16457e.dispose();
            c.this.f16457e.destroy();
            c.this.f16457e = null;
        }
    }

    public c(g.a.c.a.c cVar, Context context, Object obj, HashMap<String, Object> hashMap, View view) {
        String b2;
        this.f16458f = new k(cVar, "com.pichillilorenzo/flutter_inappwebview_" + obj);
        this.f16458f.a(this);
        com.pichillilorenzo.flutter_inappwebview.InAppWebView.b bVar = new com.pichillilorenzo.flutter_inappwebview.InAppWebView.b();
        DisplayManager displayManager = (DisplayManager) context.getSystemService(Constants$ScionAnalytics$MessageType.DISPLAY_NOTIFICATION);
        bVar.b(displayManager);
        String str = (String) hashMap.get("initialUrl");
        String str2 = (String) hashMap.get("initialFile");
        Map map = (Map) hashMap.get("initialData");
        Map<String, String> map2 = (Map) hashMap.get("initialHeaders");
        Map<String, Object> map3 = (Map) hashMap.get("initialOptions");
        Map map4 = (Map) hashMap.get("contextMenu");
        Integer num = (Integer) hashMap.get("windowId");
        g gVar = new g();
        gVar.a(map3);
        Activity activity = q.f16643f;
        this.f16457e = new InAppWebView(q.f16643f, this, obj, num, gVar, map4, view);
        bVar.a(displayManager);
        try {
            Class<? super Object> superclass = this.f16457e.getClass().getSuperclass();
            while (!superclass.getName().equals("android.view.View")) {
                superclass = superclass.getSuperclass();
            }
            Field declaredField = superclass.getDeclaredField("mContext");
            declaredField.setAccessible(true);
            declaredField.set(this.f16457e, context);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        this.f16457e.prepare();
        if (num != null) {
            Message message = e.m.get(num);
            if (message != null) {
                ((WebView.WebViewTransport) message.obj).setWebView(this.f16457e);
                message.sendToTarget();
            }
        } else {
            if (str2 != null) {
                try {
                    b2 = r.b(str2);
                } catch (IOException e3) {
                    e3.printStackTrace();
                    String str3 = str2 + " asset file cannot be found!";
                    return;
                }
            } else {
                b2 = str;
            }
            if (map != null) {
                this.f16457e.loadDataWithBaseURL((String) map.get("baseUrl"), (String) map.get(Constants$ScionAnalytics$MessageType.DATA_MESSAGE), (String) map.get("mimeType"), (String) map.get("encoding"), (String) map.get("historyUrl"));
            } else {
                this.f16457e.loadUrl(b2, map2);
            }
        }
        if (view == null && (obj instanceof String)) {
            HashMap hashMap2 = new HashMap();
            hashMap2.put("uuid", obj);
            this.f16458f.a("onHeadlessWebViewCreated", hashMap2);
        }
    }

    @Override // io.flutter.plugin.platform.f
    public void a(View view) {
        InAppWebView inAppWebView = this.f16457e;
        if (inAppWebView != null) {
            inAppWebView.setContainerView(view);
        }
    }

    @Override // io.flutter.plugin.platform.f
    public void b() {
        InAppWebView inAppWebView = this.f16457e;
        if (inAppWebView == null || inAppWebView.inAppBrowserActivity != null) {
            return;
        }
        inAppWebView.lockInputConnection();
    }

    @Override // io.flutter.plugin.platform.f
    public void c() {
        InAppWebView inAppWebView = this.f16457e;
        if (inAppWebView == null || inAppWebView.inAppBrowserActivity != null) {
            return;
        }
        inAppWebView.unlockInputConnection();
    }

    @Override // io.flutter.plugin.platform.f
    public void d() {
        InAppWebView inAppWebView = this.f16457e;
        if (inAppWebView != null) {
            inAppWebView.setContainerView(null);
        }
    }

    @Override // io.flutter.plugin.platform.f
    public void dispose() {
        this.f16458f.a((k.c) null);
        InAppWebView inAppWebView = this.f16457e;
        if (inAppWebView != null) {
            inAppWebView.inAppWebViewChromeClient.a();
            this.f16457e.inAppWebViewClient.a();
            this.f16457e.javaScriptBridgeInterface.a();
            this.f16457e.setWebChromeClient(new WebChromeClient());
            this.f16457e.setWebViewClient(new C0171c());
            this.f16457e.getSettings().setJavaScriptEnabled(false);
            this.f16457e.loadUrl("about:blank");
        }
    }

    @Override // io.flutter.plugin.platform.f
    public View getView() {
        return this.f16457e;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(g.a.c.a.j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1787354268:
                if (str.equals("pauseTimers")) {
                    c2 = '\"';
                    break;
                }
                c2 = 65535;
                break;
            case -1773179062:
                if (str.equals("getContentHeight")) {
                    c2 = '%';
                    break;
                }
                c2 = 65535;
                break;
            case -1624396757:
                if (str.equals("saveWebArchive")) {
                    c2 = '-';
                    break;
                }
                c2 = 65535;
                break;
            case -1331417355:
                if (str.equals("getScrollX")) {
                    c2 = '4';
                    break;
                }
                c2 = 65535;
                break;
            case -1331417354:
                if (str.equals("getScrollY")) {
                    c2 = '5';
                    break;
                }
                c2 = 65535;
                break;
            case -1309347773:
                if (str.equals("canGoBackOrForward")) {
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case -1249348039:
                if (str.equals("getUrl")) {
                    c2 = 0;
                    break;
                }
                c2 = 65535;
                break;
            case -1241591313:
                if (str.equals("goBack")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case -1067273523:
                if (str.equals("canGoForward")) {
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -995752566:
                if (str.equals("pageUp")) {
                    c2 = ',';
                    break;
                }
                c2 = 65535;
                break;
            case -948122918:
                if (str.equals("stopLoading")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case -934641255:
                if (str.equals("reload")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case -934426579:
                if (str.equals("resume")) {
                    c2 = '!';
                    break;
                }
                c2 = 65535;
                break;
            case -759238347:
                if (str.equals("clearCache")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case -756050293:
                if (str.equals("clearFocus")) {
                    c2 = '0';
                    break;
                }
                c2 = 65535;
                break;
            case -696286326:
                if (str.equals("zoomBy")) {
                    c2 = '&';
                    break;
                }
                c2 = 65535;
                break;
            case -696286120:
                if (str.equals("zoomIn")) {
                    c2 = '.';
                    break;
                }
                c2 = 65535;
                break;
            case -679382964:
                if (str.equals("findNext")) {
                    c2 = 28;
                    break;
                }
                c2 = 65535;
                break;
            case -678975813:
                if (str.equals("printCurrentPage")) {
                    c2 = '$';
                    break;
                }
                c2 = 65535;
                break;
            case -402165756:
                if (str.equals("scrollBy")) {
                    c2 = 31;
                    break;
                }
                c2 = 65535;
                break;
            case -402165208:
                if (str.equals("scrollTo")) {
                    c2 = 30;
                    break;
                }
                c2 = 65535;
                break;
            case -391221073:
                if (str.equals("postUrl")) {
                    c2 = 4;
                    break;
                }
                c2 = 65535;
                break;
            case -318289731:
                if (str.equals("goForward")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case -317054497:
                if (str.equals("canGoBack")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case -243128142:
                if (str.equals("isLoading")) {
                    c2 = 19;
                    break;
                }
                c2 = 65535;
                break;
            case -212614552:
                if (str.equals("getOptions")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case -127960866:
                if (str.equals("getSelectedText")) {
                    c2 = ')';
                    break;
                }
                c2 = 65535;
                break;
            case -110027141:
                if (str.equals("zoomOut")) {
                    c2 = '/';
                    break;
                }
                c2 = 65535;
                break;
            case -53272641:
                if (str.equals("injectCSSCode")) {
                    c2 = '\t';
                    break;
                }
                c2 = 65535;
                break;
            case -32598479:
                if (str.equals("getCopyBackForwardList")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case -17750794:
                if (str.equals("startSafeBrowsing")) {
                    c2 = 24;
                    break;
                }
                c2 = 65535;
                break;
            case 106440182:
                if (str.equals("pause")) {
                    c2 = ' ';
                    break;
                }
                c2 = 65535;
                break;
            case 194959693:
                if (str.equals("takeScreenshot")) {
                    c2 = 20;
                    break;
                }
                c2 = 65535;
                break;
            case 336631465:
                if (str.equals("loadUrl")) {
                    c2 = 3;
                    break;
                }
                c2 = 65535;
                break;
            case 492688268:
                if (str.equals("getHitTestResult")) {
                    c2 = '*';
                    break;
                }
                c2 = 65535;
                break;
            case 740366903:
                if (str.equals("injectCSSFileFromUrl")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case 817048102:
                if (str.equals("clearMatches")) {
                    c2 = 29;
                    break;
                }
                c2 = 65535;
                break;
            case 858987473:
                if (str.equals("pageDown")) {
                    c2 = '+';
                    break;
                }
                c2 = 65535;
                break;
            case 1042858233:
                if (str.equals("clearSslPreferences")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case 1076821923:
                if (str.equals("getProgress")) {
                    c2 = 2;
                    break;
                }
                c2 = 65535;
                break;
            case 1091267752:
                if (str.equals("getOriginalUrl")) {
                    c2 = '\'';
                    break;
                }
                c2 = 65535;
                break;
            case 1246613238:
                if (str.equals("requestFocusNodeHref")) {
                    c2 = '2';
                    break;
                }
                c2 = 65535;
                break;
            case 1312131169:
                if (str.equals("getCertificate")) {
                    c2 = '6';
                    break;
                }
                c2 = 65535;
                break;
            case 1520566363:
                if (str.equals("resumeTimers")) {
                    c2 = '#';
                    break;
                }
                c2 = 65535;
                break;
            case 1724190684:
                if (str.equals("setOptions")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case 1729408231:
                if (str.equals("requestImageRef")) {
                    c2 = '3';
                    break;
                }
                c2 = 65535;
                break;
            case 1779894764:
                if (str.equals("setContextMenu")) {
                    c2 = '1';
                    break;
                }
                c2 = 65535;
                break;
            case 1810715187:
                if (str.equals("goBackOrForward")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case 1845118384:
                if (str.equals("loadData")) {
                    c2 = 5;
                    break;
                }
                c2 = 65535;
                break;
            case 1845185410:
                if (str.equals("loadFile")) {
                    c2 = 6;
                    break;
                }
                c2 = 65535;
                break;
            case 1916929588:
                if (str.equals("findAllAsync")) {
                    c2 = 27;
                    break;
                }
                c2 = 65535;
                break;
            case 1925083019:
                if (str.equals("injectJavascriptFileFromUrl")) {
                    c2 = '\b';
                    break;
                }
                c2 = 65535;
                break;
            case 1937913574:
                if (str.equals("evaluateJavascript")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 1965076372:
                if (str.equals("getScale")) {
                    c2 = '(';
                    break;
                }
                c2 = 65535;
                break;
            case 1966196898:
                if (str.equals("getTitle")) {
                    c2 = 1;
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
                InAppWebView inAppWebView = this.f16457e;
                dVar.a(inAppWebView != null ? inAppWebView.getUrl() : null);
                return;
            case 1:
                InAppWebView inAppWebView2 = this.f16457e;
                dVar.a(inAppWebView2 != null ? inAppWebView2.getTitle() : null);
                return;
            case 2:
                InAppWebView inAppWebView3 = this.f16457e;
                dVar.a(inAppWebView3 != null ? Integer.valueOf(inAppWebView3.getProgress()) : null);
                return;
            case 3:
                InAppWebView inAppWebView4 = this.f16457e;
                if (inAppWebView4 != null) {
                    inAppWebView4.loadUrl((String) jVar.a(HummerConstants.URL), (Map) jVar.a("headers"), dVar);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case 4:
                InAppWebView inAppWebView5 = this.f16457e;
                if (inAppWebView5 != null) {
                    inAppWebView5.postUrl((String) jVar.a(HummerConstants.URL), (byte[]) jVar.a("postData"), dVar);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case 5:
                String str2 = (String) jVar.a(Constants$ScionAnalytics$MessageType.DATA_MESSAGE);
                String str3 = (String) jVar.a("mimeType");
                String str4 = (String) jVar.a("encoding");
                String str5 = (String) jVar.a("baseUrl");
                String str6 = (String) jVar.a("historyUrl");
                InAppWebView inAppWebView6 = this.f16457e;
                if (inAppWebView6 != null) {
                    inAppWebView6.loadData(str2, str3, str4, str5, str6, dVar);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case 6:
                InAppWebView inAppWebView7 = this.f16457e;
                if (inAppWebView7 != null) {
                    inAppWebView7.loadFile((String) jVar.a(HummerConstants.URL), (Map) jVar.a("headers"), dVar);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case 7:
                if (this.f16457e != null) {
                    this.f16457e.evaluateJavascript((String) jVar.a("source"), dVar);
                    return;
                } else {
                    dVar.a("");
                    return;
                }
            case '\b':
                if (this.f16457e != null) {
                    this.f16457e.injectJavascriptFileFromUrl((String) jVar.a("urlFile"));
                }
                dVar.a(true);
                return;
            case '\t':
                if (this.f16457e != null) {
                    this.f16457e.injectCSSCode((String) jVar.a("source"));
                }
                dVar.a(true);
                return;
            case '\n':
                if (this.f16457e != null) {
                    this.f16457e.injectCSSFileFromUrl((String) jVar.a("urlFile"));
                }
                dVar.a(true);
                return;
            case 11:
                InAppWebView inAppWebView8 = this.f16457e;
                if (inAppWebView8 != null) {
                    inAppWebView8.reload();
                }
                dVar.a(true);
                return;
            case '\f':
                InAppWebView inAppWebView9 = this.f16457e;
                if (inAppWebView9 != null) {
                    inAppWebView9.goBack();
                }
                dVar.a(true);
                return;
            case '\r':
                InAppWebView inAppWebView10 = this.f16457e;
                dVar.a(Boolean.valueOf(inAppWebView10 != null && inAppWebView10.canGoBack()));
                return;
            case 14:
                InAppWebView inAppWebView11 = this.f16457e;
                if (inAppWebView11 != null) {
                    inAppWebView11.goForward();
                }
                dVar.a(true);
                return;
            case 15:
                InAppWebView inAppWebView12 = this.f16457e;
                dVar.a(Boolean.valueOf(inAppWebView12 != null && inAppWebView12.canGoForward()));
                return;
            case 16:
                InAppWebView inAppWebView13 = this.f16457e;
                if (inAppWebView13 != null) {
                    inAppWebView13.goBackOrForward(((Integer) jVar.a("steps")).intValue());
                }
                dVar.a(true);
                return;
            case 17:
                InAppWebView inAppWebView14 = this.f16457e;
                dVar.a(Boolean.valueOf(inAppWebView14 != null && inAppWebView14.canGoBackOrForward(((Integer) jVar.a("steps")).intValue())));
                return;
            case 18:
                InAppWebView inAppWebView15 = this.f16457e;
                if (inAppWebView15 != null) {
                    inAppWebView15.stopLoading();
                }
                dVar.a(true);
                return;
            case 19:
                InAppWebView inAppWebView16 = this.f16457e;
                dVar.a(Boolean.valueOf(inAppWebView16 != null && inAppWebView16.isLoading()));
                return;
            case 20:
                InAppWebView inAppWebView17 = this.f16457e;
                if (inAppWebView17 != null) {
                    inAppWebView17.takeScreenshot(dVar);
                    return;
                } else {
                    dVar.a(null);
                    return;
                }
            case 21:
                if (this.f16457e != null) {
                    g gVar = new g();
                    HashMap<String, Object> hashMap = (HashMap) jVar.a("options");
                    gVar.a(hashMap);
                    this.f16457e.setOptions(gVar, hashMap);
                }
                dVar.a(true);
                return;
            case 22:
                InAppWebView inAppWebView18 = this.f16457e;
                dVar.a(inAppWebView18 != null ? inAppWebView18.getOptions() : null);
                return;
            case 23:
                InAppWebView inAppWebView19 = this.f16457e;
                dVar.a(inAppWebView19 != null ? inAppWebView19.getCopyBackForwardList() : null);
                return;
            case 24:
                if (this.f16457e != null && Build.VERSION.SDK_INT >= 27 && WebViewFeature.a("START_SAFE_BROWSING")) {
                    androidx.webkit.b.a(this.f16457e.getContext(), new a(this, dVar));
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case 25:
                InAppWebView inAppWebView20 = this.f16457e;
                if (inAppWebView20 != null) {
                    inAppWebView20.clearAllCache();
                }
                dVar.a(true);
                return;
            case 26:
                InAppWebView inAppWebView21 = this.f16457e;
                if (inAppWebView21 != null) {
                    inAppWebView21.clearSslPreferences();
                }
                dVar.a(true);
                return;
            case 27:
                if (this.f16457e != null) {
                    this.f16457e.findAllAsync((String) jVar.a("find"));
                }
                dVar.a(true);
                return;
            case 28:
                if (this.f16457e != null) {
                    this.f16457e.findNext(((Boolean) jVar.a("forward")).booleanValue());
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case 29:
                InAppWebView inAppWebView22 = this.f16457e;
                if (inAppWebView22 != null) {
                    inAppWebView22.clearMatches();
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case 30:
                if (this.f16457e != null) {
                    this.f16457e.scrollTo((Integer) jVar.a("x"), (Integer) jVar.a("y"), (Boolean) jVar.a("animated"));
                }
                dVar.a(true);
                return;
            case 31:
                if (this.f16457e != null) {
                    this.f16457e.scrollBy((Integer) jVar.a("x"), (Integer) jVar.a("y"), (Boolean) jVar.a("animated"));
                }
                dVar.a(true);
                return;
            case ' ':
                InAppWebView inAppWebView23 = this.f16457e;
                if (inAppWebView23 != null) {
                    inAppWebView23.onPause();
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '!':
                InAppWebView inAppWebView24 = this.f16457e;
                if (inAppWebView24 != null) {
                    inAppWebView24.onResume();
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '\"':
                InAppWebView inAppWebView25 = this.f16457e;
                if (inAppWebView25 != null) {
                    inAppWebView25.pauseTimers();
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '#':
                InAppWebView inAppWebView26 = this.f16457e;
                if (inAppWebView26 != null) {
                    inAppWebView26.resumeTimers();
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '$':
                InAppWebView inAppWebView27 = this.f16457e;
                if (inAppWebView27 != null && Build.VERSION.SDK_INT >= 21) {
                    inAppWebView27.printCurrentPage();
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '%':
                InAppWebView inAppWebView28 = this.f16457e;
                dVar.a(inAppWebView28 != null ? Integer.valueOf(inAppWebView28.getContentHeight()) : null);
                return;
            case '&':
                if (this.f16457e != null && Build.VERSION.SDK_INT >= 21) {
                    this.f16457e.zoomBy((float) ((Double) jVar.a("zoomFactor")).doubleValue());
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '\'':
                InAppWebView inAppWebView29 = this.f16457e;
                dVar.a(inAppWebView29 != null ? inAppWebView29.getOriginalUrl() : null);
                return;
            case '(':
                InAppWebView inAppWebView30 = this.f16457e;
                dVar.a(inAppWebView30 != null ? inAppWebView30.getUpdatedScale() : null);
                return;
            case ')':
                InAppWebView inAppWebView31 = this.f16457e;
                if (inAppWebView31 != null && Build.VERSION.SDK_INT >= 19) {
                    inAppWebView31.getSelectedText(dVar);
                    return;
                } else {
                    dVar.a(null);
                    return;
                }
            case '*':
                InAppWebView inAppWebView32 = this.f16457e;
                if (inAppWebView32 != null) {
                    WebView.HitTestResult hitTestResult = inAppWebView32.getHitTestResult();
                    HashMap hashMap2 = new HashMap();
                    hashMap2.put("type", Integer.valueOf(hitTestResult.getType()));
                    hashMap2.put("extra", hitTestResult.getExtra());
                    dVar.a(hashMap2);
                    return;
                }
                dVar.a(null);
                return;
            case '+':
                if (this.f16457e != null) {
                    dVar.a(Boolean.valueOf(this.f16457e.pageDown(((Boolean) jVar.a("bottom")).booleanValue())));
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case ',':
                if (this.f16457e != null) {
                    dVar.a(Boolean.valueOf(this.f16457e.pageUp(((Boolean) jVar.a("top")).booleanValue())));
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '-':
                if (this.f16457e != null) {
                    this.f16457e.saveWebArchive((String) jVar.a("basename"), ((Boolean) jVar.a("autoname")).booleanValue(), new b(this, dVar));
                    return;
                } else {
                    dVar.a(null);
                    return;
                }
            case '.':
                InAppWebView inAppWebView33 = this.f16457e;
                if (inAppWebView33 != null) {
                    dVar.a(Boolean.valueOf(inAppWebView33.zoomIn()));
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '/':
                InAppWebView inAppWebView34 = this.f16457e;
                if (inAppWebView34 != null) {
                    dVar.a(Boolean.valueOf(inAppWebView34.zoomOut()));
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '0':
                InAppWebView inAppWebView35 = this.f16457e;
                if (inAppWebView35 != null) {
                    inAppWebView35.clearFocus();
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '1':
                if (this.f16457e != null) {
                    this.f16457e.contextMenu = (Map) jVar.a("contextMenu");
                    dVar.a(true);
                    return;
                } else {
                    dVar.a(false);
                    return;
                }
            case '2':
                InAppWebView inAppWebView36 = this.f16457e;
                if (inAppWebView36 != null) {
                    dVar.a(inAppWebView36.requestFocusNodeHref());
                    return;
                } else {
                    dVar.a(null);
                    return;
                }
            case '3':
                InAppWebView inAppWebView37 = this.f16457e;
                if (inAppWebView37 != null) {
                    dVar.a(inAppWebView37.requestImageRef());
                    return;
                } else {
                    dVar.a(null);
                    return;
                }
            case '4':
                InAppWebView inAppWebView38 = this.f16457e;
                if (inAppWebView38 != null) {
                    dVar.a(Integer.valueOf(inAppWebView38.getScrollX()));
                    return;
                } else {
                    dVar.a(null);
                    return;
                }
            case '5':
                InAppWebView inAppWebView39 = this.f16457e;
                if (inAppWebView39 != null) {
                    dVar.a(Integer.valueOf(inAppWebView39.getScrollY()));
                    return;
                } else {
                    dVar.a(null);
                    return;
                }
            case '6':
                InAppWebView inAppWebView40 = this.f16457e;
                if (inAppWebView40 != null) {
                    dVar.a(inAppWebView40.getCertificateMap());
                    return;
                } else {
                    dVar.a(null);
                    return;
                }
            default:
                dVar.a();
                return;
        }
    }
}
