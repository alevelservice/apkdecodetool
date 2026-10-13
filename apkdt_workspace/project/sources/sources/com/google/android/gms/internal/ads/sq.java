package com.google.android.gms.internal.ads;

import org.json.JSONException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public class sq {

    /* renamed from: a, reason: collision with root package name */
    protected final vs0 f9421a;

    /* renamed from: b, reason: collision with root package name */
    protected final ns0 f9422b;

    /* renamed from: c, reason: collision with root package name */
    private final yt f9423c;

    /* renamed from: d, reason: collision with root package name */
    private final pu f9424d;

    /* renamed from: e, reason: collision with root package name */
    private final String f9425e;

    /* JADX INFO: Access modifiers changed from: protected */
    public sq(rq rqVar) {
        vs0 vs0Var;
        ns0 ns0Var;
        yt ytVar;
        pu puVar;
        String str;
        vs0Var = rqVar.f9203a;
        this.f9421a = vs0Var;
        ns0Var = rqVar.f9204b;
        this.f9422b = ns0Var;
        ytVar = rqVar.f9205c;
        this.f9423c = ytVar;
        puVar = rqVar.f9206d;
        this.f9424d = puVar;
        str = rqVar.f9207e;
        this.f9425e = str;
    }

    public void a() {
        this.f9423c.c(null);
    }

    public final String b() {
        return this.f9425e;
    }

    public void c() {
        this.f9424d.onAdLoaded();
    }

    public final yt d() {
        return this.f9423c;
    }

    public final String e() {
        String a2 = "com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(this.f9425e) || "com.google.ads.mediation.customevent.CustomEventAdapter".equals(this.f9425e) ? a(this.f9422b) : null;
        return a2 == null ? this.f9425e : a2;
    }

    private static String a(ns0 ns0Var) {
        try {
            return ns0Var.s.getString("class_name");
        } catch (JSONException unused) {
            return null;
        }
    }
}
