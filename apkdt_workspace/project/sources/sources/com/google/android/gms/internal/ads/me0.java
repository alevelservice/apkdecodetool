package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class me0 implements ad0<py> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f8085a;

    /* renamed from: b, reason: collision with root package name */
    private final d60 f8086b;

    /* renamed from: c, reason: collision with root package name */
    private final lz f8087c;

    /* renamed from: d, reason: collision with root package name */
    private final ws0 f8088d;

    /* renamed from: e, reason: collision with root package name */
    private final Executor f8089e;

    /* renamed from: f, reason: collision with root package name */
    private final zzawv f8090f;

    public me0(Context context, zzawv zzawvVar, ws0 ws0Var, Executor executor, lz lzVar, d60 d60Var) {
        this.f8085a = context;
        this.f8088d = ws0Var;
        this.f8087c = lzVar;
        this.f8089e = executor;
        this.f8090f = zzawvVar;
        this.f8086b = d60Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<py> a(final vs0 vs0Var, final ns0 ns0Var) {
        final u60 u60Var = new u60();
        qz0<py> a2 = gz0.a(gz0.a((Object) null), new qy0(this, ns0Var, u60Var, vs0Var) { // from class: com.google.android.gms.internal.ads.le0

            /* renamed from: a, reason: collision with root package name */
            private final me0 f7859a;

            /* renamed from: b, reason: collision with root package name */
            private final ns0 f7860b;

            /* renamed from: c, reason: collision with root package name */
            private final u60 f7861c;

            /* renamed from: d, reason: collision with root package name */
            private final vs0 f7862d;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7859a = this;
                this.f7860b = ns0Var;
                this.f7861c = u60Var;
                this.f7862d = vs0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f7859a.a(this.f7860b, this.f7861c, this.f7862d, obj);
            }
        }, this.f8089e);
        a2.a(pe0.a(u60Var), this.f8089e);
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
        final fi a3 = this.f8086b.a(this.f8088d.f10196e, ns0Var.P);
        a3.zzat(ns0Var.M);
        u60Var.a(this.f8085a, a3.getView());
        he heVar = new he();
        final ry a4 = this.f8087c.a(new lr(vs0Var, ns0Var, null), new qy(new te0(this.f8085a, this.f8090f, heVar, ns0Var, a3), a3));
        heVar.b(a4);
        a4.d().a(new wt(a3) { // from class: com.google.android.gms.internal.ads.ne0

            /* renamed from: e, reason: collision with root package name */
            private final fi f8325e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f8325e = a3;
            }

            @Override // com.google.android.gms.internal.ads.wt
            public final void onAdImpression() {
                fi fiVar = this.f8325e;
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
        return gz0.a(a2, new pw0(this, a3, ns0Var, a4) { // from class: com.google.android.gms.internal.ads.re0

            /* renamed from: a, reason: collision with root package name */
            private final fi f9107a;

            /* renamed from: b, reason: collision with root package name */
            private final ns0 f9108b;

            /* renamed from: c, reason: collision with root package name */
            private final ry f9109c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9107a = a3;
                this.f9108b = ns0Var;
                this.f9109c = a4;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj2) {
                fi fiVar = this.f9107a;
                ns0 ns0Var2 = this.f9108b;
                ry ryVar = this.f9109c;
                if (ns0Var2.E) {
                    fiVar.zzzl();
                }
                fiVar.zzys();
                if (((Boolean) mu1.e().a(aw1.C0)).booleanValue()) {
                    com.google.android.gms.ads.internal.n.e();
                    db.a(fiVar);
                }
                return ryVar.h();
            }
        }, this.f8089e);
    }
}
