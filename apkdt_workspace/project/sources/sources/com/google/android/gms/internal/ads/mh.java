package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class mh implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f8132e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f8133f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ long f8134g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ jh f8135h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public mh(jh jhVar, String str, String str2, long j2) {
        this.f8135h = jhVar;
        this.f8132e = str;
        this.f8133f = str2;
        this.f8134g = j2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f8132e);
        hashMap.put("cachedSrc", this.f8133f);
        hashMap.put("totalDuration", Long.toString(this.f8134g));
        this.f8135h.a("onPrecacheEvent", (Map<String, String>) hashMap);
    }
}
