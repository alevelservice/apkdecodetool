package androidx.webkit.e;

import android.webkit.WebView;
import android.webkit.WebViewRenderProcess;
import android.webkit.WebViewRenderProcessClient;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: WebViewRenderProcessClientFrameworkAdapter.java */
/* loaded from: classes.dex */
public class j extends WebViewRenderProcessClient {

    /* renamed from: a, reason: collision with root package name */
    private androidx.webkit.d f3089a;

    public j(@NonNull androidx.webkit.d dVar) {
        this.f3089a = dVar;
    }

    @Override // android.webkit.WebViewRenderProcessClient
    public void onRenderProcessResponsive(@NonNull WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
        this.f3089a.a(webView, k.a(webViewRenderProcess));
    }

    @Override // android.webkit.WebViewRenderProcessClient
    public void onRenderProcessUnresponsive(@NonNull WebView webView, @Nullable WebViewRenderProcess webViewRenderProcess) {
        this.f3089a.b(webView, k.a(webViewRenderProcess));
    }
}
