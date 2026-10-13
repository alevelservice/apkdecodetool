package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.text.TextUtils;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class f80 {

    /* renamed from: a, reason: collision with root package name */
    private ConcurrentHashMap<String, String> f6592a;

    public f80(m80 m80Var) {
        this.f6592a = m80Var.b();
    }

    public final void a(vs0 vs0Var) {
        if (vs0Var.f9986b.f9629a.size() > 0) {
            int i2 = vs0Var.f9986b.f9629a.get(0).f8416b;
            if (i2 == 1) {
                this.f6592a.put("ad_format", "banner");
            } else if (i2 == 2) {
                this.f6592a.put("ad_format", "interstitial");
            } else if (i2 == 3) {
                this.f6592a.put("ad_format", "native_express");
            } else if (i2 == 4) {
                this.f6592a.put("ad_format", "native_advanced");
            } else if (i2 != 5) {
                this.f6592a.put("ad_format", "unknown");
            } else {
                this.f6592a.put("ad_format", "rewarded");
            }
            if (TextUtils.isEmpty(vs0Var.f9986b.f9630b.f8769b)) {
                return;
            }
            this.f6592a.put("gqi", vs0Var.f9986b.f9630b.f8769b);
        }
    }

    public final void a(Bundle bundle) {
        if (bundle.containsKey("cnt")) {
            this.f6592a.put("network_coarse", Integer.toString(bundle.getInt("cnt")));
        }
        if (bundle.containsKey("gnt")) {
            this.f6592a.put("network_fine", Integer.toString(bundle.getInt("gnt")));
        }
    }

    public final Map<String, String> a() {
        return this.f6592a;
    }
}
