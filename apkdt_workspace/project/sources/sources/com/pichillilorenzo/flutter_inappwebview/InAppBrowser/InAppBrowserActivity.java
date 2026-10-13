package com.pichillilorenzo.flutter_inappwebview.InAppBrowser;

import android.content.Intent;
import android.graphics.Color;
import android.graphics.drawable.ColorDrawable;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ProgressBar;
import android.widget.SearchView;
import androidx.annotation.RequiresApi;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.webkit.WebViewFeature;
import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.google.firebase.messaging.Constants$ScionAnalytics$MessageType;
import com.pichillilorenzo.flutter_inappwebview.InAppWebView.InAppWebView;
import com.pichillilorenzo.flutter_inappwebview.m;
import com.pichillilorenzo.flutter_inappwebview.n;
import com.pichillilorenzo.flutter_inappwebview.o;
import com.pichillilorenzo.flutter_inappwebview.q;
import g.a.c.a.j;
import g.a.c.a.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* loaded from: classes2.dex */
public class InAppBrowserActivity extends AppCompatActivity implements k.c {
    static final String LOG_TAG = "InAppBrowserActivity";
    public ActionBar actionBar;
    public k channel;
    public String fromActivity;
    public Map<String, String> headers;
    public Menu menu;
    public com.pichillilorenzo.flutter_inappwebview.InAppBrowser.a options;
    public ProgressBar progressBar;
    public SearchView searchView;
    public String uuid;
    public InAppWebView webView;
    public Integer windowId;
    public boolean isHidden = false;
    public List<g> activityResultListeners = new ArrayList();

    /* loaded from: classes2.dex */
    class a implements SearchView.OnQueryTextListener {
        a() {
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextChange(String str) {
            return false;
        }

        @Override // android.widget.SearchView.OnQueryTextListener
        public boolean onQueryTextSubmit(String str) {
            if (str.isEmpty()) {
                return false;
            }
            InAppBrowserActivity.this.webView.loadUrl(str);
            InAppBrowserActivity.this.searchView.setQuery("", false);
            InAppBrowserActivity.this.searchView.setIconified(true);
            return true;
        }
    }

    /* loaded from: classes2.dex */
    class b implements SearchView.OnCloseListener {
        b() {
        }

        @Override // android.widget.SearchView.OnCloseListener
        public boolean onClose() {
            if (InAppBrowserActivity.this.searchView.getQuery().toString().isEmpty()) {
                InAppBrowserActivity inAppBrowserActivity = InAppBrowserActivity.this;
                inAppBrowserActivity.searchView.setQuery(inAppBrowserActivity.webView.getUrl(), false);
            }
            return false;
        }
    }

    /* loaded from: classes2.dex */
    class c implements View.OnFocusChangeListener {
        c() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z) {
            if (z) {
                return;
            }
            InAppBrowserActivity.this.searchView.setQuery("", false);
            InAppBrowserActivity.this.searchView.setIconified(true);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements ValueCallback<Boolean> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16402a;

        d(InAppBrowserActivity inAppBrowserActivity, k.d dVar) {
            this.f16402a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(Boolean bool) {
            this.f16402a.a(bool);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e implements ValueCallback<String> {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ k.d f16403a;

        e(InAppBrowserActivity inAppBrowserActivity, k.d dVar) {
            this.f16403a = dVar;
        }

        @Override // android.webkit.ValueCallback
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onReceiveValue(String str) {
            this.f16403a.a(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class f extends WebViewClient {
        f() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            InAppBrowserActivity.this.webView.dispose();
            InAppBrowserActivity.this.webView.destroy();
            InAppBrowserActivity.this.webView = null;
        }
    }

    /* loaded from: classes2.dex */
    public interface g {
        boolean onActivityResult(int i2, int i3, Intent intent);
    }

    private void a() {
        this.webView.prepare();
        if (this.options.f16405a.booleanValue()) {
            hide();
        } else {
            show();
        }
        this.progressBar = (ProgressBar) findViewById(m.progressBar);
        if (!this.options.f16412h.booleanValue()) {
            this.progressBar.setMax(0);
        } else {
            this.progressBar.setMax(100);
        }
        this.actionBar.f(!this.options.f16410f.booleanValue());
        if (!this.options.f16406b.booleanValue()) {
            this.actionBar.i();
        }
        String str = this.options.f16407c;
        if (str != null && !str.isEmpty()) {
            this.actionBar.a(new ColorDrawable(Color.parseColor(this.options.f16407c)));
        }
        String str2 = this.options.f16408d;
        if (str2 == null || str2.isEmpty()) {
            return;
        }
        this.actionBar.a(this.options.f16408d);
    }

    public boolean canGoBack() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.canGoBack();
        }
        return false;
    }

    public boolean canGoBackOrForward(int i2) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.canGoBackOrForward(i2);
        }
        return false;
    }

    public boolean canGoForward() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.canGoForward();
        }
        return false;
    }

