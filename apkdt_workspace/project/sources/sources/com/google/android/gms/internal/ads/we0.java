package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class we0 implements dd0<py, zzalj, zzcgu> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f10101a;

    /* renamed from: b, reason: collision with root package name */
    private final lz f10102b;

    public we0(Context context, lz lzVar) {
        this.f10101a = context;
        this.f10102b = lzVar;
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final void a(vs0 vs0Var, ns0 ns0Var, bd0<zzalj, zzcgu> bd0Var) {
        bd0Var.f5765b.zzdh(ns0Var.Q);
        bd0Var.f5765b.zza(ns0Var.K, ns0Var.s.toString(), vs0Var.f9985a.f9004a.f10195d, ObjectWrapper.wrap(this.f10101a), new zzchm(this, bd0Var), bd0Var.f5766c);
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final /* synthetic */ py b(vs0 vs0Var, ns0 ns0Var, final bd0<zzalj, zzcgu> bd0Var) {
        final cd0 cd0Var = new cd0(ns0Var);
        ry a2 = this.f10102b.a(new lr(vs0Var, ns0Var, bd0Var.f5764a), new qy(new sz(bd0Var, cd0Var) { // from class: com.google.android.gms.internal.ads.ze0

            /* renamed from: a, reason: collision with root package name */
            private final bd0 f10737a;

            /* renamed from: b, reason: collision with root package name */
            private final cd0 f10738b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10737a = bd0Var;
                this.f10738b = cd0Var;
            }

            @Override // com.google.android.gms.internal.ads.sz
            public final void a(boolean z, Context context) {
                bd0 bd0Var2 = this.f10737a;
                cd0 cd0Var2 = this.f10738b;
                try {
                    if (((zzalj) bd0Var2.f5765b).zzac(ObjectWrapper.wrap(context))) {
                        cd0Var2.a();
                    } else {
                        qd.d("Cannot show interstitial.");
                    }
                } catch (RemoteException e2) {
                    qd.c("Cannot show interstitial.", e2);
                }
            }
        }));
        cd0Var.a(a2.d());
        bd0Var.f5766c.zza(a2.f());
        return a2.h();
    }
}
