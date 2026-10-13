package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class lf0 implements dd0<d10, zzalj, zzcgu> {

    /* renamed from: a */
    private final Context f7864a;

    /* renamed from: b */
    private final f00 f7865b;

    /* renamed from: c */
    private zzajw f7866c;

    public lf0(Context context, f00 f00Var) {
        this.f7864a = context;
        this.f7865b = f00Var;
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final void a(vs0 vs0Var, ns0 ns0Var, bd0<zzalj, zzcgu> bd0Var) {
        bd0Var.f5765b.zzdh(ns0Var.Q);
        bd0Var.f5765b.zza(ns0Var.K, ns0Var.s.toString(), vs0Var.f9985a.f9004a.f10195d, ObjectWrapper.wrap(this.f7864a), new zzchz(this, bd0Var), bd0Var.f5766c);
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final /* synthetic */ d10 b(vs0 vs0Var, ns0 ns0Var, bd0<zzalj, zzcgu> bd0Var) {
        if (vs0Var.f9985a.f9004a.f10198g.contains(Integer.toString(6))) {
            l10 a2 = l10.a(this.f7866c);
            if (vs0Var.f9985a.f9004a.f10198g.contains(Integer.toString(a2.o()))) {
                r10 a3 = this.f7865b.a(new lr(vs0Var, ns0Var, bd0Var.f5764a), new y10(a2), new a30(null, null, this.f7866c));
                bd0Var.f5766c.zza(a3.f());
                return a3.g();
            }
            throw new bg0("No corresponding native ad listener", 0);
        }
        throw new bg0("Unified must be used for RTB.", 1);
    }
}
