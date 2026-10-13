package com.google.android.gms.internal.ads;

import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class g8 implements com.google.android.gms.ads.p.b {

    /* renamed from: a, reason: collision with root package name */
    private final zzaqf f6823a;

    public g8(zzaqf zzaqfVar) {
        this.f6823a = zzaqfVar;
    }

    @Override // com.google.android.gms.ads.p.b
    public final int getAmount() {
        zzaqf zzaqfVar = this.f6823a;
        if (zzaqfVar == null) {
            return 0;
        }
        try {
            return zzaqfVar.getAmount();
        } catch (RemoteException e2) {
            qd.c("Could not forward getAmount to RewardItem", e2);
            return 0;
        }
    }

    @Override // com.google.android.gms.ads.p.b
    public final String getType() {
        zzaqf zzaqfVar = this.f6823a;
        if (zzaqfVar == null) {
            return null;
        }
        try {
            return zzaqfVar.getType();
        } catch (RemoteException e2) {
            qd.c("Could not forward getType to RewardItem", e2);
            return null;
        }
    }
}
