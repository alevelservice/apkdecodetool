package androidx.webkit.e;

import android.os.Build;
import androidx.annotation.NonNull;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Set;
import org.chromium.support_lib_boundary.util.BoundaryInterfaceReflectionUtil;

/* compiled from: WebViewFeatureInternal.java */
/* loaded from: classes.dex */
public enum d {
    VISUAL_STATE_CALLBACK_FEATURE("VISUAL_STATE_CALLBACK", "VISUAL_STATE_CALLBACK", 23),
    OFF_SCREEN_PRERASTER("OFF_SCREEN_PRERASTER", "OFF_SCREEN_PRERASTER", 23),
    SAFE_BROWSING_ENABLE("SAFE_BROWSING_ENABLE", "SAFE_BROWSING_ENABLE", 26),
    DISABLED_ACTION_MODE_MENU_ITEMS("DISABLED_ACTION_MODE_MENU_ITEMS", "DISABLED_ACTION_MODE_MENU_ITEMS", 24),
    START_SAFE_BROWSING("START_SAFE_BROWSING", "START_SAFE_BROWSING", 27),
    SAFE_BROWSING_WHITELIST("SAFE_BROWSING_WHITELIST", "SAFE_BROWSING_WHITELIST", 27),
    SAFE_BROWSING_PRIVACY_POLICY_URL("SAFE_BROWSING_PRIVACY_POLICY_URL", "SAFE_BROWSING_PRIVACY_POLICY_URL", 27),
    SERVICE_WORKER_BASIC_USAGE("SERVICE_WORKER_BASIC_USAGE", "SERVICE_WORKER_BASIC_USAGE", 24),
    SERVICE_WORKER_CACHE_MODE("SERVICE_WORKER_CACHE_MODE", "SERVICE_WORKER_CACHE_MODE", 24),
    SERVICE_WORKER_CONTENT_ACCESS("SERVICE_WORKER_CONTENT_ACCESS", "SERVICE_WORKER_CONTENT_ACCESS", 24),
    SERVICE_WORKER_FILE_ACCESS("SERVICE_WORKER_FILE_ACCESS", "SERVICE_WORKER_FILE_ACCESS", 24),
    SERVICE_WORKER_BLOCK_NETWORK_LOADS("SERVICE_WORKER_BLOCK_NETWORK_LOADS", "SERVICE_WORKER_BLOCK_NETWORK_LOADS", 24),
    SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST("SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST", "SERVICE_WORKER_SHOULD_INTERCEPT_REQUEST", 24),
    RECEIVE_WEB_RESOURCE_ERROR("RECEIVE_WEB_RESOURCE_ERROR", "RECEIVE_WEB_RESOURCE_ERROR", 23),
    RECEIVE_HTTP_ERROR("RECEIVE_HTTP_ERROR", "RECEIVE_HTTP_ERROR", 23),
    SHOULD_OVERRIDE_WITH_REDIRECTS("SHOULD_OVERRIDE_WITH_REDIRECTS", "SHOULD_OVERRIDE_WITH_REDIRECTS", 24),
    SAFE_BROWSING_HIT("SAFE_BROWSING_HIT", "SAFE_BROWSING_HIT", 27),
    WEB_RESOURCE_REQUEST_IS_REDIRECT("WEB_RESOURCE_REQUEST_IS_REDIRECT", "WEB_RESOURCE_REQUEST_IS_REDIRECT", 24),
    WEB_RESOURCE_ERROR_GET_DESCRIPTION("WEB_RESOURCE_ERROR_GET_DESCRIPTION", "WEB_RESOURCE_ERROR_GET_DESCRIPTION", 23),
    WEB_RESOURCE_ERROR_GET_CODE("WEB_RESOURCE_ERROR_GET_CODE", "WEB_RESOURCE_ERROR_GET_CODE", 23),
    SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY("SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY", "SAFE_BROWSING_RESPONSE_BACK_TO_SAFETY", 27),
    SAFE_BROWSING_RESPONSE_PROCEED("SAFE_BROWSING_RESPONSE_PROCEED", "SAFE_BROWSING_RESPONSE_PROCEED", 27),
    SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL("SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL", "SAFE_BROWSING_RESPONSE_SHOW_INTERSTITIAL", 27),
    WEB_MESSAGE_PORT_POST_MESSAGE("WEB_MESSAGE_PORT_POST_MESSAGE", "WEB_MESSAGE_PORT_POST_MESSAGE", 23),
    WEB_MESSAGE_PORT_CLOSE("WEB_MESSAGE_PORT_CLOSE", "WEB_MESSAGE_PORT_CLOSE", 23),
    WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK("WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK", "WEB_MESSAGE_PORT_SET_MESSAGE_CALLBACK", 23),
    CREATE_WEB_MESSAGE_CHANNEL("CREATE_WEB_MESSAGE_CHANNEL", "CREATE_WEB_MESSAGE_CHANNEL", 23),
    POST_WEB_MESSAGE("POST_WEB_MESSAGE", "POST_WEB_MESSAGE", 23),
    WEB_MESSAGE_CALLBACK_ON_MESSAGE("WEB_MESSAGE_CALLBACK_ON_MESSAGE", "WEB_MESSAGE_CALLBACK_ON_MESSAGE", 23),
    GET_WEB_VIEW_CLIENT("GET_WEB_VIEW_CLIENT", "GET_WEB_VIEW_CLIENT", 26),
    GET_WEB_CHROME_CLIENT("GET_WEB_CHROME_CLIENT", "GET_WEB_CHROME_CLIENT", 26),
    GET_WEB_VIEW_RENDERER("GET_WEB_VIEW_RENDERER", "GET_WEB_VIEW_RENDERER", 29),
    WEB_VIEW_RENDERER_TERMINATE("WEB_VIEW_RENDERER_TERMINATE", "WEB_VIEW_RENDERER_TERMINATE", 29),
    TRACING_CONTROLLER_BASIC_USAGE("TRACING_CONTROLLER_BASIC_USAGE", "TRACING_CONTROLLER_BASIC_USAGE", 28),
    WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE("WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE", "WEB_VIEW_RENDERER_CLIENT_BASIC_USAGE", 29),
    PROXY_OVERRIDE("PROXY_OVERRIDE", "PROXY_OVERRIDE:3"),
    SUPPRESS_ERROR_PAGE("SUPPRESS_ERROR_PAGE", "SUPPRESS_ERROR_PAGE"),
    MULTI_PROCESS_QUERY("MULTI_PROCESS_QUERY", "MULTI_PROCESS_QUERY"),
    FORCE_DARK("FORCE_DARK", "FORCE_DARK"),
    FORCE_DARK_STRATEGY("FORCE_DARK_STRATEGY", "FORCE_DARK_BEHAVIOR"),
    WEB_MESSAGE_LISTENER("WEB_MESSAGE_LISTENER", "WEB_MESSAGE_LISTENER");

