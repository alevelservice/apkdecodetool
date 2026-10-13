package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Build;
import android.text.TextUtils;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class m80 {

    /* renamed from: b, reason: collision with root package name */
    private final Executor f8043b;

    /* renamed from: c, reason: collision with root package name */
    private final ud f8044c;

    /* renamed from: d, reason: collision with root package name */
    private final Context f8045d;

    /* renamed from: e, reason: collision with root package name */
    private final String f8046e;

    /* renamed from: a, reason: collision with root package name */
    private final String f8042a = (String) mu1.e().a(aw1.R);

    /* renamed from: f, reason: collision with root package name */
    private final Map<String, String> f8047f = new HashMap();

    public m80(Executor executor, ud udVar, Context context) {
        this.f8043b = executor;
        this.f8044c = udVar;
        this.f8045d = context;
        this.f8046e = context.getPackageName();
        this.f8047f.put("s", "gmob_sdk");
        this.f8047f.put("v", "3");
        this.f8047f.put("os", Build.VERSION.RELEASE);
        this.f8047f.put("sdk", Build.VERSION.SDK);
        Map<String, String> map = this.f8047f;
        com.google.android.gms.ads.internal.n.c();
        map.put("device", wa.c());
        this.f8047f.put("app", this.f8046e);
        Map<String, String> map2 = this.f8047f;
        com.google.android.gms.ads.internal.n.c();
        map2.put("is_lite_sdk", wa.k(this.f8045d) ? "1" : ZimPlatform.REASON_0);
        this.f8047f.put("e", TextUtils.join(",", aw1.b()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:12:0x0060  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void a(java.util.Map<java.lang.String, java.lang.String> r4) {
        /*
            r3 = this;
            java.lang.String r0 = r3.f8042a
            android.net.Uri r0 = android.net.Uri.parse(r0)
            android.net.Uri$Builder r0 = r0.buildUpon()
            java.util.Set r4 = r4.entrySet()
            java.util.Iterator r4 = r4.iterator()
        L12:
            boolean r1 = r4.hasNext()
            if (r1 == 0) goto L2e
            java.lang.Object r1 = r4.next()
            java.util.Map$Entry r1 = (java.util.Map.Entry) r1
            java.lang.Object r2 = r1.getKey()
            java.lang.String r2 = (java.lang.String) r2
            java.lang.Object r1 = r1.getValue()
            java.lang.String r1 = (java.lang.String) r1
            r0.appendQueryParameter(r2, r1)
            goto L12
        L2e:
            android.net.Uri r4 = r0.build()
            java.lang.String r4 = r4.toString()
            com.google.android.gms.internal.ads.pv1<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aw1.Q
            com.google.android.gms.internal.ads.wv1 r1 = com.google.android.gms.internal.ads.mu1.e()
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 != 0) goto L5d
            com.google.android.gms.internal.ads.pv1<java.lang.Boolean> r0 = com.google.android.gms.internal.ads.aw1.p1
            com.google.android.gms.internal.ads.wv1 r1 = com.google.android.gms.internal.ads.mu1.e()
            java.lang.Object r0 = r1.a(r0)
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            if (r0 == 0) goto L5b
            goto L5d
        L5b:
            r0 = 0
            goto L5e
        L5d:
            r0 = 1
        L5e:
            if (r0 == 0) goto L6a
            java.util.concurrent.Executor r0 = r3.f8043b
            com.google.android.gms.internal.ads.l80 r1 = new com.google.android.gms.internal.ads.l80
            r1.<init>(r3, r4)
            r0.execute(r1)
        L6a:
            com.google.android.gms.internal.ads.na.e(r4)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.m80.a(java.util.Map):void");
    }

    public final ConcurrentHashMap<String, String> b() {
        return new ConcurrentHashMap<>(this.f8047f);
    }

    public final Map<String, String> a() {
        return new HashMap(this.f8047f);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(String str) {
        this.f8044c.a(str);
    }
}
