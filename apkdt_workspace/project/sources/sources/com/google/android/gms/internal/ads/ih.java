package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.util.HashMap;
import java.util.Map;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class ih implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f7288e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f7289f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ int f7290g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ int f7291h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ boolean f7292i = false;

    /* renamed from: j, reason: collision with root package name */
    private final /* synthetic */ jh f7293j;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ih(jh jhVar, String str, String str2, int i2, int i3, boolean z) {
        this.f7293j = jhVar;
        this.f7288e = str;
        this.f7289f = str2;
        this.f7290g = i2;
        this.f7291h = i3;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f7288e);
        hashMap.put("cachedSrc", this.f7289f);
        hashMap.put("bytesLoaded", Integer.toString(this.f7290g));
        hashMap.put("totalBytes", Integer.toString(this.f7291h));
        hashMap.put("cacheReady", this.f7292i ? "1" : ZimPlatform.REASON_0);
        this.f7293j.a("onPrecacheEvent", (Map<String, String>) hashMap);
    }
}
