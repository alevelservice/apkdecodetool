package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.zzi;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class xg0 implements sz {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10343a;

    /* renamed from: b, reason: collision with root package name */
    private final d60 f10344b;

    /* renamed from: c, reason: collision with root package name */
    private final ws0 f10345c;

    /* renamed from: d, reason: collision with root package name */
    private final zzawv f10346d;

    /* renamed from: e, reason: collision with root package name */
    private final ns0 f10347e;

    /* renamed from: f, reason: collision with root package name */
    private final qz0<t50> f10348f;

    /* renamed from: g, reason: collision with root package name */
    private final fi f10349g;

    private xg0(Context context, d60 d60Var, ws0 ws0Var, zzawv zzawvVar, ns0 ns0Var, qz0<t50> qz0Var, fi fiVar) {
        this.f10343a = context;
        this.f10344b = d60Var;
        this.f10345c = ws0Var;
        this.f10346d = zzawvVar;
        this.f10347e = ns0Var;
        this.f10348f = qz0Var;
        this.f10349g = fiVar;
    }

    @Override // com.google.android.gms.internal.ads.sz
    public final void a(boolean z, Context context) {
        fi fiVar;
        fi fiVar2;
        t50 t50Var = (t50) gz0.b(this.f10348f);
        try {
            ns0 ns0Var = this.f10347e;
            if (!this.f10349g.zzzn()) {
                fiVar2 = this.f10349g;
            } else {
                if (!((Boolean) mu1.e().a(aw1.E0)).booleanValue()) {
                    fiVar2 = this.f10349g;
                } else {
                    final fi a2 = this.f10344b.a(this.f10345c.f10196e);
                    a1.a(a2, t50Var.k());
                    final u60 u60Var = new u60();
                    u60Var.a(this.f10343a, a2.getView());
                    t50Var.g().a(a2, true);
                    a2.zzyy().a(new rj(u60Var, a2) { // from class: com.google.android.gms.internal.ads.wg0

                        /* renamed from: a, reason: collision with root package name */
                        private final u60 f10114a;

                        /* renamed from: b, reason: collision with root package name */
                        private final fi f10115b;

                        /* JADX INFO: Access modifiers changed from: package-private */
                        {
                            this.f10114a = u60Var;
                            this.f10115b = a2;
                        }

                        @Override // com.google.android.gms.internal.ads.rj
                        public final void a(boolean z2) {
                            u60 u60Var2 = this.f10114a;
                            fi fiVar3 = this.f10115b;
                            u60Var2.a();
                            fiVar3.zzys();
                            fiVar3.zzyy().g();
                        }
                    });
                    oj zzyy = a2.zzyy();
                    a2.getClass();
                    zzyy.a(zg0.a(a2));
                    a2.zzb(ns0Var.p.f9224b, ns0Var.p.f9223a, null);
                    fiVar = a2;
                    fiVar.zzaq(true);
                    com.google.android.gms.ads.internal.n.c();
                    boolean n = wa.n(this.f10343a);
                    ns0 ns0Var2 = this.f10347e;
                    zzi zziVar = new zzi(false, n, false, 0.0f, -1, z, ns0Var2.F, ns0Var2.G);
                    com.google.android.gms.ads.internal.n.b();
                    jz i2 = t50Var.i();
                    ns0 ns0Var3 = this.f10347e;
                    int i3 = ns0Var3.H;
                    zzawv zzawvVar = this.f10346d;
                    String str = ns0Var3.y;
                    rs0 rs0Var = ns0Var3.p;
                    com.google.android.gms.ads.internal.overlay.j.a(context, new AdOverlayInfoParcel((st1) null, i2, (com.google.android.gms.ads.internal.overlay.p) null, fiVar, i3, zzawvVar, str, zziVar, rs0Var.f9224b, rs0Var.f9223a), true);
                }
            }
            fiVar = fiVar2;
            fiVar.zzaq(true);
            com.google.android.gms.ads.internal.n.c();
            boolean n2 = wa.n(this.f10343a);
            ns0 ns0Var22 = this.f10347e;
            zzi zziVar2 = new zzi(false, n2, false, 0.0f, -1, z, ns0Var22.F, ns0Var22.G);
            com.google.android.gms.ads.internal.n.b();
            jz i22 = t50Var.i();
            ns0 ns0Var32 = this.f10347e;
            int i32 = ns0Var32.H;
            zzawv zzawvVar2 = this.f10346d;
            String str2 = ns0Var32.y;
            rs0 rs0Var2 = ns0Var32.p;
            com.google.android.gms.ads.internal.overlay.j.a(context, new AdOverlayInfoParcel((st1) null, i22, (com.google.android.gms.ads.internal.overlay.p) null, fiVar, i32, zzawvVar2, str2, zziVar2, rs0Var2.f9224b, rs0Var2.f9223a), true);
        } catch (ri e2) {
            qd.b("", e2);
        }
    }
}
