package com.zoloz.webcontainer;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.graphics.Color;
import android.graphics.PorterDuff;
import android.os.Build;
import android.os.Bundle;
import android.os.LocaleList;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import com.alibaba.taffy.bus.annotation.Subscribe;
import com.alibaba.taffy.core.annotation.Nullable;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import com.zoloz.webcontainer.r.c;
import java.util.Locale;

/* loaded from: classes2.dex */
public class WebCActivity extends Activity implements View.OnClickListener, d {

    /* renamed from: e, reason: collision with root package name */
    private WebView f16684e;

    /* renamed from: f, reason: collision with root package name */
    private String f16685f;

    /* renamed from: g, reason: collision with root package name */
    private com.zoloz.webcontainer.r.b f16686g;

    /* renamed from: h, reason: collision with root package name */
    private TextView f16687h;

    /* renamed from: i, reason: collision with root package name */
    private String f16688i;

    /* renamed from: j, reason: collision with root package name */
    private String f16689j;

    /* renamed from: k, reason: collision with root package name */
    private TextView f16690k;

    /* renamed from: l, reason: collision with root package name */
    private TextView f16691l;

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class a extends c {
        public a(WebCActivity webCActivity, com.zoloz.webcontainer.r.a aVar) {
            super(aVar);
        }

        @Override // com.zoloz.webcontainer.r.c, android.webkit.WebChromeClient
        public void onReceivedTitle(WebView webView, String str) {
            super.onReceivedTitle(webView, str);
        }
    }

    private void a() {
        if (!TextUtils.isEmpty(this.f16688i)) {
            q.i().c().a(this.f16688i, this.f16686g);
        }
        if (this.f16685f != null) {
            q.i().d().a(this.f16685f, this.f16686g);
        }
    }

    private void b() {
        View findViewById = findViewById(e.f16714g);
        findViewById(e.f16712e).setOnClickListener(this);
        findViewById(e.f16713f).setOnClickListener(this);
        this.f16687h = (TextView) findViewById(e.f16715h);
        this.f16690k = (TextView) findViewById(e.f16709b);
        this.f16691l = (TextView) findViewById(e.f16708a);
        a(findViewById);
    }

    private void c() {
        this.f16685f = getIntent().getStringExtra(HummerConstants.URL);
        this.f16688i = getIntent().getStringExtra("sessionId");
        this.f16689j = getIntent().getStringExtra("landscape");
    }

    private void d() {
        this.f16684e = (WebView) findViewById(e.f16716i);
        String stringExtra = getIntent().getStringExtra("h5_title_back_show");
        if (stringExtra != null && stringExtra.equalsIgnoreCase("no")) {
            findViewById(e.f16712e).setVisibility(8);
        }
        String stringExtra2 = getIntent().getStringExtra("h5_show_title_bar");
        if (stringExtra2 != null && stringExtra2.equalsIgnoreCase("no")) {
            findViewById(e.f16714g).setVisibility(8);
        }
        e();
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 11 && i2 < 19) {
            this.f16684e.removeJavascriptInterface("searchBoxJavaBridge_");
            this.f16684e.removeJavascriptInterface("accessibility");
            this.f16684e.removeJavascriptInterface("accessibilityTraversal");
        }
        WebSettings settings = this.f16684e.getSettings();
        settings.setDefaultTextEncodingName("utf-8");
        settings.setAllowFileAccess(true);
        try {
            settings.setJavaScriptEnabled(true);
        } catch (NullPointerException e2) {
            b.a("WebCActivity", "Ignore the exception in AccessibilityInjector when init");
            e2.printStackTrace();
        }
        settings.setDefaultFontSize(16);
        settings.setJavaScriptCanOpenWindowsAutomatically(false);
        settings.setSavePassword(false);
        settings.setAppCachePath(getApplicationContext().getFilesDir() + "/appcache");
        settings.setBuiltInZoomControls(true);
        settings.setSupportZoom(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        if (Build.VERSION.SDK_INT >= 21 && q.i().b()) {
            settings.setMixedContentMode(0);
        }
        settings.setDomStorageEnabled(true);
        settings.setDisplayZoomControls(false);
        if (Build.VERSION.SDK_INT >= 19 && com.zoloz.webcontainer.p.b.a()) {
            WebView.setWebContentsDebuggingEnabled(true);
        }
        this.f16686g = new com.zoloz.webcontainer.r.b(this, this.f16684e, this.f16685f);
        this.f16686g.b(this.f16688i);
        this.f16686g.a(this);
        this.f16684e.setWebChromeClient(new a(this, this.f16686g));
        f();
    }

    private void e() {
        Locale locale;
        String language;
        try {
            WebSettings settings = this.f16684e.getSettings();
            String userAgentString = settings.getUserAgentString();
            PackageInfo packageInfo = getPackageManager().getPackageInfo(getPackageName(), 1);
            if (q.i().f() != null) {
                language = q.i().f();
            } else {
                if (Build.VERSION.SDK_INT >= 24) {
                    locale = getApplicationContext().getResources().getConfiguration().getLocales().get(0);
                } else {
                    locale = getApplicationContext().getResources().getConfiguration().locale;
                }
                language = locale.getLanguage();
            }
            settings.setUserAgentString(userAgentString + "  AliApp(AP/" + packageInfo.versionName + ",Language/" + language + ") AlipayClient/" + packageInfo.versionName);
        } catch (PackageManager.NameNotFoundException e2) {
            b.a("setUserAgent exception", e2);
        }
    }

