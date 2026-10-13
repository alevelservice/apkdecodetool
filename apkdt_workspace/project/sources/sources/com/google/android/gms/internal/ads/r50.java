package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import androidx.annotation.Nullable;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class r50 extends sq {

    /* renamed from: f, reason: collision with root package name */
    private final Context f9038f;

    /* renamed from: g, reason: collision with root package name */
    private final WeakReference<fi> f9039g;

    /* renamed from: h, reason: collision with root package name */
    private final sz f9040h;

    /* renamed from: i, reason: collision with root package name */
    private final dx f9041i;

    /* renamed from: j, reason: collision with root package name */
    private final nt f9042j;

    /* renamed from: k, reason: collision with root package name */
    private final tu f9043k;

    /* renamed from: l, reason: collision with root package name */
    private final pr f9044l;
    private final zzaqf m;
    private final qv0 n;
    private boolean o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r50(rq rqVar, Context context, @Nullable fi fiVar, sz szVar, dx dxVar, nt ntVar, tu tuVar, pr prVar, ns0 ns0Var, qv0 qv0Var) {
        super(rqVar);
        this.o = false;
        this.f9038f = context;
        this.f9040h = szVar;
        this.f9039g = new WeakReference<>(fiVar);
        this.f9041i = dxVar;
        this.f9042j = ntVar;
        this.f9043k = tuVar;
        this.f9044l = prVar;
        this.n = qv0Var;
        this.m = new zzarc(ns0Var.f8426l);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2, types: [android.content.Context] */
    public final void a(boolean z, @Nullable Activity activity) {
        if (((Boolean) mu1.e().a(aw1.w0)).booleanValue()) {
            com.google.android.gms.ads.internal.n.c();
            if (wa.g(this.f9038f)) {
                qd.d("Rewarded ad can not be shown when app is not in foreground.");
                this.f9042j.zzcm(3);
                if (((Boolean) mu1.e().a(aw1.x0)).booleanValue()) {
                    this.n.a(this.f9421a.f9986b.f9630b.f8769b);
                    return;
                }
                return;
            }
        }
        if (this.o) {
            qd.d("The rewarded ad have been showed.");
            this.f9042j.zzcm(1);
            return;
        }
        this.o = true;
        this.f9041i.d();
        Activity activity2 = activity;
        if (activity == null) {
            activity2 = this.f9038f;
        }
        this.f9040h.a(z, activity2);
    }

    public final Bundle f() {
        return this.f9043k.g();
    }

    public final void finalize() {
        try {
            fi fiVar = this.f9039g.get();
            if (((Boolean) mu1.e().a(aw1.J3)).booleanValue()) {
                if (!this.o && fiVar != null) {
                    tz0 tz0Var = yd.f10543d;
                    fiVar.getClass();
                    tz0Var.execute(u50.a(fiVar));
                }
            } else if (fiVar != null) {
                fiVar.destroy();
            }
        } finally {
            super.finalize();
        }
    }

    public final boolean g() {
        return this.f9044l.c();
    }

    public final boolean h() {
        return this.o;
    }

    public final zzaqf i() {
        return this.m;
    }

    public final boolean j() {
        fi fiVar = this.f9039g.get();
        return (fiVar == null || fiVar.zzzn()) ? false : true;
    }
}
