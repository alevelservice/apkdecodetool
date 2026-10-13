package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xm implements ym {

    /* renamed from: a, reason: collision with root package name */
    private pa f10387a;

    public xm(pa paVar) {
        this.f10387a = paVar;
    }

    @Override // com.google.android.gms.internal.ads.ym
    public final void a(Map<String, String> map) {
        this.f10387a.b(Boolean.parseBoolean(map.get("content_url_opted_out")));
    }
}
