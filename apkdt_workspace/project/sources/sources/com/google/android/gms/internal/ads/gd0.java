package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class gd0 implements ad0<po> {

    /* renamed from: a, reason: collision with root package name */
    private final lo f6848a;

    /* renamed from: b, reason: collision with root package name */
    private final Context f6849b;

    /* renamed from: c, reason: collision with root package name */
    private final d60 f6850c;

    /* renamed from: d, reason: collision with root package name */
    private final Executor f6851d;

    public gd0(lo loVar, Context context, Executor executor, d60 d60Var, ws0 ws0Var) {
        this.f6849b = context;
        this.f6848a = loVar;
        this.f6851d = executor;
        this.f6850c = d60Var;
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final qz0<po> a(final vs0 vs0Var, final ns0 ns0Var) {
        return gz0.a(gz0.a((Object) null), new qy0(this, vs0Var, ns0Var) { // from class: com.google.android.gms.internal.ads.fd0

            /* renamed from: a, reason: collision with root package name */
            private final gd0 f6618a;

            /* renamed from: b, reason: collision with root package name */
            private final vs0 f6619b;

            /* renamed from: c, reason: collision with root package name */
            private final ns0 f6620c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f6618a = this;
                this.f6619b = vs0Var;
                this.f6620c = ns0Var;
            }

            @Override // com.google.android.gms.internal.ads.qy0
            public final qz0 b(Object obj) {
                return this.f6618a.a(this.f6619b, this.f6620c, obj);
            }
        }, this.f6851d);
    }

    @Override // com.google.android.gms.internal.ads.ad0
    public final boolean b(vs0 vs0Var, ns0 ns0Var) {
        rs0 rs0Var = ns0Var.p;
        return (rs0Var == null || rs0Var.f9223a == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ qz0 a(vs0 vs0Var, ns0 ns0Var, Object obj) {
        zztw a2 = at0.a(this.f6849b, ns0Var.r);
        final fi a3 = this.f6850c.a(a2);
        final ho a4 = this.f6848a.a(new lr(vs0Var, ns0Var, null), new go(a3.getView(), a3, at0.a(a2), ns0Var.R));
        a4.h().a(a3, false);
        a4.d().a(new wt(a3) { // from class: com.google.android.gms.internal.ads.id0

            /* renamed from: e, reason: collision with root package name */
            private final fi f7271e;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7271e = a3;
            }

            @Override // com.google.android.gms.internal.ads.wt
            public final void onAdImpression() {
                fi fiVar = this.f7271e;
                if (fiVar.zzyy() != null) {
                    fiVar.zzyy().g();
                }
            }
        }, yd.f10544e);
        a4.h();
        rs0 rs0Var = ns0Var.p;
        return gz0.a(f60.a(a3, rs0Var.f9224b, rs0Var.f9223a), new pw0(a4) { // from class: com.google.android.gms.internal.ads.hd0

            /* renamed from: a, reason: collision with root package name */
            private final ho f7043a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7043a = a4;
            }

            @Override // com.google.android.gms.internal.ads.pw0
            public final Object apply(Object obj2) {
                return this.f7043a.g();
            }
        }, yd.f10544e);
    }
}
