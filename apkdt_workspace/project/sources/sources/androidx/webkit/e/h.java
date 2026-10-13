package androidx.webkit.e;

import android.webkit.WebView;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderFactoryBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* compiled from: WebViewProviderFactoryAdapter.java */
/* loaded from: classes.dex */
public class h implements g {

    /* renamed from: a, reason: collision with root package name */
    WebViewProviderFactoryBoundaryInterface f3079a;

    public h(WebViewProviderFactoryBoundaryInterface webViewProviderFactoryBoundaryInterface) {
        this.f3079a = webViewProviderFactoryBoundaryInterface;
    }

    @Override // androidx.webkit.e.g
    public String[] a() {
        return this.f3079a.getSupportedFeatures();
    }

    @Override // androidx.webkit.e.g
    public WebViewProviderBoundaryInterface createWebView(WebView webView) {
        return (WebViewProviderBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebViewProviderBoundaryInterface.class, this.f3079a.createWebView(webView));
    }

    @Override // androidx.webkit.e.g
    public StaticsBoundaryInterface getStatics() {
        return (StaticsBoundaryInterface) BoundaryInterfaceReflectionUtil.a(StaticsBoundaryInterface.class, this.f3079a.getStatics());
    }

    @Override // androidx.webkit.e.g
    public WebkitToCompatConverterBoundaryInterface getWebkitToCompatConverter() {
        return (WebkitToCompatConverterBoundaryInterface) BoundaryInterfaceReflectionUtil.a(WebkitToCompatConverterBoundaryInterface.class, this.f3079a.getWebkitToCompatConverter());
    }
}
