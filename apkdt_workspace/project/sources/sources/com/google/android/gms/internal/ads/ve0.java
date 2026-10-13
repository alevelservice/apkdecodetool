package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ve0 implements dd0<py, zzaji, zzcgu> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f9899a;

    /* renamed from: b, reason: collision with root package name */
    private final lz f9900b;

    /* renamed from: c, reason: collision with root package name */
    private final zzawv f9901c;

    /* renamed from: d, reason: collision with root package name */
    private final Executor f9902d;

    public ve0(Context context, zzawv zzawvVar, lz lzVar, Executor executor) {
        this.f9899a = context;
        this.f9901c = zzawvVar;
        this.f9900b = lzVar;
        this.f9902d = executor;
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final void a(vs0 vs0Var, ns0 ns0Var, bd0<zzaji, zzcgu> bd0Var) {
        if (this.f9901c.f11002g < 4100000) {
            bd0Var.f5765b.zza(ObjectWrapper.wrap(this.f9899a), vs0Var.f9985a.f9004a.f10195d, ns0Var.s.toString(), bd0Var.f5766c);
        } else {
            bd0Var.f5765b.zza(ObjectWrapper.wrap(this.f9899a), vs0Var.f9985a.f9004a.f10195d, ns0Var.s.toString(), nc.a((sc) ns0Var.p), bd0Var.f5766c);
        }
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final /* synthetic */ py b(vs0 vs0Var, ns0 ns0Var, final bd0<zzaji, zzcgu> bd0Var) {
        ry a2 = this.f9900b.a(new lr(vs0Var, ns0Var, bd0Var.f5764a), new qy(new sz(bd0Var) { // from class: com.google.android.gms.internal.ads.ue0

            /* renamed from: a, reason: collision with root package name */
            private final bd0 f9720a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f9720a = bd0Var;
            }

            @Override // com.google.android.gms.internal.ads.sz
            public final void a(boolean z, Context context) {
                bd0 bd0Var2 = this.f9720a;
                try {
                    ((zzaji) bd0Var2.f5765b).setImmersiveMode(z);
                    ((zzaji) bd0Var2.f5765b).showInterstitial();
                } catch (RemoteException unused) {
                    qd.c("Cannot show interstitial.");
                }
            }
        }));
        a2.a().a((yt) new dn(bd0Var.f5765b), this.f9902d);
        bd0Var.f5766c.zza(a2.f());
        return a2.h();
    }
}
