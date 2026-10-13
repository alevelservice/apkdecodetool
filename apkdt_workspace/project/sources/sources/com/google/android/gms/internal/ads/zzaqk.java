package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaqk extends zzfm implements zzaql {
    public zzaqk() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzaqf zzaqhVar;
        if (i2 == 1) {
            onRewardedAdOpened();
        } else if (i2 == 2) {
            onRewardedAdClosed();
        } else if (i2 == 3) {
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                zzaqhVar = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardItem");
                if (queryLocalInterface instanceof zzaqf) {
                    zzaqhVar = (zzaqf) queryLocalInterface;
                } else {
                    zzaqhVar = new zzaqh(readStrongBinder);
                }
            }
            zza(zzaqhVar);
        } else {
            if (i2 != 4) {
                return false;
            }
            onRewardedAdFailedToShow(parcel.readInt());
        }
        parcel2.writeNoException();
        return true;
    }
}
