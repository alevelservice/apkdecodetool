package androidx.webkit.e;

import android.annotation.SuppressLint;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationHandler;
import java.util.concurrent.Executor;
import org.chromium.support_lib_boundary.WebViewRendererClientBoundaryInterface;

/* compiled from: WebViewRenderProcessClientAdapter.java */
/* loaded from: classes.dex */
public class i implements WebViewRendererClientBoundaryInterface {

    /* renamed from: c, reason: collision with root package name */
    private static final String[] f3080c = {"WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE"};

    /* renamed from: a, reason: collision with root package name */
    private final Executor f3081a;

    /* renamed from: b, reason: collision with root package name */
    private final androidx.webkit.d f3082b;

    /* compiled from: WebViewRenderProcessClientAdapter.java */
    /* loaded from: classes.dex */
    class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ androidx.webkit.d f3083e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ WebView f3084f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ androidx.webkit.c f3085g;

        a(i iVar, androidx.webkit.d dVar, WebView webView, androidx.webkit.c cVar) {
            this.f3083e = dVar;
            this.f3084f = webView;
            this.f3085g = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3083e.b(this.f3084f, this.f3085g);
        }
    }

    /* compiled from: WebViewRenderProcessClientAdapter.java */
    /* loaded from: classes.dex */
    class b implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        final /* synthetic */ androidx.webkit.d f3086e;

        /* renamed from: f, reason: collision with root package name */
        final /* synthetic */ WebView f3087f;

        /* renamed from: g, reason: collision with root package name */
        final /* synthetic */ androidx.webkit.c f3088g;

        b(i iVar, androidx.webkit.d dVar, WebView webView, androidx.webkit.c cVar) {
            this.f3086e = dVar;
            this.f3087f = webView;
            this.f3088g = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f3086e.a(this.f3087f, this.f3088g);
        }
    }

    @SuppressLint({"LambdaLast"})
    public i(@Nullable Executor executor, @Nullable androidx.webkit.d dVar) {
        this.f3081a = executor;
        this.f3082b = dVar;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    @NonNull
    public final String[] getSupportedFeatures() {
        return f3080c;
    }

    @Override // org.chromium.support_lib_boundary.WebViewRendererClientBoundaryInterface
    public final void onRendererResponsive(@NonNull WebView webView, @NonNull InvocationHandler invocationHandler) {
        k a2 = k.a(invocationHandler);
        androidx.webkit.d dVar = this.f3082b;
        Executor executor = this.f3081a;
        if (executor == null) {
            dVar.a(webView, a2);
        } else {
            executor.execute(new b(this, dVar, webView, a2));
        }
    }

    @Override // org.chromium.support_lib_boundary.WebViewRendererClientBoundaryInterface
    public final void onRendererUnresponsive(@NonNull WebView webView, @NonNull InvocationHandler invocationHandler) {
        k a2 = k.a(invocationHandler);
        androidx.webkit.d dVar = this.f3082b;
        Executor executor = this.f3081a;
        if (executor == null) {
            dVar.b(webView, a2);
        } else {
            executor.execute(new a(this, dVar, webView, a2));
        }
    }
}
