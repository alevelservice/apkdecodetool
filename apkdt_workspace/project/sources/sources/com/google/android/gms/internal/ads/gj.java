package com.google.android.gms.internal.ads;

import android.annotation.TargetApi;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import androidx.annotation.Nullable;
import java.io.File;
import java.util.Collections;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(11)
/* loaded from: classes.dex */
public class gj extends ii {
    public gj(fi fiVar, ks1 ks1Var, boolean z) {
        super(fiVar, ks1Var, z);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Multi-variable type inference failed */
    @Nullable
    public final WebResourceResponse a(WebView webView, String str, @Nullable Map<String, String> map) {
        String str2;
        if (!(webView instanceof fi)) {
            qd.d("Tried to intercept request from a WebView that wasn't an AdWebView.");
            return null;
        }
        fi fiVar = (fi) webView;
        t8 t8Var = this.r;
        if (t8Var != null) {
            t8Var.a(str, map, 1);
        }
        if (!"mraid.js".equalsIgnoreCase(new File(str).getName())) {
            if (map == null) {
                map = Collections.emptyMap();
            }
            return super.a(str, map);
        }
        if (fiVar.zzyy() != null) {
            fiVar.zzyy().b();
        }
        if (fiVar.zzyw().b()) {
            str2 = (String) mu1.e().a(aw1.M);
        } else if (fiVar.zzzd()) {
            str2 = (String) mu1.e().a(aw1.L);
        } else {
            str2 = (String) mu1.e().a(aw1.K);
        }
        com.google.android.gms.ads.internal.n.c();
        return wa.c(fiVar.getContext(), fiVar.zzxp().f11000e, str2);
    }
}
