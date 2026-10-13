package com.example.native_webview;

import android.content.Intent;
import android.os.Bundle;
import android.transition.Fade;
import android.view.View;
import androidx.annotation.IdRes;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.j;
import java.util.List;

/* loaded from: classes.dex */
public class WebViewActivity extends AppCompatActivity {
    public static String BROADCAST_ACTION = "com.intercept.nativeview.maintainSession";
    public static final String EXTRA_ACCESS_TOKEN = "extra_access_token";
    public static final String EXTRA_APP_VERSION = "extra_app_version";
    public static final String EXTRA_ERROR_MESSAGE = "extra_error_message";
    public static final String EXTRA_FULL_SCREEN_WEB_VIEW = "extra_full_screen_web_view";
    public static final String EXTRA_FULL_URL = "extra_full_url";
    public static final String EXTRA_PAGE_TITLE = "extra_title";
    public static final String EXTRA_RESULT = "success";
    public static final String EXTRA_ROOT_URL = "extra_root_url";

    /* renamed from: g, reason: collision with root package name */
    private com.example.native_webview.j.a f3435g;

    /* renamed from: h, reason: collision with root package name */
    private com.example.native_webview.j.i f3436h;

    /* renamed from: i, reason: collision with root package name */
    private com.example.native_webview.a f3437i;

    /* renamed from: j, reason: collision with root package name */
    private String f3438j;

    /* renamed from: k, reason: collision with root package name */
    private List<String> f3439k;

    /* renamed from: l, reason: collision with root package name */
    private String f3440l;
    private String m;
    private String n;
    private Boolean o;
    private String p;

    /* loaded from: classes.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            WebViewActivity.this.onBackPressed();
        }
    }

    private void a(Bundle bundle) {
        if (bundle != null) {
            this.f3438j = bundle.getString(EXTRA_FULL_URL);
            this.f3439k = bundle.getStringArrayList(EXTRA_ROOT_URL);
            this.m = bundle.getString(EXTRA_PAGE_TITLE);
            this.f3440l = bundle.getString(EXTRA_ACCESS_TOKEN);
            this.n = bundle.getString(EXTRA_ERROR_MESSAGE);
            this.o = Boolean.valueOf(bundle.getBoolean(EXTRA_FULL_SCREEN_WEB_VIEW));
            this.p = bundle.getString(EXTRA_APP_VERSION);
        }
    }

    public void addDialogFragment(androidx.fragment.app.b bVar) {
        j a2 = getSupportFragmentManager().a();
        a2.a(bVar, bVar.toString());
        a2.b();
    }

    public void addFragment(@IdRes int i2, Fragment fragment, boolean z) {
        androidx.fragment.app.g supportFragmentManager = getSupportFragmentManager();
        Fragment a2 = supportFragmentManager.a(i2);
        if (a2 != null && a2.isVisible()) {
            a2.setEnterTransition(new Fade(1));
            a2.setExitTransition(new Fade(2));
        }
        if (z) {
            supportFragmentManager.a((String) null, 1);
        }
        j a3 = supportFragmentManager.a();
        a3.b(i2, fragment, fragment.toString());
        a3.b();
    }

    public com.example.native_webview.j.a getBinding() {
        return this.f3435g;
    }

    public void hideBackButton() {
        com.example.native_webview.j.i iVar = this.f3436h;
        if (iVar != null) {
            iVar.v.setVisibility(8);
        }
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public void onBackPressed() {
        if (this.f3437i.l().canGoBack()) {
            sendBroadcast();
            this.f3437i.l().goBack();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a(getIntent().getExtras());
        this.f3435g = (com.example.native_webview.j.a) androidx.databinding.g.a(this, h.activity_web_view);
        this.f3436h = this.f3435g.v;
        e.f.f.b.a.c.a(this);
        this.f3437i = com.example.native_webview.a.a(this.f3438j, this.m, this.f3440l, this.n, this.f3439k, this.o, this.p);
        addFragment(this.f3435g.w.getId(), this.f3437i, true);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
        this.f3436h.w.setText(this.m);
        this.f3436h.v.setImageDrawable(androidx.core.content.a.c(getApplicationContext(), f.ic_arrow_back));
        this.f3436h.v.setOnClickListener(new a());
    }

    public void sendBroadcast() {
        Intent intent = new Intent();
        intent.setAction(BROADCAST_ACTION);
        sendBroadcast(intent);
    }
}
