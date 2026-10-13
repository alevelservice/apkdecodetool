package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.View;
import android.webkit.WebView;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ny implements qr1 {

    /* renamed from: a, reason: collision with root package name */
    private zzczl f8454a;

    @Override // com.google.android.gms.internal.ads.qr1
    public final void a(Activity activity, WebView webView) {
        try {
            this.f8454a = new zzczl(activity, webView);
        } catch (RuntimeException e2) {
            String valueOf = String.valueOf(e2);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 46);
            sb.append(" Failed to initialize the internal ArWebView: ");
            sb.append(valueOf);
            qd.b(sb.toString());
        }
    }

    @Override // com.google.android.gms.internal.ads.qr1
    public final View getView() {
        return this.f8454a;
    }

    @Override // com.google.android.gms.internal.ads.qr1
    public final WebView getWebView() {
        if (this.f8454a == null) {
            return null;
        }
        return zzczl.getWebView();
    }

    @Override // com.google.android.gms.internal.ads.qr1
    public final void a(String str, String str2) {
        if (this.f8454a == null) {
            qd.b("ArWebView is not initialized.");
        } else {
            zzczl.getWebView().loadDataWithBaseURL(str, str2, "text/html", "UTF-8", null);
        }
    }

    @Override // com.google.android.gms.internal.ads.qr1
    public final void a(WebView webView, String str, Bitmap bitmap) {
        if (this.f8454a != null) {
            zzczl.onPageStarted(webView, str, bitmap);
        }
    }
}
