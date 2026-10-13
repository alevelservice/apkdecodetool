package com.google.android.gms.internal.ads;

import android.R;
import android.annotation.TargetApi;
import android.content.Context;
import android.webkit.CookieManager;
import android.webkit.WebResourceResponse;
import java.io.InputStream;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@TargetApi(21)
/* loaded from: classes.dex */
public class jb extends gb {
    @Override // com.google.android.gms.internal.ads.db
    public final ii a(fi fiVar, ks1 ks1Var, boolean z) {
        return new jj(fiVar, ks1Var, z);
    }

    @Override // com.google.android.gms.internal.ads.db
    public final int c() {
        return R.style.Theme.Material.Dialog.Alert;
    }

    @Override // com.google.android.gms.internal.ads.db
    public final CookieManager c(Context context) {
        if (db.e()) {
            return null;
        }
        try {
            return CookieManager.getInstance();
        } catch (Throwable th) {
            qd.b("Failed to obtain CookieManager.", th);
            com.google.android.gms.ads.internal.n.g().a(th, "ApiLevelUtil.getCookieManager");
            return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.db
    public final WebResourceResponse a(String str, String str2, int i2, String str3, Map<String, String> map, InputStream inputStream) {
        return new WebResourceResponse(str, str2, i2, str3, map, inputStream);
    }
}
