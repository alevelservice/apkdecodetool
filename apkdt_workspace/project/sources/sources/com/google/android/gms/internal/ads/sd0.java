package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sd0 implements dd0<uo, zzaji, zzcgu> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f9313a;

    /* renamed from: b, reason: collision with root package name */
    private final zzawv f9314b;

    /* renamed from: c, reason: collision with root package name */
    private final qp f9315c;

    /* renamed from: d, reason: collision with root package name */
    private final Executor f9316d;

    public sd0(Context context, zzawv zzawvVar, qp qpVar, Executor executor) {
        this.f9313a = context;
        this.f9314b = zzawvVar;
        this.f9315c = qpVar;
        this.f9316d = executor;
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final void a(vs0 vs0Var, ns0 ns0Var, bd0<zzaji, zzcgu> bd0Var) {
        zztw a2 = at0.a(this.f9313a, ns0Var.r);
        if (this.f9314b.f11002g < 4100000) {
            bd0Var.f5765b.zza(ObjectWrapper.wrap(this.f9313a), a2, vs0Var.f9985a.f9004a.f10195d, ns0Var.s.toString(), bd0Var.f5766c);
        } else {
            bd0Var.f5765b.zza(ObjectWrapper.wrap(this.f9313a), a2, vs0Var.f9985a.f9004a.f10195d, ns0Var.s.toString(), nc.a((sc) ns0Var.p), bd0Var.f5766c);
        }
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final /* synthetic */ uo b(vs0 vs0Var, ns0 ns0Var, bd0<zzaji, zzcgu> bd0Var) {
        qp qpVar = this.f9315c;
        lr lrVar = new lr(vs0Var, ns0Var, bd0Var.f5764a);
        View view = (View) ObjectWrapper.unwrap(bd0Var.f5765b.zzrk());
        zzaji zzajiVar = bd0Var.f5765b;
        zzajiVar.getClass();
        to a2 = qpVar.a(lrVar, new yo(view, null, vd0.a(zzajiVar), ns0Var.r.get(0)));
        a2.i().a((View) ObjectWrapper.unwrap(bd0Var.f5765b.zzrk()));
        a2.a().a((yt) new dn(bd0Var.f5765b), this.f9316d);
        bd0Var.f5766c.zza(a2.f());
        return a2.h();
    }
}
