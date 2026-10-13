package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class fg0 implements dd0<r50, zzaji, zzcgu> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f6640a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f6641b;

    /* renamed from: c, reason: collision with root package name */
    private final y50 f6642c;

    public fg0(Context context, Executor executor, y50 y50Var) {
        this.f6640a = context;
        this.f6641b = executor;
        this.f6642c = y50Var;
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final void a(vs0 vs0Var, ns0 ns0Var, bd0<zzaji, zzcgu> bd0Var) {
        try {
            bd0Var.f5765b.zzb(ObjectWrapper.wrap(this.f6640a), vs0Var.f9985a.f9004a.f10195d, ns0Var.s.toString(), bd0Var.f5766c);
        } catch (Exception e2) {
            String valueOf = String.valueOf(bd0Var.f5764a);
            qd.c(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final /* synthetic */ r50 b(vs0 vs0Var, ns0 ns0Var, final bd0<zzaji, zzcgu> bd0Var) {
        t50 a2 = this.f6642c.a(new lr(vs0Var, ns0Var, bd0Var.f5764a), new w50(new sz(bd0Var) { // from class: com.google.android.gms.internal.ads.ig0

            /* renamed from: a, reason: collision with root package name */
            private final bd0 f7286a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7286a = bd0Var;
            }

            @Override // com.google.android.gms.internal.ads.sz
            public final void a(boolean z, Context context) {
                bd0 bd0Var2 = this.f7286a;
                try {
                    ((zzaji) bd0Var2.f5765b).setImmersiveMode(z);
                    ((zzaji) bd0Var2.f5765b).zzw(ObjectWrapper.wrap(context));
                } catch (RemoteException e2) {
                    qd.c("Cannot show rewarded .", e2);
                }
            }
        }));
        a2.a().a((yt) new dn(bd0Var.f5765b), this.f6641b);
        bd0Var.f5766c.zza(a2.l());
        return a2.j();
    }
}
