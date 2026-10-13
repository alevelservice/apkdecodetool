package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.hw;
import com.google.android.gms.internal.ads.ws;
import java.util.concurrent.Executor;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yr0 implements gj0<r50> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10635a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f10636b;

    /* renamed from: c, reason: collision with root package name */
    private final mk f10637c;

    /* renamed from: d, reason: collision with root package name */
    private final ar0 f10638d;

    /* renamed from: e, reason: collision with root package name */
    private final zq0<y50, r50> f10639e;

    /* renamed from: f, reason: collision with root package name */
    private final us0 f10640f;

    /* renamed from: g, reason: collision with root package name */
    @GuardedBy("this")
    private final ys0 f10641g;

    /* renamed from: h, reason: collision with root package name */
    @GuardedBy("this")
    private qz0<r50> f10642h;

    public yr0(Context context, Executor executor, mk mkVar, zq0<y50, r50> zq0Var, ar0 ar0Var, ys0 ys0Var, us0 us0Var) {
        this.f10635a = context;
        this.f10636b = executor;
        this.f10637c = mkVar;
        this.f10639e = zq0Var;
        this.f10638d = ar0Var;
        this.f10641g = ys0Var;
        this.f10640f = us0Var;
    }

    @Override // com.google.android.gms.internal.ads.gj0
    public final boolean a(zztp zztpVar, String str, ej0 ej0Var, ij0<? super r50> ij0Var) {
        zzapu zzapuVar = new zzapu(zztpVar, str);
        String str2 = ej0Var instanceof vr0 ? ((vr0) ej0Var).f9983a : null;
        if (zzapuVar.f10977f == null) {
            qd.b("Ad unit ID should not be null for rewarded video ad.");
            this.f10636b.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.xr0

                /* renamed from: e, reason: collision with root package name */
                private final yr0 f10418e;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10418e = this;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10418e.a();
                }
            });
            return false;
        }
        qz0<r50> qz0Var = this.f10642h;
        if (qz0Var != null && !qz0Var.isDone()) {
            return false;
        }
        ct0.a(this.f10635a, zzapuVar.f10976e.f11242j);
        ys0 ys0Var = this.f10641g;
        ys0Var.a(zzapuVar.f10977f);
        ys0Var.a(zztw.j());
        ys0Var.a(zzapuVar.f10976e);
        ws0 c2 = ys0Var.c();
        hw.a aVar = new hw.a();
        aVar.a((jt) this.f10638d, this.f10636b);
        aVar.a((qu) this.f10638d, this.f10636b);
        aVar.a((ot) this.f10638d, this.f10636b);
        aVar.a((com.google.android.gms.ads.o.a) this.f10638d, this.f10636b);
        aVar.a((st) this.f10638d, this.f10636b);
        x50 l2 = this.f10637c.l();
        ws.a aVar2 = new ws.a();
        aVar2.a(this.f10635a);
        aVar2.a(c2);
        aVar2.a(str2);
        aVar2.a(this.f10640f);
        l2.e(aVar2.a());
        l2.c(aVar.a());
        this.f10642h = this.f10639e.a(l2, this.f10636b);
        gz0.a(this.f10642h, new as0(this, ij0Var), this.f10636b);
        return true;
    }

    @Override // com.google.android.gms.internal.ads.gj0
    public final boolean isLoading() {
        qz0<r50> qz0Var = this.f10642h;
        return (qz0Var == null || qz0Var.isDone()) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final /* synthetic */ void a() {
        this.f10638d.onAdFailedToLoad(1);
    }
}
