package com.pichillilorenzo.flutter_inappwebview.InAppWebView;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.WebViewFeature;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.ap.zoloz.hummer.biz.HummerConstants;
import com.pichillilorenzo.flutter_inappwebview.InAppBrowser.InAppBrowserActivity;
import g.a.c.a.k;
import java.util.HashMap;
import java.util.Map;

/* compiled from: InAppWebViewRenderProcessClient.java */
/* loaded from: classes2.dex */
public class h extends androidx.webkit.d {

    /* renamed from: a, reason: collision with root package name */
    private c f16551a;

    /* renamed from: b, reason: collision with root package name */
    private InAppBrowserActivity f16552b;

    /* renamed from: c, reason: collision with root package name */
    public k f16553c;

    public h(Object obj) {
        if (obj instanceof InAppBrowserActivity) {
            this.f16552b = (InAppBrowserActivity) obj;
        } else if (obj instanceof c) {
            this.f16551a = (c) obj;
        }
        InAppBrowserActivity inAppBrowserActivity = this.f16552b;
        this.f16553c = inAppBrowserActivity != null ? inAppBrowserActivity.channel : this.f16551a.f16458f;
    }

    @Override // androidx.webkit.d
    public void a(@NonNull WebView webView, @Nullable androidx.webkit.c cVar) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16552b;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(HummerConstants.URL, webView.getUrl());
        this.f16553c.a("onRenderProcessResponsive", hashMap, new b(this, cVar));
    }

    @Override // androidx.webkit.d
    public void b(@NonNull WebView webView, @Nullable androidx.webkit.c cVar) {
        HashMap hashMap = new HashMap();
        InAppBrowserActivity inAppBrowserActivity = this.f16552b;
        if (inAppBrowserActivity != null) {
            hashMap.put("uuid", inAppBrowserActivity.uuid);
        }
        hashMap.put(HummerConstants.URL, webView.getUrl());
        this.f16553c.a("onRenderProcessUnresponsive", hashMap, new a(this, cVar));
    }

    /* compiled from: InAppWebViewRenderProcessClient.java */
    /* loaded from: classes2.dex */
    class a implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.webkit.c f16554a;

        a(h hVar, androidx.webkit.c cVar) {
            this.f16554a = cVar;
        }

        @Override // g.a.c.a.k.d
        public void a() {
        }

        @Override // g.a.c.a.k.d
        public void a(@Nullable Object obj) {
            Integer num = (Integer) ((Map) obj).get("action");
            if (num == null || this.f16554a == null || num.intValue() != 0 || !WebViewFeature.a("WEB_VIEW_RENDERER_TERMINATE")) {
                return;
            }
            this.f16554a.a();
        }

        @Override // g.a.c.a.k.d
        public void a(String str, @Nullable String str2, @Nullable Object obj) {
            String str3 = "ERROR: " + str + HanziToPinyin.Token.SEPARATOR + str2;
        }
    }

    /* compiled from: InAppWebViewRenderProcessClient.java */
    /* loaded from: classes2.dex */
    class b implements k.d {

        /* renamed from: a, reason: collision with root package name */
        final /* synthetic */ androidx.webkit.c f16555a;

        b(h hVar, androidx.webkit.c cVar) {
            this.f16555a = cVar;
        }

        @Override // g.a.c.a.k.d
        public void a() {
        }

        @Override // g.a.c.a.k.d
        public void a(@Nullable Object obj) {
            Integer num = (Integer) ((Map) obj).get("action");
            if (num == null || this.f16555a == null || num.intValue() != 0 || !WebViewFeature.a("WEB_VIEW_RENDERER_TERMINATE")) {
                return;
            }
            this.f16555a.a();
        }

        @Override // g.a.c.a.k.d
        public void a(String str, @Nullable String str2, @Nullable Object obj) {
            String str3 = "ERROR: " + str + HanziToPinyin.Token.SEPARATOR + str2;
        }
    }
}
