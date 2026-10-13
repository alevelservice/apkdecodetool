package androidx.webkit;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.webkit.e.e;
import androidx.webkit.e.f;
import androidx.webkit.e.g;
import androidx.webkit.e.j;
import java.lang.reflect.InvocationTargetException;
import java.util.List;
import org.chromium.support_lib_boundary.WebViewProviderBoundaryInterface;

/* compiled from: WebViewCompat.java */
/* loaded from: classes.dex */
public class b {
    static {
        Uri.parse("*");
        Uri.parse("");
    }

    @SuppressLint({"NewApi"})
    public static void a(@NonNull Context context, @Nullable ValueCallback<Boolean> valueCallback) {
        androidx.webkit.e.d feature = androidx.webkit.e.d.getFeature("START_SAFE_BROWSING");
        if (feature.isSupportedByFramework()) {
            WebView.startSafeBrowsing(context, valueCallback);
        } else {
            if (feature.isSupportedByWebView()) {
                a().getStatics().initSafeBrowsing(context, valueCallback);
                return;
            }
            throw androidx.webkit.e.d.getUnsupportedOperationException();
        }
    }

    @SuppressLint({"PrivateApi"})
    private static PackageInfo b() {
        return (PackageInfo) Class.forName("android.webkit.WebViewFactory").getMethod("getLoadedPackageInfo", new Class[0]).invoke(null, new Object[0]);
    }

    @NonNull
    @SuppressLint({"NewApi"})
    public static Uri c() {
        androidx.webkit.e.d feature = androidx.webkit.e.d.getFeature("SAFE_BROWSING_PRIVACY_POLICY_URL");
        if (feature.isSupportedByFramework()) {
            return WebView.getSafeBrowsingPrivacyPolicyUrl();
        }
        if (feature.isSupportedByWebView()) {
            return a().getStatics().getSafeBrowsingPrivacyPolicyUrl();
        }
        throw androidx.webkit.e.d.getUnsupportedOperationException();
    }

    @SuppressLint({"PrivateApi"})
    private static PackageInfo b(Context context) {
        String str;
        try {
            if (Build.VERSION.SDK_INT >= 21 && Build.VERSION.SDK_INT <= 23) {
                str = (String) Class.forName("android.webkit.WebViewFactory").getMethod("getWebViewPackageName", new Class[0]).invoke(null, new Object[0]);
            } else {
                str = (String) Class.forName("android.webkit.WebViewUpdateService").getMethod("getCurrentWebViewPackageName", new Class[0]).invoke(null, new Object[0]);
            }
            if (str == null) {
                return null;
            }
            return context.getPackageManager().getPackageInfo(str, 0);
        } catch (PackageManager.NameNotFoundException | ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    @SuppressLint({"NewApi"})
    public static void a(@NonNull List<String> list, @Nullable ValueCallback<Boolean> valueCallback) {
        androidx.webkit.e.d feature = androidx.webkit.e.d.getFeature("SAFE_BROWSING_WHITELIST");
        if (feature.isSupportedByFramework()) {
            WebView.setSafeBrowsingWhitelist(list, valueCallback);
        } else {
            if (feature.isSupportedByWebView()) {
                a().getStatics().setSafeBrowsingWhitelist(list, valueCallback);
                return;
            }
            throw androidx.webkit.e.d.getUnsupportedOperationException();
        }
    }

    @Nullable
    public static PackageInfo a(@NonNull Context context) {
        int i2 = Build.VERSION.SDK_INT;
        if (i2 < 21) {
            return null;
        }
        if (i2 >= 26) {
            return WebView.getCurrentWebViewPackage();
        }
        try {
            PackageInfo b2 = b();
            return b2 != null ? b2 : b(context);
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            return null;
        }
    }

    private static f b(WebView webView) {
        return new f(a(webView));
    }

    public static void a(@NonNull WebView webView, @Nullable d dVar) {
        androidx.webkit.e.d feature = androidx.webkit.e.d.getFeature("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE");
        if (feature.isSupportedByFramework()) {
            webView.setWebViewRenderProcessClient(dVar != null ? new j(dVar) : null);
        } else {
            if (feature.isSupportedByWebView()) {
                b(webView).a(null, dVar);
                return;
            }
            throw androidx.webkit.e.d.getUnsupportedOperationException();
        }
    }

    private static g a() {
        return e.d();
    }

    private static WebViewProviderBoundaryInterface a(WebView webView) {
        return a().createWebView(webView);
    }
}
