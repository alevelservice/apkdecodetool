package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.Future;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fw1 {

    /* renamed from: a, reason: collision with root package name */
    private String f6730a = (String) mu1.e().a(aw1.R);

    /* renamed from: b, reason: collision with root package name */
    private Map<String, String> f6731b = new LinkedHashMap();

    /* renamed from: c, reason: collision with root package name */
    private Context f6732c;

    /* renamed from: d, reason: collision with root package name */
    private String f6733d;

    public fw1(Context context, String str) {
        String packageName;
        this.f6732c = null;
        this.f6733d = null;
        this.f6732c = context;
        this.f6733d = str;
        this.f6731b.put("s", "gmob_sdk");
        this.f6731b.put("v", "3");
        this.f6731b.put("os", Build.VERSION.RELEASE);
        this.f6731b.put("sdk", Build.VERSION.SDK);
        Map<String, String> map = this.f6731b;
        com.google.android.gms.ads.internal.n.c();
        map.put("device", wa.c());
        Map<String, String> map2 = this.f6731b;
        if (context.getApplicationContext() != null) {
            packageName = context.getApplicationContext().getPackageName();
        } else {
            packageName = context.getPackageName();
        }
        map2.put("app", packageName);
        Map<String, String> map3 = this.f6731b;
        com.google.android.gms.ads.internal.n.c();
        map3.put("is_lite_sdk", wa.k(context) ? "1" : ZimPlatform.REASON_0);
        Future<o7> a2 = com.google.android.gms.ads.internal.n.n().a(this.f6732c);
        try {
            this.f6731b.put("network_coarse", Integer.toString(a2.get().f8492j));
            this.f6731b.put("network_fine", Integer.toString(a2.get().f8493k));
        } catch (Exception e2) {
            com.google.android.gms.ads.internal.n.g().a(e2, "CsiConfiguration.CsiConfiguration");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Context a() {
        return this.f6732c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String b() {
        return this.f6733d;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String c() {
        return this.f6730a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<String, String> d() {
        return this.f6731b;
    }
}
