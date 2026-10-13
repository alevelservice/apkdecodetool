package com.google.android.gms.internal.ads;

import android.content.Context;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xd0 implements dd0<uo, zzalj, zzcgu> {

    /* renamed from: a */
    private final Context f10315a;

    /* renamed from: b */
    private final qp f10316b;

    /* renamed from: c */
    private View f10317c;

    public xd0(Context context, qp qpVar) {
        this.f10315a = context;
        this.f10316b = qpVar;
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final void a(vs0 vs0Var, ns0 ns0Var, bd0<zzalj, zzcgu> bd0Var) {
        bd0Var.f5765b.zzdh(ns0Var.Q);
        bd0Var.f5765b.zza(ns0Var.K, ns0Var.s.toString(), vs0Var.f9985a.f9004a.f10195d, ObjectWrapper.wrap(this.f10315a), new zzcgh(this, bd0Var), bd0Var.f5766c, vs0Var.f9985a.f9004a.f10196e);
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final /* synthetic */ uo b(vs0 vs0Var, ns0 ns0Var, bd0<zzalj, zzcgu> bd0Var) {
        qp qpVar = this.f10316b;
        lr lrVar = new lr(vs0Var, ns0Var, bd0Var.f5764a);
        View view = this.f10317c;
        zzalj zzaljVar = bd0Var.f5765b;
        zzaljVar.getClass();
        to a2 = qpVar.a(lrVar, new yo(view, null, wd0.a(zzaljVar), ns0Var.r.get(0)));
        a2.i().a(this.f10317c);
        bd0Var.f5766c.zza(a2.f());
        return a2.h();
    }
}
