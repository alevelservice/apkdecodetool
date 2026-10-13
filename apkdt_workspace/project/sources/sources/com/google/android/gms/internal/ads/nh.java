package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class nh implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f8346e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f8347f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ int f8348g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ jh f8349h;

    /* JADX INFO: Access modifiers changed from: package-private */
    public nh(jh jhVar, String str, String str2, int i2) {
        this.f8349h = jhVar;
        this.f8346e = str;
        this.f8347f = str2;
        this.f8348g = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f8346e);
        hashMap.put("cachedSrc", this.f8347f);
        hashMap.put("totalBytes", Integer.toString(this.f8348g));
        this.f8349h.a("onPrecacheEvent", (Map<String, String>) hashMap);
    }
}
