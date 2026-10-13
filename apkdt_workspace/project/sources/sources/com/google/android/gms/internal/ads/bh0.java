package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class bh0 implements dd0<r50, zzaji, zzcgt> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f5774a;

    /* renamed from: b, reason: collision with root package name */
    private final Executor f5775b;

    /* renamed from: c, reason: collision with root package name */
    private final y50 f5776c;

    public bh0(Context context, Executor executor, y50 y50Var) {
        this.f5774a = context;
        this.f5775b = executor;
        this.f5776c = y50Var;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(vs0 vs0Var, ns0 ns0Var, bd0<zzaji, zzcgt> bd0Var) {
        try {
            bd0Var.f5765b.zza(vs0Var.f9985a.f9004a.f10195d, ns0Var.s.toString());
        } catch (Exception e2) {
            String valueOf = String.valueOf(bd0Var.f5764a);
            qd.c(valueOf.length() != 0 ? "Fail to load ad from adapter ".concat(valueOf) : new String("Fail to load ad from adapter "), e2);
        }
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final void a(vs0 vs0Var, ns0 ns0Var, bd0<zzaji, zzcgt> bd0Var) {
        if (!bd0Var.f5765b.isInitialized()) {
            bd0Var.f5766c.zza(new dh0(this, vs0Var, ns0Var, bd0Var));
            bd0Var.f5765b.zza(ObjectWrapper.wrap(this.f5774a), vs0Var.f9985a.f9004a.f10195d, (String) null, bd0Var.f5766c, ns0Var.s.toString());
            return;
        }
        c(vs0Var, ns0Var, bd0Var);
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final /* synthetic */ r50 b(vs0 vs0Var, ns0 ns0Var, final bd0<zzaji, zzcgt> bd0Var) {
        t50 a2 = this.f5776c.a(new lr(vs0Var, ns0Var, bd0Var.f5764a), new w50(new sz(bd0Var) { // from class: com.google.android.gms.internal.ads.ah0

            /* renamed from: a, reason: collision with root package name */
            private final bd0 f5572a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f5572a = bd0Var;
            }

            @Override // com.google.android.gms.internal.ads.sz
            public final void a(boolean z, Context context) {
                bd0 bd0Var2 = this.f5572a;
                try {
                    ((zzaji) bd0Var2.f5765b).setImmersiveMode(z);
                    ((zzaji) bd0Var2.f5765b).showVideo();
                } catch (RemoteException e2) {
                    qd.c("Cannot show rewarded video.", e2);
                }
            }
        }));
        a2.a().a((yt) new dn(bd0Var.f5765b), this.f5775b);
        fu b2 = a2.b();
        it c2 = a2.c();
        bd0Var.f5766c.zza(new zzcjs(this, a2.h(), c2, b2, a2.k()));
        return a2.j();
    }
}
