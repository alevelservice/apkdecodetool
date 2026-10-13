package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaqr extends zzfm implements zzaqo {
    public zzaqr() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            onRewardedAdLoaded();
        } else {
            if (i2 != 2) {
                return false;
            }
            onRewardedAdFailedToLoad(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
