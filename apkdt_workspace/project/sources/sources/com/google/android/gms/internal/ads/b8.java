package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class b8 implements com.google.android.gms.ads.o.b {

    /* renamed from: a, reason: collision with root package name */
    private final zzape f5726a;

    public b8(zzape zzapeVar) {
        this.f5726a = zzapeVar;
    }

    @Override // com.google.android.gms.ads.o.b
    public final int getAmount() {
        zzape zzapeVar = this.f5726a;
        if (zzapeVar == null) {
            return 0;
        }
        try {
            return zzapeVar.getAmount();
        } catch (RemoteException e2) {
            qd.c("Could not forward getAmount to RewardItem", e2);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.o.b
    public final String getType() {
        zzape zzapeVar = this.f5726a;
        if (zzapeVar == null) {
            return null;
        }
        try {
            return zzapeVar.getType();
        } catch (RemoteException e2) {
            qd.c("Could not forward getType to RewardItem", e2);
            return null;
        }
    }
}
