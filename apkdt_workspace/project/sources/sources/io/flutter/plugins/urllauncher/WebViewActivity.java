package io.flutter.plugins.urllauncher;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Build;
import android.os.Bundle;
import android.os.Message;
import android.view.KeyEvent;
import android.webkit.WebChromeClient;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import java.util.HashMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class WebViewActivity extends Activity {
    public static String ACTION_CLOSE = "close action";

    /* renamed from: i, reason: collision with root package name */
    private static String f19507i = "url";

    /* renamed from: j, reason: collision with root package name */
    private static String f19508j = "enableJavaScript";

    /* renamed from: k, reason: collision with root package name */
    private static String f19509k = "enableDomStorage";

    /* renamed from: g, reason: collision with root package name */
    private WebView f19512g;

    /* renamed from: e, reason: collision with root package name */
    private final BroadcastReceiver f19510e = new a();

    /* renamed from: f, reason: collision with root package name */
    private final WebViewClient f19511f = new b(this);

    /* renamed from: h, reason: collision with root package name */
    private IntentFilter f19513h = new IntentFilter(ACTION_CLOSE);

    /* loaded from: classes2.dex */
    class a extends BroadcastReceiver {
        a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            if (WebViewActivity.ACTION_CLOSE.equals(intent.getAction())) {
                WebViewActivity.this.finish();
            }
        }
    }

    /* loaded from: classes2.dex */
    private class c extends WebChromeClient {

        /* loaded from: classes2.dex */
        class a extends WebViewClient {
            a() {
            }

            @Override // android.webkit.WebViewClient
            @TargetApi(21)
            public boolean shouldOverrideUrlLoading(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest) {
                WebViewActivity.this.f19512g.loadUrl(webResourceRequest.getUrl().toString());
                return true;
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView, String str) {
                WebViewActivity.this.f19512g.loadUrl(str);
                return true;
            }
        }

        private c() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onCreateWindow(WebView webView, boolean z, boolean z2, Message message) {
            a aVar = new a();
            WebView webView2 = new WebView(WebViewActivity.this.f19512g.getContext());
            webView2.setWebViewClient(aVar);
            ((WebView.WebViewTransport) message.obj).setWebView(webView2);
            message.sendToTarget();
            return true;
        }

        /* synthetic */ c(WebViewActivity webViewActivity, a aVar) {
            this();
        }
    }

    private Map<String, String> a(Bundle bundle) {
        HashMap hashMap = new HashMap();
        for (String str : bundle.keySet()) {
            hashMap.put(str, bundle.getString(str));
        }
        return hashMap;
    }

    public static Intent createIntent(Context context, String str, boolean z, boolean z2, Bundle bundle) {
        return new Intent(context, (Class<?>) WebViewActivity.class).putExtra(f19507i, str).putExtra(f19508j, z).putExtra(f19509k, z2).putExtra("com.android.browser.headers", bundle);
    }

    @Override // android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.f19512g = new WebView(this);
        setContentView(this.f19512g);
        Intent intent = getIntent();
        String stringExtra = intent.getStringExtra(f19507i);
        boolean booleanExtra = intent.getBooleanExtra(f19508j, false);
        boolean booleanExtra2 = intent.getBooleanExtra(f19509k, false);
        this.f19512g.loadUrl(stringExtra, a(intent.getBundleExtra("com.android.browser.headers")));
        this.f19512g.getSettings().setJavaScriptEnabled(booleanExtra);
        this.f19512g.getSettings().setDomStorageEnabled(booleanExtra2);
        this.f19512g.setWebViewClient(this.f19511f);
        this.f19512g.getSettings().setSupportMultipleWindows(true);
        this.f19512g.setWebChromeClient(new c(this, null));
        registerReceiver(this.f19510e, this.f19513h);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        unregisterReceiver(this.f19510e);
    }

    @Override // android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i2, KeyEvent keyEvent) {
        if (i2 == 4 && this.f19512g.canGoBack()) {
            this.f19512g.goBack();
            return true;
        }
        return super.onKeyDown(i2, keyEvent);
    }

    /* loaded from: classes2.dex */
    class b extends WebViewClient {
        b(WebViewActivity webViewActivity) {
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (Build.VERSION.SDK_INT < 21) {
                webView.loadUrl(str);
                return false;
            }
            return super.shouldOverrideUrlLoading(webView, str);
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(24)
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            if (Build.VERSION.SDK_INT < 21) {
                return false;
            }
            webView.loadUrl(webResourceRequest.getUrl().toString());
            return false;
        }
    }
}
