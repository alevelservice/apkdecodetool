package androidx.webkit;

import android.os.Build;
import android.webkit.SafeBrowsingResponse;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.NonNull;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import androidx.annotation.UiThread;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationHandler;
import org.chromium.support_lib_boundary.WebViewClientBoundaryInterface;

/* loaded from: classes.dex */
public class WebViewClientCompat extends WebViewClient implements WebViewClientBoundaryInterface {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f3068a = {"VISUAL_STATE_CALLBACK", "RECEIVE_WEB_RESOURCE_ERROR", "RECEIVE_HTTP_ERROR", "SHOULD_OVERRIDE_WITH_REDIRECTS", "SAFE_BROWSING_HIT"};

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY})
    /* loaded from: classes.dex */
    public @interface SafeBrowsingThreat {
    }

    @UiThread
    public void a(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, int i2, @NonNull a aVar) {
        if (WebViewFeature.a("SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL")) {
            aVar.a(true);
            return;
        }
        throw androidx.webkit.e.d.getUnsupportedOperationException();
    }

    @RequiresApi(21)
    @UiThread
    public void a(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, @NonNull WebResourceErrorCompat webResourceErrorCompat) {
        throw null;
    }

    @Override // org.chromium.support_lib_boundary.FeatureFlagHolderBoundaryInterface
    @NonNull
    @RestrictTo({RestrictTo.a.LIBRARY})
    public final String[] getSupportedFeatures() {
        return f3068a;
    }

    @Override // android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @UiThread
    public void onPageCommitVisible(@NonNull WebView webView, @NonNull String str) {
    }

    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @RequiresApi(21)
    @RestrictTo({RestrictTo.a.LIBRARY})
    public final void onReceivedError(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, @NonNull InvocationHandler invocationHandler) {
        a(webView, webResourceRequest, new androidx.webkit.e.c(invocationHandler));
    }

    @Override // android.webkit.WebViewClient, org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @UiThread
    public void onReceivedHttpError(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, @NonNull WebResourceResponse webResourceResponse) {
    }

    @Override // org.chromium.support_lib_boundary.WebViewClientBoundaryInterface
    @RestrictTo({RestrictTo.a.LIBRARY})
    public final void onSafeBrowsingHit(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, int i2, @NonNull InvocationHandler invocationHandler) {
        a(webView, webResourceRequest, i2, new androidx.webkit.e.b(invocationHandler));
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(23)
    public final void onReceivedError(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, @NonNull WebResourceError webResourceError) {
        if (Build.VERSION.SDK_INT < 23) {
            return;
        }
        a(webView, webResourceRequest, new androidx.webkit.e.c(webResourceError));
    }

    @Override // android.webkit.WebViewClient
    @RequiresApi(27)
    public final void onSafeBrowsingHit(@NonNull WebView webView, @NonNull WebResourceRequest webResourceRequest, int i2, @NonNull SafeBrowsingResponse safeBrowsingResponse) {
        a(webView, webResourceRequest, i2, new androidx.webkit.e.b(safeBrowsingResponse));
    }
}
