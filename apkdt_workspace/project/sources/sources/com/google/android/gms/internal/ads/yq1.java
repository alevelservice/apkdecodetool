package com.google.android.gms.internal.ads;

import android.webkit.ValueCallback;
import android.webkit.WebView;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yq1 implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private ValueCallback<String> f10628e = new xq1(this);

    /* renamed from: f, reason: collision with root package name */
    final /* synthetic */ pq1 f10629f;

    /* renamed from: g, reason: collision with root package name */
    final /* synthetic */ WebView f10630g;

    /* renamed from: h, reason: collision with root package name */
    final /* synthetic */ boolean f10631h;

    /* renamed from: i, reason: collision with root package name */
    final /* synthetic */ wq1 f10632i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public yq1(wq1 wq1Var, pq1 pq1Var, WebView webView, boolean z) {
        this.f10632i = wq1Var;
        this.f10629f = pq1Var;
        this.f10630g = webView;
        this.f10631h = z;
    }

    @Override // java.lang.Runnable
    public final void run() {
        if (this.f10630g.getSettings().getJavaScriptEnabled()) {
            try {
                this.f10630g.evaluateJavascript("(function() { return  {text:document.body.innerText}})();", this.f10628e);
            } catch (Throwable unused) {
                this.f10628e.onReceiveValue("");
            }
        }
    }
}
