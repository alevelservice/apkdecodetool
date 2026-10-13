package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class rg0 implements ad0<r50> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f9127a;

    /* renamed from: b, reason: collision with root package name */
    private final d60 f9128b;

    /* renamed from: c, reason: collision with root package name */
    private final y50 f9129c;

    /* renamed from: d, reason: collision with root package name */
    private final ws0 f9130d;

    /* renamed from: e, reason: collision with root package name */
    private final Executor f9131e;

    /* renamed from: f, reason: collision with root package name */
    private final zzawv f9132f;

    public rg0(Context context, zzawv zzawvVar, ws0 ws0Var, Executor executor, y50 y50Var, d60 d60Var) {
        this.f9127a = context;
        this.f9130d = ws0Var;
        this.f9129c = y50Var;
        this.f9131e = executor;
        this.f9132f = zzawvVar;
        this.f9128b = d60Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<r50> a(final vs0 vs0Var, final ns0 ns0Var) {
        final u60 u60Var = new u60();
        qz0<r50> a2 = gz0.a(gz0.a((Object) null), new qy0(this, ns0Var, u60Var, vs0Var) { // from class: com.google.android.gms.internal.ads.qg0

            /* renamed from: a, reason: collision with root package name */
            private final rg0 f8895a;

            /* renamed from: b, reason: collision with root package name */
            private final ns0 f8896b;

            /* renamed from: c, reason: collision with root package name */
            private final u60 f8897c;

            /* renamed from: d, reason: collision with root package name */
            private final vs0 f8898d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8895a = this;
                this.f8896b = ns0Var;
                this.f8897c = u60Var;
                this.f8898d = vs0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f8895a.a(this.f8896b, this.f8897c, this.f8898d, obj);
            }
        }, this.f9131e);
        a2.a(tg0.a(u60Var), this.f9131e);
        return a2;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        rs0 rs0Var = ns0Var.p;
        return (rs0Var == null || rs0Var.f9223a == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(final ns0 ns0Var, u60 u60Var, vs0 vs0Var, Object obj) {
        qz0<?> a2;
        final fi a3 = this.f9128b.a(this.f9130d.f10196e, ns0Var.P);
        a3.zzat(ns0Var.M);
        u60Var.a(this.f9127a, a3.getView());
        he heVar = new he();
        final t50 a4 = this.f9129c.a(new lr(vs0Var, ns0Var, null), new w50(new xg0(this.f9127a, this.f9128b, this.f9130d, this.f9132f, ns0Var, heVar, a3), a3));
        heVar.b(a4);
        a1.a(a3, a4.k());
        a4.d().a(new wt(a3) { // from class: com.google.android.gms.internal.ads.sg0

            /* renamed from: e, reason: collision with root package name */
            private final fi f9344e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9344e = a3;
            }

            @Override // com.google.android.gms.internal.ads.wt
            public final void onAdImpression() {
                fi fiVar = this.f9344e;
                if (fiVar.zzyy() != null) {
                    fiVar.zzyy().g();
                }
            }
        }, yd.f10544e);
        a4.g().a(a3, true);
        if (((Boolean) mu1.e().a(aw1.I3)).booleanValue() && ns0Var.P) {
            a2 = gz0.a((Object) null);
        } else {
            a4.g();
            rs0 rs0Var = ns0Var.p;
            a2 = f60.a(a3, rs0Var.f9224b, rs0Var.f9223a);
        }
        return gz0.a(a2, new pw0(this, a3, ns0Var, a4) { // from class: com.google.android.gms.internal.ads.vg0

            /* renamed from: a, reason: collision with root package name */
            private final fi f9911a;

            /* renamed from: b, reason: collision with root package name */
            private final ns0 f9912b;

            /* renamed from: c, reason: collision with root package name */
            private final t50 f9913c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9911a = a3;
                this.f9912b = ns0Var;
                this.f9913c = a4;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj2) {
                fi fiVar = this.f9911a;
                ns0 ns0Var2 = this.f9912b;
                t50 t50Var = this.f9913c;
                if (ns0Var2.E) {
                    fiVar.zzzl();
                }
                fiVar.zzys();
                if (((Boolean) mu1.e().a(aw1.C0)).booleanValue()) {
                    com.google.android.gms.ads.internal.n.e();
                    db.a(fiVar);
                }
                return t50Var.j();
            }
        }, this.f9131e);
    }
}
