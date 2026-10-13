package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class kg0 implements dd0<r50, zzalj, zzcgu> {

    /* renamed from: a, reason: collision with root package name */
    private final Context f7684a;

    /* renamed from: b, reason: collision with root package name */
    private final y50 f7685b;

    public kg0(Context context, y50 y50Var) {
        this.f7684a = context;
        this.f7685b = y50Var;
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final void a(vs0 vs0Var, ns0 ns0Var, bd0<zzalj, zzcgu> bd0Var) {
        bd0Var.f5765b.zzdh(ns0Var.Q);
        bd0Var.f5765b.zza(ns0Var.K, ns0Var.s.toString(), vs0Var.f9985a.f9004a.f10195d, ObjectWrapper.wrap(this.f7684a), new zzcix(this, bd0Var), bd0Var.f5766c);
    }

    @Override // com.google.android.gms.internal.ads.dd0
    public final /* synthetic */ r50 b(vs0 vs0Var, ns0 ns0Var, final bd0<zzalj, zzcgu> bd0Var) {
        final cd0 cd0Var = new cd0(ns0Var);
        t50 a2 = this.f7685b.a(new lr(vs0Var, ns0Var, bd0Var.f5764a), new w50(new sz(bd0Var, cd0Var) { // from class: com.google.android.gms.internal.ads.jg0

            /* renamed from: a, reason: collision with root package name */
            private final bd0 f7491a;

            /* renamed from: b, reason: collision with root package name */
            private final cd0 f7492b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7491a = bd0Var;
                this.f7492b = cd0Var;
            }

            @Override // com.google.android.gms.internal.ads.sz
            public final void a(boolean z, Context context) {
                bd0 bd0Var2 = this.f7491a;
                cd0 cd0Var2 = this.f7492b;
                try {
                    if (((zzalj) bd0Var2.f5765b).zzad(ObjectWrapper.wrap(context))) {
                        cd0Var2.a();
                    } else {
                        qd.d("Can't show rewarded video.");
                    }
                } catch (RemoteException e2) {
                    qd.c("Can't show rewarded video.", e2);
                }
            }
        }));
        cd0Var.a(a2.d());
        bd0Var.f5766c.zza(a2.l());
        return a2.j();
    }
}
