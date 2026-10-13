package androidx.webkit.e;

import android.webkit.WebView;
import androidx.annotation.NonNull;
import org.chromium.support_lib_boundary.StaticsBoundaryInterface;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;
import org.chromium.support_lib_boundary.WebkitToCompatConverterBoundaryInterface;

/* compiled from: IncompatibleApkWebViewProviderFactory.java */
/* loaded from: classes.dex */
public class a implements g {

    /* renamed from: a, reason: collision with root package name */
    private static final String[] f3069a = new String[0];

    @Override // androidx.webkit.e.g
    @NonNull
    public String[] a() {
        return f3069a;
    }

    @Override // androidx.webkit.e.g
    @NonNull
    public WebViewProviderBoundaryInterface createWebView(@NonNull WebView webView) {
        throw new UnsupportedOperationException("This should never happen, if this method was called it means we're trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily");
    }

    @Override // androidx.webkit.e.g
    @NonNull
    public StaticsBoundaryInterface getStatics() {
        throw new UnsupportedOperationException("This should never happen, if this method was called it means we're trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily");
    }

    @Override // androidx.webkit.e.g
    @NonNull
    public WebkitToCompatConverterBoundaryInterface getWebkitToCompatConverter() {
        throw new UnsupportedOperationException("This should never happen, if this method was called it means we're trying to reach into WebView APK code on an incompatible device. This most likely means the current method is being called too early, or is being called on start-up rather than lazily");
    }
}
