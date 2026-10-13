package com.google.android.gms.internal.ads;

import android.os.RemoteException;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class xi0 implements ot {

    /* renamed from: e, reason: collision with root package name */
    @GuardedBy("this")
    private zzqu f10367e;

    public final synchronized void a(zzqu zzquVar) {
        this.f10367e = zzquVar;
    }

    @Override // com.google.android.gms.internal.ads.ot
    public final synchronized void onAdFailedToLoad(int i2) {
        if (this.f10367e != null) {
            try {
                this.f10367e.zzbp(i2);
            } catch (RemoteException e2) {
                qd.c("Remote Exception at onAdFailedToLoad.", e2);
            }
        }
    }
}
