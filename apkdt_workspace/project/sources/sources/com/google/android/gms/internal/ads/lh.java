package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lh implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f7886e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f7887f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ long f7888g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ long f7889h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ boolean f7890i;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ int f7891j;

    /* renamed from: k, reason: collision with root package name */
    private final /* synthetic */ int f7892k;

    /* renamed from: l, reason: collision with root package name */
    private final /* synthetic */ jh f7893l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public lh(jh jhVar, String str, String str2, long j2, long j3, boolean z, int i2, int i3) {
        this.f7893l = jhVar;
        this.f7886e = str;
        this.f7887f = str2;
        this.f7888g = j2;
        this.f7889h = j3;
        this.f7890i = z;
        this.f7891j = i2;
        this.f7892k = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f7886e);
        hashMap.put("cachedSrc", this.f7887f);
        hashMap.put("bufferedDuration", Long.toString(this.f7888g));
        hashMap.put("totalDuration", Long.toString(this.f7889h));
        hashMap.put("cacheReady", this.f7890i ? "1" : ZimPlatform.REASON_0);
        hashMap.put("playerCount", Integer.toString(this.f7891j));
        hashMap.put("playerPreparedCount", Integer.toString(this.f7892k));
        this.f7893l.a("onPrecacheEvent", (Map<String, String>) hashMap);
    }
}
