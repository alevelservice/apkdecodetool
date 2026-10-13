package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class jd0 implements ad0<uo> {

    /* renamed from: a, reason: collision with root package name */
    private final qp f7454a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f7455b;

    /* renamed from: c, reason: collision with root package name */
    private final d60 f7456c;

    /* renamed from: d, reason: collision with root package name */
    private final ws0 f7457d;

    /* renamed from: e, reason: collision with root package name */
    private final Executor f7458e;

    /* renamed from: f, reason: collision with root package name */
    private final pw0<ns0, pb> f7459f;

    public jd0(qp qpVar, Context context, Executor executor, d60 d60Var, ws0 ws0Var, pw0<ns0, pb> pw0Var) {
        this.f7455b = context;
        this.f7454a = qpVar;
        this.f7458e = executor;
        this.f7456c = d60Var;
        this.f7457d = ws0Var;
        this.f7459f = pw0Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<uo> a(final vs0 vs0Var, final ns0 ns0Var) {
        return gz0.a(gz0.a((Object) null), new qy0(this, vs0Var, ns0Var) { // from class: com.google.android.gms.internal.ads.md0

            /* renamed from: a, reason: collision with root package name */
            private final jd0 f8079a;

            /* renamed from: b, reason: collision with root package name */
            private final vs0 f8080b;

            /* renamed from: c, reason: collision with root package name */
            private final ns0 f8081c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8079a = this;
                this.f8080b = vs0Var;
                this.f8081c = ns0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f8079a.a(this.f8080b, this.f8081c, obj);
            }
        }, this.f7458e);
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        rs0 rs0Var = ns0Var.p;
        return (rs0Var == null || rs0Var.f9223a == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a(fi fiVar) {
        fiVar.zzys();
        zzbbu zzxj = fiVar.zzxj();
        zzyc zzycVar = this.f7457d.f10193b;
        if (zzycVar == null || zzxj == null) {
            return;
        }
        zzxj.zzb(zzycVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(vs0 vs0Var, ns0 ns0Var, Object obj) {
        zztw a2 = at0.a(this.f7455b, ns0Var.r);
        final fi a3 = this.f7456c.a(a2);
        a3.zzat(ns0Var.M);
        qp qpVar = this.f7454a;
        lr lrVar = new lr(vs0Var, ns0Var, null);
        zzbzi zzbziVar = new zzbzi(this.f7455b, a3.getView(), this.f7459f.apply(ns0Var));
        a3.getClass();
        final to a4 = qpVar.a(lrVar, new yo(zzbziVar, a3, ld0.a(a3), at0.a(a2)));
        a4.g().a(a3, false);
        a4.d().a(new wt(a3) { // from class: com.google.android.gms.internal.ads.od0

            /* renamed from: e, reason: collision with root package name */
            private final fi f8518e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8518e = a3;
            }

            @Override // com.google.android.gms.internal.ads.wt
            public final void onAdImpression() {
                fi fiVar = this.f8518e;
                if (fiVar.zzyy() != null) {
                    fiVar.zzyy().g();
                }
            }
        }, yd.f10544e);
        a4.g();
        rs0 rs0Var = ns0Var.p;
        qz0<?> a5 = f60.a(a3, rs0Var.f9224b, rs0Var.f9223a);
        if (ns0Var.E) {
            a3.getClass();
            a5.a(nd0.a(a3), this.f7458e);
        }
        a5.a(new Runnable(this, a3) { // from class: com.google.android.gms.internal.ads.rd0

            /* renamed from: e, reason: collision with root package name */
            private final jd0 f9094e;

            /* renamed from: f, reason: collision with root package name */
            private final fi f9095f;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9094e = this;
                this.f9095f = a3;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f9094e.a(this.f9095f);
            }
        }, this.f7458e);
        return gz0.a(a5, new pw0(a4) { // from class: com.google.android.gms.internal.ads.pd0

            /* renamed from: a, reason: collision with root package name */
            private final to f8686a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8686a = a4;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj2) {
                return this.f8686a.h();
            }
        }, yd.f10544e);
    }
}
