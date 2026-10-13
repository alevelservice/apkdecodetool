package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kh implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f7687e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f7688f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ int f7689g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ int f7690h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ long f7691i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ long f7692j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ boolean f7693k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ int f7694l;
    private final /* synthetic */ int m;
    private final /* synthetic */ jh n;

    /* JADX INFO: Access modifiers changed from: package-private */
    public kh(jh jhVar, String str, String str2, int i2, int i3, long j2, long j3, boolean z, int i4, int i5) {
        this.n = jhVar;
        this.f7687e = str;
        this.f7688f = str2;
        this.f7689g = i2;
        this.f7690h = i3;
        this.f7691i = j2;
        this.f7692j = j3;
        this.f7693k = z;
        this.f7694l = i4;
        this.m = i5;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f7687e);
        hashMap.put("cachedSrc", this.f7688f);
        hashMap.put("bytesLoaded", Integer.toString(this.f7689g));
        hashMap.put("totalBytes", Integer.toString(this.f7690h));
        hashMap.put("bufferedDuration", Long.toString(this.f7691i));
        hashMap.put("totalDuration", Long.toString(this.f7692j));
        hashMap.put("cacheReady", this.f7693k ? "1" : ZimPlatform.REASON_0);
        hashMap.put("playerCount", Integer.toString(this.f7694l));
        hashMap.put("playerPreparedCount", Integer.toString(this.m));
        this.n.a("onPrecacheEvent", (Map<String, String>) hashMap);
    }
}
