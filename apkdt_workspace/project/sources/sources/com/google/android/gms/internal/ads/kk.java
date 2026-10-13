package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebView;
import com.google.android.gms.common.util.VisibleForTesting;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class kk {

    /* renamed from: a, reason: collision with root package name */
    @VisibleForTesting
    @GuardedBy("InvokeJavascriptWorkaround.class")
    private static Boolean f7708a;

    private kk() {
    }

    @TargetApi(19)
    private static boolean a(WebView webView) {
        boolean booleanValue;
        synchronized (kk.class) {
            if (f7708a == null) {
                try {
                    webView.evaluateJavascript("(function(){})()", null);
                    f7708a = true;
                } catch (IllegalStateException unused) {
                    f7708a = false;
                }
            }
            booleanValue = f7708a.booleanValue();
        }
        return booleanValue;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(19)
    public static void a(WebView webView, String str) {
        if (com.google.android.gms.common.util.o.f() && a(webView)) {
            webView.evaluateJavascript(str, null);
        } else {
            String valueOf = String.valueOf(str);
            webView.loadUrl(valueOf.length() != 0 ? "javascript:".concat(valueOf) : new String("javascript:"));
        }
    }
}
