package com.example.native_webview;

import android.os.Bundle;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AddMoneyTypeFragment.java */
/* loaded from: classes.dex */
public class a extends e.e.a.a.c {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static a a(String str, String str2, String str3, String str4, List<String> list, Boolean bool, String str5) {
        Bundle bundle = new Bundle();
        bundle.putSerializable(WebViewActivity.EXTRA_FULL_URL, str);
        bundle.putSerializable(WebViewActivity.EXTRA_ACCESS_TOKEN, str3);
        bundle.putSerializable(WebViewActivity.EXTRA_PAGE_TITLE, str2);
        bundle.putStringArrayList(WebViewActivity.EXTRA_ROOT_URL, (ArrayList) list);
        bundle.putSerializable(WebViewActivity.EXTRA_ERROR_MESSAGE, str4);
        bundle.putSerializable(WebViewActivity.EXTRA_FULL_SCREEN_WEB_VIEW, bool);
        bundle.putSerializable(WebViewActivity.EXTRA_APP_VERSION, str5);
        a aVar = new a();
        aVar.setArguments(bundle);
        return aVar;
    }

    @Override // e.e.a.a.c
    public void i() {
        super.i();
        g().w.loadUrl(this.f17107h);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WebView l() {
        return g().w;
    }

    @Override // androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        bundle.putString(WebViewActivity.EXTRA_FULL_URL, this.f17107h);
        bundle.putString(WebViewActivity.EXTRA_ACCESS_TOKEN, this.f17109j);
        bundle.putString(WebViewActivity.EXTRA_PAGE_TITLE, this.f17108i);
        bundle.putString(WebViewActivity.EXTRA_ERROR_MESSAGE, this.f17110k);
        bundle.putStringArrayList(WebViewActivity.EXTRA_ROOT_URL, (ArrayList) this.f17111l);
        bundle.putBoolean(WebViewActivity.EXTRA_FULL_SCREEN_WEB_VIEW, this.m.booleanValue());
        bundle.putString(WebViewActivity.EXTRA_APP_VERSION, this.n);
        super.onSaveInstanceState(bundle);
    }

    @Override // e.e.a.a.c
    public void a(Bundle bundle) {
        if (bundle == null) {
            bundle = getArguments();
        }
        this.f17107h = bundle.getString(WebViewActivity.EXTRA_FULL_URL);
        this.f17108i = bundle.getString(WebViewActivity.EXTRA_PAGE_TITLE);
        this.f17109j = bundle.getString(WebViewActivity.EXTRA_ACCESS_TOKEN);
        this.f17110k = bundle.getString(WebViewActivity.EXTRA_ERROR_MESSAGE);
        this.f17111l = bundle.getStringArrayList(WebViewActivity.EXTRA_ROOT_URL);
        this.m = Boolean.valueOf(bundle.getBoolean(WebViewActivity.EXTRA_FULL_SCREEN_WEB_VIEW));
        this.n = bundle.getString(WebViewActivity.EXTRA_APP_VERSION);
    }
}