    public void clearCache() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.clearAllCache();
        }
    }

    public void clearFocus() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.clearFocus();
        }
    }

    public void clearMatches(k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.clearMatches();
            dVar.a(true);
        } else {
            dVar.a(false);
        }
    }

    public void clearSslPreferences() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.clearSslPreferences();
        }
    }

    public void close(k.d dVar) {
        this.channel.a("onExit", new HashMap());
        dispose();
        if (dVar != null) {
            dVar.a(true);
        }
    }

    public void closeButtonClicked(MenuItem menuItem) {
        close(null);
    }

    public void dispose() {
        this.channel.a((k.c) null);
        this.activityResultListeners.clear();
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            io.flutter.embedding.engine.g.c.c cVar = q.f16642e;
            if (cVar != null) {
                cVar.b(inAppWebView.inAppWebViewChromeClient);
            }
            ((ViewGroup) this.webView.getParent()).removeView(this.webView);
            this.webView.setWebChromeClient(new WebChromeClient());
            this.webView.setWebViewClient(new f());
            this.webView.loadUrl("about:blank");
            finish();
        }
    }

    public void evaluateJavascript(String str, k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.evaluateJavascript(str, dVar);
        } else {
            dVar.a("");
        }
    }

    public void findAllAsync(String str) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.findAllAsync(str);
        }
    }

    public void findNext(Boolean bool, k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.findNext(bool.booleanValue());
            dVar.a(true);
        } else {
            dVar.a(false);
        }
    }

    public Map<String, Object> getCertificate() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getCertificateMap();
        }
        return null;
    }

    public Integer getContentHeight() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return Integer.valueOf(inAppWebView.getContentHeight());
        }
        return null;
    }

    public HashMap<String, Object> getCopyBackForwardList() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getCopyBackForwardList();
        }
        return null;
    }

    public Map<String, Object> getHitTestResult() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView == null) {
            return null;
        }
        WebView.HitTestResult hitTestResult = inAppWebView.getHitTestResult();
        HashMap hashMap = new HashMap();
        hashMap.put("type", Integer.valueOf(hitTestResult.getType()));
        hashMap.put("extra", hitTestResult.getExtra());
        return hashMap;
    }

    public Map<String, Object> getOptions() {
        Map<String, Object> options = this.webView.getOptions();
        com.pichillilorenzo.flutter_inappwebview.InAppBrowser.a aVar = this.options;
        if (aVar == null || options == null) {
            return null;
        }
        Map<String, Object> a2 = aVar.a(this);
        a2.putAll(options);
        return a2;
    }

    public String getOriginalUrl() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getOriginalUrl();
        }
        return null;
    }

    public Integer getProgress() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return Integer.valueOf(inAppWebView.getProgress());
        }
        return null;
    }

    public Float getScale() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getUpdatedScale();
        }
        return null;
    }

    public Integer getScrollX() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return Integer.valueOf(inAppWebView.getScrollX());
        }
        return null;
    }

    public Integer getScrollY() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return Integer.valueOf(inAppWebView.getScrollY());
        }
        return null;
    }

    @RequiresApi(api = 19)
    public void getSelectedText(k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.getSelectedText(dVar);
        } else {
            dVar.a(null);
        }
    }

    public String getUrl() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getUrl();
        }
        return null;
    }

    public String getWebViewTitle() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.getTitle();
        }
        return null;
    }

    public void goBack() {
        if (this.webView == null || !canGoBack()) {
            return;
        }
        this.webView.goBack();
    }

    public void goBackButtonClicked(MenuItem menuItem) {
        goBack();
    }

    public void goBackOrForward(int i2) {
        if (this.webView == null || !canGoBackOrForward(i2)) {
            return;
        }
        this.webView.goBackOrForward(i2);
    }

    public void goForward() {
        if (this.webView == null || !canGoForward()) {
            return;
        }
        this.webView.goForward();
    }

    public void goForwardButtonClicked(MenuItem menuItem) {
        goForward();
    }

    public void hide() {
        try {
            this.isHidden = true;
            Intent intent = new Intent(this, Class.forName(this.fromActivity));
            intent.setFlags(AntDetector.SCENE_ID_LOGIN_REGIST);
            startActivityIfNeeded(intent, 0);
        } catch (ClassNotFoundException e2) {
            e2.printStackTrace();
            e2.getMessage();
        }
    }

    public void injectCSSCode(String str) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.injectCSSCode(str);
        }
    }

    public void injectCSSFileFromUrl(String str) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.injectCSSFileFromUrl(str);
        }
    }

    public void injectJavascriptFileFromUrl(String str) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.injectJavascriptFileFromUrl(str);
        }
    }

    public boolean isLoading() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.isLoading;
        }
        return false;
    }

    public void loadData(String str, String str2, String str3, String str4, String str5, k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadData(str, str2, str3, str4, str5, dVar);
        } else {
            dVar.a(LOG_TAG, "webView is null", null);
        }
    }

    public void loadFile(String str, k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadFile(str, dVar);
        } else {
            dVar.a(LOG_TAG, "webView is null", null);
        }
    }

    public void loadUrl(String str, k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadUrl(str, dVar);
        } else {
            dVar.a(LOG_TAG, "webView is null", null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onActivityResult(int i2, int i3, Intent intent) {
        Iterator<g> it = this.activityResultListeners.iterator();
        while (it.hasNext()) {
            if (it.next().onActivityResult(i2, i3, intent)) {
                return;
            }
        }
        super.onActivityResult(i2, i3, intent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (bundle != null) {
            return;
        }
        Bundle extras = getIntent().getExtras();
        this.uuid = extras.getString("uuid");
        this.windowId = Integer.valueOf(extras.getInt("windowId"));
        this.channel = new k(q.f16640c, "com.pichillilorenzo/flutter_inappbrowser_" + this.uuid);
        this.channel.a(this);
        setContentView(n.activity_web_view);
        this.webView = (InAppWebView) findViewById(m.webView);
        InAppWebView inAppWebView = this.webView;
        inAppWebView.windowId = this.windowId;
        inAppWebView.inAppBrowserActivity = this;
        inAppWebView.channel = this.channel;
        this.fromActivity = extras.getString("fromActivity");
        HashMap hashMap = (HashMap) extras.getSerializable("options");
        HashMap hashMap2 = (HashMap) extras.getSerializable("contextMenu");
        this.options = new com.pichillilorenzo.flutter_inappwebview.InAppBrowser.a();
        this.options.a(hashMap);
        com.pichillilorenzo.flutter_inappwebview.InAppWebView.g gVar = new com.pichillilorenzo.flutter_inappwebview.InAppWebView.g();
        gVar.a(hashMap);
        InAppWebView inAppWebView2 = this.webView;
        inAppWebView2.options = gVar;
        inAppWebView2.contextMenu = hashMap2;
        this.actionBar = getSupportActionBar();
        a();
        if (this.windowId.intValue() != -1) {
            Message message = com.pichillilorenzo.flutter_inappwebview.InAppWebView.e.m.get(this.windowId);
            if (message != null) {
                ((WebView.WebViewTransport) message.obj).setWebView(this.webView);
                message.sendToTarget();
            }
        } else if (!Boolean.valueOf(extras.getBoolean("isData")).booleanValue()) {
            this.headers = (HashMap) extras.getSerializable("headers");
            this.webView.loadUrl(extras.getString(HummerConstants.URL), this.headers);
        } else {
            this.webView.loadDataWithBaseURL(extras.getString("baseUrl"), extras.getString(Constants$ScionAnalytics$MessageType.DATA_MESSAGE), extras.getString("mimeType"), extras.getString("encoding"), extras.getString("historyUrl"));
        }
        HashMap hashMap3 = new HashMap();
        hashMap3.put("uuid", this.uuid);
        this.channel.a("onBrowserCreated", hashMap3);
    }

    @Override // android.app.Activity
    public boolean onCreateOptionsMenu(Menu menu) {
        this.menu = menu;
        getMenuInflater().inflate(o.menu_main, this.menu);
        this.searchView = (SearchView) this.menu.findItem(m.menu_search).getActionView();
        this.searchView.setFocusable(true);
        if (this.options.f16409e.booleanValue()) {
            this.menu.findItem(m.menu_search).setVisible(false);
        }
        this.searchView.setQuery(this.webView.getUrl(), false);
        if (this.options.f16408d.isEmpty()) {
            this.actionBar.a(this.webView.getTitle());
        }
        this.searchView.setOnQueryTextListener(new a());
        this.searchView.setOnCloseListener(new b());
        this.searchView.setOnQueryTextFocusChangeListener(new c());
        return true;
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        dispose();
        super.onDestroy();
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4) {
            if (canGoBack()) {
                goBack();
                return true;
            }
            if (!this.options.f16411g.booleanValue()) {
                return true;
            }
            close(null);
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // g.a.c.a.k.c
    public void onMethodCall(j jVar, k.d dVar) {
        char c2;
        String str = jVar.f18223a;
        switch (str.hashCode()) {
            case -1787354268:
                if (str.equals("pauseTimers")) {
                    c2 = '&';
                    break;
                }
                c2 = 65535;
                break;
            case -1773179062:
                if (str.equals("getContentHeight")) {
                    c2 = ')';
                    break;
                }
                c2 = 65535;
                break;
            case -1624396757:
                if (str.equals("saveWebArchive")) {
                    c2 = '1';
                    break;
                }
                c2 = 65535;
                break;
            case -1331417355:
                if (str.equals("getScrollX")) {
                    c2 = '8';
                    break;
                }
                c2 = 65535;
                break;
            case -1331417354:
                if (str.equals("getScrollY")) {
                    c2 = '9';
                    break;
                }
                c2 = 65535;
                break;
            case -1309347773:
                if (str.equals("canGoBackOrForward")) {
                    c2 = 20;
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
                    c2 = 15;
                    break;
                }
                c2 = 65535;
                break;
            case -1067273523:
                if (str.equals("canGoForward")) {
                    c2 = 18;
                    break;
                }
                c2 = 65535;
                break;
            case -995752566:
                if (str.equals("pageUp")) {
                    c2 = '0';
                    break;
                }
                c2 = 65535;
                break;
            case -948122918:
                if (str.equals("stopLoading")) {
                    c2 = 21;
                    break;
                }
                c2 = 65535;
                break;
            case -934641255:
                if (str.equals("reload")) {
                    c2 = 14;
                    break;
                }
                c2 = 65535;
                break;
            case -934426579:
                if (str.equals("resume")) {
                    c2 = '%';
                    break;
                }
                c2 = 65535;
                break;
            case -759238347:
                if (str.equals("clearCache")) {
                    c2 = 29;
                    break;
                }
                c2 = 65535;
                break;
            case -756050293:
                if (str.equals("clearFocus")) {
                    c2 = '4';
                    break;
                }
                c2 = 65535;
                break;
            case -696286326:
                if (str.equals("zoomBy")) {
                    c2 = '*';
                    break;
                }
                c2 = 65535;
                break;
            case -696286120:
                if (str.equals("zoomIn")) {
                    c2 = '2';
                    break;
                }
                c2 = 65535;
                break;
            case -679382964:
                if (str.equals("findNext")) {
                    c2 = ' ';
                    break;
                }
                c2 = 65535;
                break;
            case -678975813:
                if (str.equals("printCurrentPage")) {
                    c2 = '(';
                    break;
                }
                c2 = 65535;
                break;
            case -543453324:
                if (str.equals("isHidden")) {
                    c2 = 23;
                    break;
                }
                c2 = 65535;
                break;
            case -402165756:
                if (str.equals("scrollBy")) {
                    c2 = '#';
                    break;
                }
                c2 = 65535;
                break;
            case -402165208:
                if (str.equals("scrollTo")) {
                    c2 = '\"';
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
                    c2 = 17;
                    break;
                }
                c2 = 65535;
                break;
            case -317054497:
                if (str.equals("canGoBack")) {
                    c2 = 16;
                    break;
                }
                c2 = 65535;
                break;
            case -243128142:
                if (str.equals("isLoading")) {
                    c2 = 22;
                    break;
                }
                c2 = 65535;
                break;
            case -212614552:
                if (str.equals("getOptions")) {
                    c2 = 26;
                    break;
                }
                c2 = 65535;
                break;
            case -127960866:
                if (str.equals("getSelectedText")) {
                    c2 = '-';
                    break;
                }
                c2 = 65535;
                break;
            case -110027141:
                if (str.equals("zoomOut")) {
                    c2 = '3';
                    break;
                }
                c2 = 65535;
                break;
            case -53272641:
                if (str.equals("injectCSSCode")) {
                    c2 = '\n';
                    break;
                }
                c2 = 65535;
                break;
            case -32598479:
                if (str.equals("getCopyBackForwardList")) {
                    c2 = 27;
                    break;
                }
                c2 = 65535;
                break;
            case -17750794:
                if (str.equals("startSafeBrowsing")) {
                    c2 = 28;
                    break;
                }
                c2 = 65535;
                break;
            case 3202370:
                if (str.equals("hide")) {
                    c2 = '\r';
                    break;
                }
                c2 = 65535;
                break;
            case 3529469:
                if (str.equals("show")) {
                    c2 = '\f';
                    break;
                }
                c2 = 65535;
                break;
            case 94756344:
                if (str.equals("close")) {
                    c2 = 7;
                    break;
                }
                c2 = 65535;
                break;
            case 106440182:
                if (str.equals("pause")) {
                    c2 = '$';
                    break;
                }
                c2 = 65535;
                break;
            case 194959693:
                if (str.equals("takeScreenshot")) {
                    c2 = 24;
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
                    c2 = '.';
                    break;
                }
                c2 = 65535;
                break;
            case 740366903:
                if (str.equals("injectCSSFileFromUrl")) {
                    c2 = 11;
                    break;
                }
                c2 = 65535;
                break;
            case 817048102:
                if (str.equals("clearMatches")) {
                    c2 = '!';
                    break;
                }
                c2 = 65535;
                break;
            case 858987473:
                if (str.equals("pageDown")) {
                    c2 = '/';
                    break;
                }
                c2 = 65535;
                break;
            case 1042858233:
                if (str.equals("clearSslPreferences")) {
                    c2 = 30;
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
                    c2 = '+';
                    break;
                }
                c2 = 65535;
                break;
            case 1246613238:
                if (str.equals("requestFocusNodeHref")) {
                    c2 = '6';
                    break;
                }
                c2 = 65535;
                break;
            case 1312131169:
                if (str.equals("getCertificate")) {
                    c2 = ':';
                    break;
                }
                c2 = 65535;
                break;
            case 1520566363:
                if (str.equals("resumeTimers")) {
                    c2 = '\'';
                    break;
                }
                c2 = 65535;
                break;
            case 1724190684:
                if (str.equals("setOptions")) {
                    c2 = 25;
                    break;
                }
                c2 = 65535;
                break;
            case 1729408231:
                if (str.equals("requestImageRef")) {
                    c2 = '7';
                    break;
                }
                c2 = 65535;
                break;
            case 1779894764:
                if (str.equals("setContextMenu")) {
                    c2 = '5';
                    break;
                }
                c2 = 65535;
                break;
            case 1810715187:
                if (str.equals("goBackOrForward")) {
                    c2 = 19;
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
                    c2 = 31;
                    break;
                }
                c2 = 65535;
                break;
            case 1925083019:
                if (str.equals("injectJavascriptFileFromUrl")) {
                    c2 = '\t';
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
            case 1965076372:
                if (str.equals("getScale")) {
                    c2 = ',';
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
                dVar.a(getUrl());
                return;
            case 1:
                dVar.a(getWebViewTitle());
                return;
            case 2:
                dVar.a(getProgress());
                return;
            case 3:
                String str2 = (String) jVar.a(HummerConstants.URL);
                Map<String, String> map = (Map) jVar.a("headers");
                if (map != null) {
                    loadUrl(str2, map, dVar);
                    return;
                } else {
                    loadUrl(str2, dVar);
                    return;
                }
            case 4:
                postUrl((String) jVar.a(HummerConstants.URL), (byte[]) jVar.a("postData"), dVar);
                return;
            case 5:
                loadData((String) jVar.a(Constants$ScionAnalytics$MessageType.DATA_MESSAGE), (String) jVar.a("mimeType"), (String) jVar.a("encoding"), (String) jVar.a("baseUrl"), (String) jVar.a("historyUrl"), dVar);
                return;
            case 6:
                String str3 = (String) jVar.a(HummerConstants.URL);
                Map<String, String> map2 = (Map) jVar.a("headers");
                if (map2 != null) {
                    loadFile(str3, map2, dVar);
                    return;
                } else {
                    loadFile(str3, dVar);
                    return;
                }
            case 7:
                close(dVar);
                return;
            case '\b':
                evaluateJavascript((String) jVar.a("source"), dVar);
                return;
            case '\t':
                injectJavascriptFileFromUrl((String) jVar.a("urlFile"));
                dVar.a(true);
                return;
            case '\n':
                injectCSSCode((String) jVar.a("source"));
                dVar.a(true);
                return;
            case 11:
                injectCSSFileFromUrl((String) jVar.a("urlFile"));
                dVar.a(true);
                return;
            case '\f':
                show();
                dVar.a(true);
                return;
            case '\r':
                hide();
                dVar.a(true);
                return;
            case 14:
                reload();
                dVar.a(true);
                return;
            case 15:
                goBack();
                dVar.a(true);
                return;
            case 16:
                dVar.a(Boolean.valueOf(canGoBack()));
                return;
            case 17:
                goForward();
                dVar.a(true);
                return;
            case 18:
                dVar.a(Boolean.valueOf(canGoForward()));
                return;
            case 19:
                goBackOrForward(((Integer) jVar.a("steps")).intValue());
                dVar.a(true);
                return;
            case 20:
                dVar.a(Boolean.valueOf(canGoBackOrForward(((Integer) jVar.a("steps")).intValue())));
                return;
            case 21:
                stopLoading();
                dVar.a(true);
                return;
            case 22:
                dVar.a(Boolean.valueOf(isLoading()));
                return;
            case 23:
                dVar.a(Boolean.valueOf(this.isHidden));
                return;
            case 24:
                takeScreenshot(dVar);
                return;
            case 25:
                String str4 = (String) jVar.a("optionsType");
                if (((str4.hashCode() == 739596306 && str4.equals("InAppBrowserOptions")) ? (char) 0 : (char) 65535) != 0) {
                    dVar.a(LOG_TAG, "Options " + str4 + " not available.", null);
                } else {
                    com.pichillilorenzo.flutter_inappwebview.InAppBrowser.a aVar = new com.pichillilorenzo.flutter_inappwebview.InAppBrowser.a();
                    HashMap<String, Object> hashMap = (HashMap) jVar.a("options");
                    aVar.a(hashMap);
                    setOptions(aVar, hashMap);
                }
                dVar.a(true);
                return;
            case 26:
                dVar.a(getOptions());
                return;
            case 27:
                dVar.a(getCopyBackForwardList());
                return;
            case 28:
                startSafeBrowsing(dVar);
                return;
            case 29:
                clearCache();
                dVar.a(true);
                return;
            case 30:
                clearSslPreferences();
                dVar.a(true);
                return;
            case 31:
                findAllAsync((String) jVar.a("find"));
                dVar.a(true);
                return;
            case ' ':
                findNext((Boolean) jVar.a("forward"), dVar);
                return;
            case '!':
                clearMatches(dVar);
                return;
            case '\"':
                scrollTo((Integer) jVar.a("x"), (Integer) jVar.a("y"), (Boolean) jVar.a("animated"));
                dVar.a(true);
                return;
            case '#':
                scrollBy((Integer) jVar.a("x"), (Integer) jVar.a("y"), (Boolean) jVar.a("animated"));
                dVar.a(true);
                return;
            case '$':
                onPauseWebView();
                dVar.a(true);
                return;
            case '%':
                onResumeWebView();
                dVar.a(true);
                return;
            case '&':
                pauseTimers();
                dVar.a(true);
                return;
            case '\'':
                resumeTimers();
                dVar.a(true);
                return;
            case '(':
                if (Build.VERSION.SDK_INT >= 21) {
                    printCurrentPage();
                }
                dVar.a(true);
                return;
            case ')':
                dVar.a(getContentHeight());
                return;
            case '*':
                if (Build.VERSION.SDK_INT >= 21) {
                    zoomBy((Float) jVar.a("zoomFactor"));
                }
                dVar.a(true);
                return;
            case '+':
                dVar.a(getOriginalUrl());
                return;
            case ',':
                dVar.a(getScale());
                return;
            case '-':
                if (Build.VERSION.SDK_INT >= 19) {
                    getSelectedText(dVar);
                    return;
                } else {
                    dVar.a(null);
                    return;
                }
            case '.':
                dVar.a(getHitTestResult());
                return;
            case '/':
                dVar.a(Boolean.valueOf(pageDown(((Boolean) jVar.a("bottom")).booleanValue())));
                return;
            case '0':
                dVar.a(Boolean.valueOf(pageUp(((Boolean) jVar.a("top")).booleanValue())));
                return;
            case '1':
                saveWebArchive((String) jVar.a("basename"), ((Boolean) jVar.a("autoname")).booleanValue(), dVar);
                return;
            case '2':
                dVar.a(Boolean.valueOf(zoomIn()));
                return;
            case '3':
                dVar.a(Boolean.valueOf(zoomOut()));
                return;
            case '4':
                clearFocus();
                dVar.a(true);
                return;
            case '5':
                setContextMenu((Map) jVar.a("contextMenu"));
                dVar.a(true);
                return;
            case '6':
                dVar.a(requestFocusNodeHref());
                return;
            case '7':
                dVar.a(requestImageRef());
                return;
            case '8':
                dVar.a(getScrollX());
                return;
            case '9':
                dVar.a(getScrollY());
                return;
            case ':':
                dVar.a(getCertificate());
                return;
            default:
                dVar.a();
                return;
        }
    }

    public void onPauseWebView() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.onPause();
        }
    }

    public void onResumeWebView() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.onResume();
        }
    }

    public boolean pageDown(boolean z) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.pageDown(z);
        }
        return false;
    }

    public boolean pageUp(boolean z) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.pageUp(z);
        }
        return false;
    }

    public void pauseTimers() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.pauseTimers();
        }
    }

    public void postUrl(String str, byte[] bArr, k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.postUrl(str, bArr, dVar);
        } else {
            dVar.a(LOG_TAG, "webView is null", null);
        }
    }

    @RequiresApi(api = 21)
    public void printCurrentPage() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.printCurrentPage();
        }
    }

    public void reload() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.reload();
        }
    }

    public void reloadButtonClicked(MenuItem menuItem) {
        reload();
    }

    public Map<String, Object> requestFocusNodeHref() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.requestFocusNodeHref();
        }
        return null;
    }

    public Map<String, Object> requestImageRef() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.requestImageRef();
        }
        return null;
    }

    public void resumeTimers() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.resumeTimers();
        }
    }

    public void saveWebArchive(String str, boolean z, k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.saveWebArchive(str, z, new e(this, dVar));
        } else {
            dVar.a(null);
        }
    }

    public void scrollBy(Integer num, Integer num2, Boolean bool) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.scrollBy(num, num2, bool);
        }
    }

    public void scrollTo(Integer num, Integer num2, Boolean bool) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.scrollTo(num, num2, bool);
        }
    }

    public void setContextMenu(Map<String, Object> map) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.contextMenu = map;
        }
    }

    public void setOptions(com.pichillilorenzo.flutter_inappwebview.InAppBrowser.a aVar, HashMap<String, Object> hashMap) {
        com.pichillilorenzo.flutter_inappwebview.InAppWebView.g gVar = new com.pichillilorenzo.flutter_inappwebview.InAppWebView.g();
        gVar.a(hashMap);
        this.webView.setOptions(gVar, hashMap);
        if (hashMap.get("hidden") != null) {
            Boolean bool = this.options.f16405a;
            Boolean bool2 = aVar.f16405a;
            if (bool != bool2) {
                if (bool2.booleanValue()) {
                    hide();
                } else {
                    show();
                }
            }
        }
        if (hashMap.get("progressBar") != null) {
            Boolean bool3 = this.options.f16412h;
            Boolean bool4 = aVar.f16412h;
            if (bool3 != bool4 && this.progressBar != null) {
                if (bool4.booleanValue()) {
                    this.progressBar.setMax(0);
                } else {
                    this.progressBar.setMax(100);
                }
            }
        }
        if (hashMap.get("hideTitleBar") != null) {
            if (this.options.f16410f != aVar.f16410f) {
                this.actionBar.f(!r3.booleanValue());
            }
        }
        if (hashMap.get("toolbarTop") != null) {
            Boolean bool5 = this.options.f16406b;
            Boolean bool6 = aVar.f16406b;
            if (bool5 != bool6) {
                if (!bool6.booleanValue()) {
                    this.actionBar.i();
                } else {
                    this.actionBar.m();
                }
            }
        }
        if (hashMap.get("toolbarTopBackgroundColor") != null) {
            String str = this.options.f16407c;
            String str2 = aVar.f16407c;
            if (str != str2 && !str2.isEmpty()) {
                this.actionBar.a(new ColorDrawable(Color.parseColor(aVar.f16407c)));
            }
        }
        if (hashMap.get("toolbarTopFixedTitle") != null) {
            String str3 = this.options.f16408d;
            String str4 = aVar.f16408d;
            if (str3 != str4 && !str4.isEmpty()) {
                this.actionBar.a(aVar.f16408d);
            }
        }
        if (hashMap.get("hideUrlBar") != null) {
            Boolean bool7 = this.options.f16409e;
            Boolean bool8 = aVar.f16409e;
            if (bool7 != bool8) {
                if (bool8.booleanValue()) {
                    this.menu.findItem(m.menu_search).setVisible(false);
                } else {
                    this.menu.findItem(m.menu_search).setVisible(true);
                }
            }
        }
        this.options = aVar;
    }

    public void shareButtonClicked(MenuItem menuItem) {
        Intent intent = new Intent("android.intent.action.SEND");
        intent.setType("text/plain");
        intent.putExtra("android.intent.extra.TEXT", this.webView.getUrl());
        startActivity(Intent.createChooser(intent, "Share"));
    }

    public void show() {
        this.isHidden = false;
        Intent intent = new Intent(this, (Class<?>) InAppBrowserActivity.class);
        intent.setFlags(AntDetector.SCENE_ID_LOGIN_REGIST);
        startActivityIfNeeded(intent, 0);
    }

    public void startSafeBrowsing(k.d dVar) {
        if (this.webView != null && Build.VERSION.SDK_INT >= 27 && WebViewFeature.a("START_SAFE_BROWSING")) {
            androidx.webkit.b.a(this.webView.getContext(), new d(this, dVar));
        } else {
            dVar.a(false);
        }
    }

    public void stopLoading() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.stopLoading();
        }
    }

    public void takeScreenshot(k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.takeScreenshot(dVar);
        } else {
            dVar.a(null);
        }
    }

    @RequiresApi(api = 21)
    public void zoomBy(Float f2) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.zoomBy(f2.floatValue());
        }
    }

    public boolean zoomIn() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.zoomIn();
        }
        return false;
    }

    public boolean zoomOut() {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            return inAppWebView.zoomOut();
        }
        return false;
    }

    public void loadFile(String str, Map<String, String> map, k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadFile(str, map, dVar);
        } else {
            dVar.a(LOG_TAG, "webView is null", null);
        }
    }

    public void loadUrl(String str, Map<String, String> map, k.d dVar) {
        InAppWebView inAppWebView = this.webView;
        if (inAppWebView != null) {
            inAppWebView.loadUrl(str, map, dVar);
        } else {
            dVar.a(LOG_TAG, "webView is null", null);
        }
    }
}
