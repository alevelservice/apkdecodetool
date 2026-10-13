package e.e.a.a;

import android.annotation.SuppressLint;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Color;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.DownloadListener;
import android.webkit.GeolocationPermissions;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import androidx.appcompat.app.c;
import androidx.fragment.app.Fragment;
import com.alipay.mobile.security.zim.msgchannel.ZimMessageChannel;
import com.example.native_webview.WebViewActivity;
import java.util.HashMap;
import java.util.List;

/* compiled from: WebViewFragment.java */
/* loaded from: classes.dex */
public abstract class c extends Fragment implements e.e.a.a.d {

    /* renamed from: e, reason: collision with root package name */
    private WebViewActivity f17104e;

    /* renamed from: f, reason: collision with root package name */
    private com.example.native_webview.j.g f17105f;

    /* renamed from: g, reason: collision with root package name */
    private com.example.native_webview.c f17106g;

    /* renamed from: h, reason: collision with root package name */
    protected String f17107h;

    /* renamed from: i, reason: collision with root package name */
    protected String f17108i;

    /* renamed from: j, reason: collision with root package name */
    protected String f17109j;

    /* renamed from: k, reason: collision with root package name */
    protected String f17110k;

    /* renamed from: l, reason: collision with root package name */
    protected List<String> f17111l;
    protected Boolean m;
    protected String n;
    private Boolean o = false;
    private String p = "";

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebViewFragment.java */
    /* loaded from: classes.dex */
    public class a extends WebChromeClient {

        /* compiled from: WebViewFragment.java */
        /* renamed from: e.e.a.a.c$a$a, reason: collision with other inner class name */
        /* loaded from: classes.dex */
        class DialogInterfaceOnClickListenerC0179a implements DialogInterface.OnClickListener {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ GeolocationPermissions.Callback f17113e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f17114f;

            DialogInterfaceOnClickListenerC0179a(a aVar, GeolocationPermissions.Callback callback, String str) {
                this.f17113e = callback;
                this.f17114f = str;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                this.f17113e.invoke(this.f17114f, false, false);
            }
        }

        /* compiled from: WebViewFragment.java */
        /* loaded from: classes.dex */
        class b implements DialogInterface.OnClickListener {

            /* renamed from: e, reason: collision with root package name */
            final /* synthetic */ GeolocationPermissions.Callback f17115e;

            /* renamed from: f, reason: collision with root package name */
            final /* synthetic */ String f17116f;

            b(a aVar, GeolocationPermissions.Callback callback, String str) {
                this.f17115e = callback;
                this.f17116f = str;
            }

            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialogInterface, int i2) {
                this.f17115e.invoke(this.f17116f, true, false);
            }
        }

        a() {
        }

        @Override // android.webkit.WebChromeClient
        public void onGeolocationPermissionsShowPrompt(String str, GeolocationPermissions.Callback callback) {
            c.a aVar = new c.a(c.this.getContext());
            aVar.b("Permission");
            aVar.a(str + " would like to use your current Location");
            aVar.a(true);
            aVar.b("Allow", new b(this, callback, str));
            aVar.a("Deny", new DialogInterfaceOnClickListenerC0179a(this, callback, str));
            aVar.a().show();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: WebViewFragment.java */
    /* loaded from: classes.dex */
    public class b implements DownloadListener {
        b() {
        }

        @Override // android.webkit.DownloadListener
        public void onDownloadStart(String str, String str2, String str3, String str4, long j2) {
            c.this.h();
            HashMap hashMap = new HashMap();
            hashMap.put("URL", str);
            com.example.native_webview.e.f3443k.a("downloadStarted", hashMap);
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setData(Uri.parse(str));
            c.this.startActivity(intent);
        }
    }

    /* compiled from: WebViewFragment.java */
    /* renamed from: e.e.a.a.c$c, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    class RunnableC0180c implements Runnable {
        RunnableC0180c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.g().w.clearHistory();
        }
    }

    /* compiled from: WebViewFragment.java */
    /* loaded from: classes.dex */
    class d implements Runnable {
        d() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f17104e.hideBackButton();
        }
    }

