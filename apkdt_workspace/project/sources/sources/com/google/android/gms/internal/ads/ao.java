package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ao implements fq1 {

    /* renamed from: e, reason: collision with root package name */
    private fi f5620e;

    /* renamed from: f, reason: collision with root package name */
    private final Executor f5621f;

    /* renamed from: g, reason: collision with root package name */
    private final on f5622g;

    /* renamed from: h, reason: collision with root package name */
    private final com.google.android.gms.common.util.e f5623h;

    /* renamed from: i, reason: collision with root package name */
    private boolean f5624i = false;

    /* renamed from: j, reason: collision with root package name */
    private boolean f5625j = false;

    /* renamed from: k, reason: collision with root package name */
    private sn f5626k = new sn();

    public ao(Executor executor, on onVar, com.google.android.gms.common.util.e eVar) {
        this.f5621f = executor;
        this.f5622g = onVar;
        this.f5623h = eVar;
    }

    private final void c() {
        try {
            final JSONObject d2 = this.f5622g.d(this.f5626k);
            if (this.f5620e != null) {
                this.f5621f.execute(new Runnable(this, d2) { // from class: com.google.android.gms.internal.ads.do

                    /* renamed from: e, reason: collision with root package name */
                    private final ao f6266e;

                    /* renamed from: f, reason: collision with root package name */
                    private final JSONObject f6267f;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f6266e = this;
                        this.f6267f = d2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f6266e.a(this.f6267f);
                    }
                });
            }
        } catch (JSONException e2) {
            na.e("Failed to call video active view js", e2);
        }
    }

    public final void a(fi fiVar) {
        this.f5620e = fiVar;
    }

    public final void b() {
        this.f5624i = true;
        c();
    }

    @Override // com.google.android.gms.internal.ads.fq1
    public final void zza(cq1 cq1Var) {
        this.f5626k.f9401a = this.f5625j ? false : cq1Var.f6096j;
        this.f5626k.f9403c = this.f5623h.c();
        this.f5626k.f9405e = cq1Var;
        if (this.f5624i) {
            c();
        }
    }

    public final void a() {
        this.f5624i = false;
    }

    public final void a(boolean z) {
        this.f5625j = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(JSONObject jSONObject) {
        this.f5620e.zzb("AFMA_updateActiveView", jSONObject);
    }
}
