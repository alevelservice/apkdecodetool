package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class s1 extends c2<p3> implements y1, h2 {

    /* renamed from: g */
    private final zzbdh f9261g;

    /* renamed from: h */
    private g2 f9262h;

    public s1(Context context, zzawv zzawvVar) {
        try {
            this.f9261g = new zzbdh(context, new z1(this));
            this.f9261g.setWillNotDraw(true);
            this.f9261g.addJavascriptInterface(new v1(this), "GoogleJsInterface");
            com.google.android.gms.ads.internal.n.c().a(context, zzawvVar.f11000e, this.f9261g.getSettings());
            super.a(this);
        } catch (Throwable th) {
            throw new ri("Init failed.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void a(String str) {
        yd.f10543d.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.u1

            /* renamed from: e, reason: collision with root package name */
            private final s1 f9664e;

            /* renamed from: f, reason: collision with root package name */
            private final String f9665f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9664e = this;
                this.f9665f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9664e.f(this.f9665f);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.y1
    public final void a(String str, String str2) {
        b2.a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void b(String str) {
        c(String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>", str));
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void c(String str) {
        yd.f10543d.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.r1

            /* renamed from: e, reason: collision with root package name */
            private final s1 f9023e;

            /* renamed from: f, reason: collision with root package name */
            private final String f9024f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9023e = this;
                this.f9024f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9023e.g(this.f9024f);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void destroy() {
        this.f9261g.destroy();
    }

    public final /* synthetic */ void e(String str) {
        this.f9261g.zzct(str);
    }

    public final /* synthetic */ void f(String str) {
        this.f9261g.loadUrl(str);
    }

    public final /* synthetic */ void g(String str) {
        this.f9261g.loadData(str, "text/html", "UTF-8");
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final boolean isDestroyed() {
        return this.f9261g.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.p1
    public final void zza(String str, Map map) {
        b2.a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.y1, com.google.android.gms.internal.ads.p1
    public final void zza(String str, JSONObject jSONObject) {
        b2.b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.r2
    public final void zzb(String str, JSONObject jSONObject) {
        b2.a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.y1, com.google.android.gms.internal.ads.r2
    public final void zzct(String str) {
        yd.f10543d.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.t1

            /* renamed from: e, reason: collision with root package name */
            private final s1 f9488e;

            /* renamed from: f, reason: collision with root package name */
            private final String f9489f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9488e = this;
                this.f9489f = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9488e.e(this.f9489f);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final void a(g2 g2Var) {
        this.f9262h = g2Var;
    }

    @Override // com.google.android.gms.internal.ads.h2
    public final s3 a() {
        return new r3(this);
    }
}
