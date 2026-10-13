package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(11)
/* loaded from: classes.dex */
public final class hj extends gj {
    public hj(fi fiVar, ks1 ks1Var, boolean z) {
        super(fiVar, ks1Var, z);
    }

    @Override // com.google.android.gms.internal.ads.ii, android.webkit.WebViewClient
    public final WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
        return a(webView, str, (Map<String, String>) null);
    }
}
