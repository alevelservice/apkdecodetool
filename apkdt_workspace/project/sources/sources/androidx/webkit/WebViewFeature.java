package androidx.webkit;

import androidx.annotation.NonNull;
import androidx.annotation.RestrictTo;
import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

/* loaded from: classes.dex */
public class WebViewFeature {

    @Target({ElementType.PARAMETER, ElementType.METHOD})
    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo({RestrictTo.a.LIBRARY})
    /* loaded from: classes.dex */
    public @interface WebViewSupportFeature {
    }

    public static boolean a(@NonNull String str) {
        androidx.webkit.e.d feature = androidx.webkit.e.d.getFeature(str);
        return feature.isSupportedByFramework() || feature.isSupportedByWebView();
    }
}