    /* compiled from: WebViewFragment.java */
    /* loaded from: classes.dex */
    class e implements Runnable {
        e() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f17104e.finish();
            com.example.native_webview.e.f3443k.a("backToHome", null);
        }
    }

    /* compiled from: WebViewFragment.java */
    /* loaded from: classes.dex */
    class f implements Runnable {
        f() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f17104e.sendBroadcast();
        }
    }

    /* compiled from: WebViewFragment.java */
    /* loaded from: classes.dex */
    class g implements Runnable {
        g() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f17104e.finish();
        }
    }

    /* compiled from: WebViewFragment.java */
    /* loaded from: classes.dex */
    class h implements Runnable {
        h() {
        }

        @Override // java.lang.Runnable
        public void run() {
            c.this.f17104e.finish();
            HashMap hashMap = new HashMap();
            hashMap.put(ZimMessageChannel.K_RPC_RES, c.this.p);
            com.example.native_webview.e.f3443k.a("notifyAppWithData", hashMap);
        }
    }

    @SuppressLint({"SetJavaScriptEnabled"})
    private void l() {
        this.f17105f.w.clearCache(true);
        WebView webView = this.f17105f.w;
        webView.setWebViewClient(new e.e.a.a.b(this, webView, this.f17111l, this.f17110k, this.n));
        this.f17105f.w.getSettings().setJavaScriptEnabled(true);
        this.f17105f.w.getSettings().setDomStorageEnabled(true);
        this.f17105f.w.setBackgroundColor(Color.alpha(0));
        this.f17105f.w.addJavascriptInterface(new e.e.a.a.a(this, this.f17109j), "webViewBridgeAndroid");
        this.f17105f.w.getSettings().setGeolocationEnabled(true);
        this.f17105f.w.setWebChromeClient(new a());
        if (Build.VERSION.SDK_INT >= 19) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        this.f17105f.w.setDownloadListener(new b());
    }

    protected abstract void a(Bundle bundle);

    @Override // e.e.a.a.d
    public void c() {
        g().w.post(new RunnableC0180c());
    }

    @Override // e.e.a.a.d
    public void d() {
        g().w.post(new f());
    }

    @Override // e.e.a.a.d
    public void e() {
        g().w.post(new d());
    }

    @Override // e.e.a.a.d
    public void f() {
        g().w.post(new e());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public com.example.native_webview.j.g g() {
        return this.f17105f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void h() {
        com.example.native_webview.c cVar = this.f17106g;
        if (cVar != null) {
            try {
                cVar.g();
                this.o = false;
            } catch (IllegalStateException unused) {
                this.o = false;
            }
        }
    }

    public void i() {
    }

    public void j() {
        if (this.m.booleanValue()) {
            ((ViewGroup.MarginLayoutParams) this.f17105f.v.getLayoutParams()).setMargins(0, 0, 0, 0);
            if (Build.VERSION.SDK_INT >= 21) {
                this.f17105f.v.setElevation(0.0f);
            }
            this.f17105f.v.setRadius(0.0f);
            this.f17105f.v.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void k() {
        if (this.o.booleanValue()) {
            return;
        }
        this.f17106g = com.example.native_webview.c.i();
        a(this.f17106g);
        this.o = true;
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        this.f17104e = (WebViewActivity) getActivity();
        this.f17105f = (com.example.native_webview.j.g) androidx.databinding.g.a(layoutInflater, com.example.native_webview.h.fragment_webview, viewGroup, false);
        a(bundle);
        j();
        l();
        i();
        return this.f17105f.c();
    }

    @Override // androidx.fragment.app.Fragment
    public void onPause() {
        super.onPause();
        if (Build.VERSION.SDK_INT >= 19) {
            this.f17105f.w.evaluateJavascript("window.webViewJSBridge.onPause()", null);
        } else {
            this.f17105f.w.loadUrl("javascript:window.webViewJSBridge.onPause()");
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        if (Build.VERSION.SDK_INT >= 19) {
            this.f17105f.w.evaluateJavascript("window.webViewJSBridge.onResume()", null);
        } else {
            this.f17105f.w.loadUrl("javascript:window.webViewJSBridge.onResume()");
        }
    }

    private void a(androidx.fragment.app.b bVar) {
        if (isAdded()) {
            ((WebViewActivity) requireActivity()).addDialogFragment(bVar);
        }
    }

    @Override // e.e.a.a.d
    public void b() {
        g().w.post(new g());
    }

    @Override // e.e.a.a.d
    public void a(String str) {
        this.p = str;
        g().w.post(new h());
    }
}
