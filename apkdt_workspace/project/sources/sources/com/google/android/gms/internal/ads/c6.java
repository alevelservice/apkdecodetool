package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class c6 {

    /* renamed from: a, reason: collision with root package name */
    private final fi f5928a;

    /* renamed from: b, reason: collision with root package name */
    private final boolean f5929b;

    /* renamed from: c, reason: collision with root package name */
    private final String f5930c;

    public c6(fi fiVar, Map<String, String> map) {
        this.f5928a = fiVar;
        this.f5930c = map.get("forceOrientation");
        if (map.containsKey("allowOrientationChange")) {
            this.f5929b = Boolean.parseBoolean(map.get("allowOrientationChange"));
        } else {
            this.f5929b = true;
        }
    }

    public final void a() {
        int a2;
        if (this.f5928a == null) {
            qd.d("AdWebView is null");
            return;
        }
        if ("portrait".equalsIgnoreCase(this.f5930c)) {
            com.google.android.gms.ads.internal.n.e();
            a2 = 7;
        } else if ("landscape".equalsIgnoreCase(this.f5930c)) {
            com.google.android.gms.ads.internal.n.e();
            a2 = 6;
        } else {
            a2 = this.f5929b ? -1 : com.google.android.gms.ads.internal.n.e().a();
        }
        this.f5928a.setRequestedOrientation(a2);
    }
}
