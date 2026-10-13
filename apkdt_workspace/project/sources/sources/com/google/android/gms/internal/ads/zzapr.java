package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzapr extends zzfm implements zzapo {
    public zzapr() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
    }

    public static zzapo zzai(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
        if (queryLocalInterface instanceof zzapo) {
            return (zzapo) queryLocalInterface;
        }
        return new zzapq(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzape zzapgVar;
        switch (i2) {
            case 1:
                onRewardedVideoAdLoaded();
                break;
            case 2:
                onRewardedVideoAdOpened();
                break;
            case 3:
                onRewardedVideoStarted();
                break;
            case 4:
                onRewardedVideoAdClosed();
                break;
            case 5:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzapgVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardItem");
                    if (queryLocalInterface instanceof zzape) {
                        zzapgVar = (zzape) queryLocalInterface;
                    } else {
                        zzapgVar = new zzapg(readStrongBinder);
                    }
                }
                zza(zzapgVar);
                break;
            case 6:
                onRewardedVideoAdLeftApplication();
                break;
            case 7:
                onRewardedVideoAdFailedToLoad(parcel.readInt());
                break;
            case 8:
                onRewardedVideoCompleted();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
