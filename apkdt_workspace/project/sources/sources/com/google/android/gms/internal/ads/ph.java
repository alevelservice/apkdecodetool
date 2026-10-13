package com.google.android.gms.internal.ads;

import android.text.TextUtils;
import com.zoloz.android.phone.zdoc.service.ZdocRecordService;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ph implements Runnable {

    /* renamed from: e, reason: collision with root package name */
    private final /* synthetic */ String f8704e;

    /* renamed from: f, reason: collision with root package name */
    private final /* synthetic */ String f8705f;

    /* renamed from: g, reason: collision with root package name */
    private final /* synthetic */ String f8706g;

    /* renamed from: h, reason: collision with root package name */
    private final /* synthetic */ String f8707h;

    /* renamed from: i, reason: collision with root package name */
    private final /* synthetic */ jh f8708i;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ph(jh jhVar, String str, String str2, String str3, String str4) {
        this.f8708i = jhVar;
        this.f8704e = str;
        this.f8705f = str2;
        this.f8706g = str3;
        this.f8707h = str4;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String c2;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheCanceled");
        hashMap.put("src", this.f8704e);
        if (!TextUtils.isEmpty(this.f8705f)) {
            hashMap.put("cachedSrc", this.f8705f);
        }
        jh jhVar = this.f8708i;
        c2 = jh.c(this.f8706g);
        hashMap.put("type", c2);
        hashMap.put(ZdocRecordService.REASON, this.f8706g);
        if (!TextUtils.isEmpty(this.f8707h)) {
            hashMap.put("message", this.f8707h);
        }
        this.f8708i.a("onPrecacheEvent", (Map<String, String>) hashMap);
    }
}