    private void f() {
        String a2 = q.i().e().a(this.f16685f);
        if (TextUtils.isEmpty(a2)) {
            this.f16684e.loadUrl(this.f16685f);
            b.a("WebCActivity", "load url " + this.f16685f);
            return;
        }
        String str = "file://" + a2;
        this.f16684e.loadUrl(str);
        b.a("WebCActivity", "load url from cache " + str);
    }

    @Override // android.app.Activity, android.view.ContextThemeWrapper, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        try {
            String f2 = q.i().f();
            if (f2 != null) {
                if (Build.VERSION.SDK_INT >= 24) {
                    Locale locale = new Locale(f2);
                    LocaleList localeList = new LocaleList(locale);
                    LocaleList.setDefault(localeList);
                    Locale.setDefault(locale);
                    Configuration configuration = context.getResources().getConfiguration();
                    configuration.setLocales(localeList);
                    context = context.createConfigurationContext(configuration);
                } else {
                    Configuration configuration2 = context.getResources().getConfiguration();
                    configuration2.locale = new Locale(f2);
                    context.getResources().updateConfiguration(configuration2, context.getResources().getDisplayMetrics());
                }
            }
        } catch (Exception unused) {
        }
        super.attachBaseContext(context);
    }

    @Override // android.app.Activity
    protected void onActivityResult(int i2, int i3, Intent intent) {
        String stringExtra;
        b.a("WebCActivity", "onActivityResult scan result " + i2);
        super.onActivityResult(i2, i3, intent);
        if (i2 == 66) {
            if (intent == null) {
                stringExtra = "";
            } else {
                stringExtra = intent.getStringExtra(ZdocRecordService.SCAN_RESULT);
                intent.getIntExtra(HummerConstants.CODE, 11);
            }
            e.a.a.a.m.a().c(new com.zoloz.webcontainer.j.c(stringExtra));
        }
    }

    @Override // com.zoloz.webcontainer.d
    public void onBackChange(boolean z) {
        if (!z) {
            findViewById(e.f16712e).setVisibility(8);
        } else {
            findViewById(e.f16712e).setVisibility(0);
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        com.zoloz.webcontainer.r.b bVar = this.f16686g;
        if (bVar != null) {
            if (bVar.i()) {
                return;
            }
            super.onBackPressed();
            return;
        }
        super.onBackPressed();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == e.f16713f) {
            finish();
        } else if (view.getId() == e.f16712e) {
            onBackPressed();
        }
    }

    @Override // android.app.Activity, android.content.ComponentCallbacks
    public void onConfigurationChanged(Configuration configuration) {
        super.onConfigurationChanged(configuration);
    }

    @Override // android.app.Activity
    protected void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        b.a("WebCActivity", "onCreate url ");
        setContentView(f.f16717a);
        getWindow().setFlags(FileUtil.STREAM_BUFFER_SIZE, FileUtil.STREAM_BUFFER_SIZE);
        b();
        c();
        d();
        a();
        if (TextUtils.equals(this.f16689j, "landscape")) {
            setRequestedOrientation(0);
        } else if (TextUtils.equals(this.f16689j, "auto")) {
            setRequestedOrientation(4);
        } else {
            setRequestedOrientation(1);
        }
        e.a.a.a.m.a().a(this);
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        if (!TextUtils.isEmpty(this.f16688i)) {
            q.i().c().b(this.f16688i, this.f16686g);
        }
        if (this.f16685f != null) {
            q.i().d().a(this.f16685f);
        }
        this.f16686g.h();
        e.a.a.a.m.a().b(this);
        WebView webView = this.f16684e;
        if (webView != null) {
            webView.destroy();
            this.f16684e = null;
        }
    }

    @Override // android.app.Activity
    protected void onPause() {
        super.onPause();
        b.a("WebCActivity", "onPause configuration locale " + getResources().getConfiguration().locale);
    }

    @Override // android.app.Activity
    public void onRequestPermissionsResult(int i2, @NonNull String[] strArr, @NonNull int[] iArr) {
        e.a.a.a.m.a().c(new com.zoloz.webcontainer.j.d());
    }

    @Override // android.app.Activity
    protected void onResume() {
        super.onResume();
        this.f16686g.j();
        if (Build.VERSION.SDK_INT < 11 || this.f16686g.c() == null) {
            return;
        }
        this.f16686g.c().onResume();
    }

    @Subscribe
    public void onTitleBarRenderEvent(com.zoloz.webcontainer.j.e eVar) {
        TextView textView;
        if (eVar.f16726a == com.zoloz.webcontainer.j.a.BTN_LEFT) {
            textView = this.f16691l;
        } else {
            textView = this.f16690k;
        }
        textView.setVisibility(0);
        textView.setText(eVar.f16727b);
        textView.setTextColor(Color.parseColor(eVar.f16728c));
        textView.setOnClickListener(new o(this, eVar.f16726a));
    }

    @Override // com.zoloz.webcontainer.d
    public void onTitleChange(String str) {
        if (this.f16687h == null || TextUtils.isEmpty(str)) {
            return;
        }
        this.f16687h.setText(str);
    }

    @Override // android.app.Activity
    public void recreate() {
        super.recreate();
    }

    private void a(View view) {
        try {
            com.zoloz.webcontainer.c.b h2 = q.i().h();
            view.setBackgroundColor(h2.f16705b);
            this.f16687h.setTextColor(h2.f16704a);
            ImageView imageView = (ImageView) view.findViewById(e.f16712e);
            if (h2.f16707d != null) {
                imageView.setImageDrawable(h2.f16707d);
            } else if (h2.f16706c != 0) {
                imageView.getDrawable().setColorFilter(h2.f16706c, PorterDuff.Mode.SRC_ATOP);
            }
        } catch (Exception e2) {
            b.a("WebCActivity", e2);
        }
    }
}
