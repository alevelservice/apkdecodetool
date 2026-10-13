package com.google.android.gms.internal.ads;

import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zm implements ym {

    /* renamed from: a, reason: collision with root package name */
    private pa f10801a;

    public zm(pa paVar) {
        this.f10801a = paVar;
    }

    @Override // com.google.android.gms.internal.ads.ym
    public final void a(Map<String, String> map) {
        this.f10801a.c(Boolean.parseBoolean(map.get("content_vertical_opted_out")));
    }
}
