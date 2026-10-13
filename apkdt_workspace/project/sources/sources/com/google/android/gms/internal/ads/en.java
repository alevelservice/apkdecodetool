package com.google.android.gms.internal.ads;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class en implements ym {

    /* renamed from: a, reason: collision with root package name */
    private final pa f6467a;

    public en(pa paVar) {
        this.f6467a = paVar;
    }

    @Override // com.google.android.gms.internal.ads.ym
    public final void a(Map<String, String> map) {
        String str = map.get("key");
        String str2 = map.get(HummerConstants.VALUE);
        if ("auto_collect_location".equals(str)) {
            this.f6467a.a(Boolean.parseBoolean(str2));
        }
    }
}
