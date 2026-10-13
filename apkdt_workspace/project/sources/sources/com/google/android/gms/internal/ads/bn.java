package com.google.android.gms.internal.ads;

import android.content.Context;
import android.text.TextUtils;
import android.webkit.CookieManager;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bn implements ym {

    /* renamed from: a, reason: collision with root package name */
    private final Context f5802a;

    public bn(Context context) {
        this.f5802a = context;
    }

    @Override // com.google.android.gms.internal.ads.ym
    public final void a(Map<String, String> map) {
        CookieManager c2;
        String str = map.get("cookie");
        if (TextUtils.isEmpty(str) || (c2 = com.google.android.gms.ads.internal.n.e().c(this.f5802a)) == null) {
            return;
        }
        c2.setCookie("googleads.g.doubleclick.net", str);
    }
}