    static final /* synthetic */ boolean $assertionsDisabled = false;
    private final String mInternalFeatureValue;
    private final int mOsVersion;
    private final String mPublicFeatureValue;

    /* compiled from: WebViewFeatureInternal.java */
    /* loaded from: classes.dex */
    private static class a {

        /* renamed from: a, reason: collision with root package name */
        static final Set<String> f3075a = new HashSet(Arrays.asList(e.d().a()));
    }

    d(@NonNull String str, @NonNull String str2) {
        this(str, str2, -1);
    }

    @NonNull
    public static d getFeature(@NonNull String str) {
        for (d dVar : values()) {
            if (dVar.mPublicFeatureValue.equals(str)) {
                return dVar;
            }
        }
        throw new RuntimeException("Unknown feature " + str);
    }

    @NonNull
    public static UnsupportedOperationException getUnsupportedOperationException() {
        return new UnsupportedOperationException("This method is not supported by the current version of the framework and the current WebView APK");
    }

    @NonNull
    public static Set<String> getWebViewApkFeaturesForTesting() {
        return a.f3075a;
    }

    public boolean isSupportedByFramework() {
        int i2 = this.mOsVersion;
        return i2 != -1 && Build.VERSION.SDK_INT >= i2;
    }

    public boolean isSupportedByWebView() {
        return BoundaryInterfaceReflectionUtil.a(a.f3075a, this.mInternalFeatureValue);
    }

    d(@NonNull String str, @NonNull String str2, int i2) {
        if (!$assertionsDisabled && str.endsWith(":dev")) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && str2.endsWith(":dev")) {
            throw new AssertionError();
        }
        this.mPublicFeatureValue = str;
        this.mInternalFeatureValue = str2;
        this.mOsVersion = i2;
    }
}
