package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzajm extends zzfm implements zzajj {
    public zzajm() {
        super("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
    }

    public static zzajj zzaa(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationAdapterListener");
        if (queryLocalInterface instanceof zzajj) {
            return (zzajj) queryLocalInterface;
        }
        return new zzajl(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzajo zzajnVar;
        switch (i2) {
            case 1:
                onAdClicked();
                break;
            case 2:
                onAdClosed();
                break;
            case 3:
                onAdFailedToLoad(parcel.readInt());
                break;
            case 4:
                onAdLeftApplication();
                break;
            case 5:
                onAdOpened();
                break;
            case 6:
                onAdLoaded();
                break;
            case 7:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder == null) {
                    zzajnVar = null;
                } else {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IMediationResponseMetadata");
                    if (queryLocalInterface instanceof zzajo) {
                        zzajnVar = (zzajo) queryLocalInterface;
                    } else {
                        zzajnVar = new zzajn(readStrongBinder);
                    }
                }
                zza(zzajnVar);
                break;
            case 8:
                onAdImpression();
                break;
            case 9:
                onAppEvent(parcel.readString(), parcel.readString());
                break;
            case 10:
                zza(zzabn.zzo(parcel.readStrongBinder()), parcel.readString());
                break;
            case 11:
                onVideoEnd();
                break;
            case 12:
                zzde(parcel.readString());
                break;
            case 13:
                zzrs();
                break;
            case 14:
                zzb((zzaqd) tg1.a(parcel, zzaqd.CREATOR));
                break;
            case 15:
                onVideoPause();
                break;
            case 16:
                zza(zzaqe.zzak(parcel.readStrongBinder()));
                break;
            case 17:
                zzcm(parcel.readInt());
                break;
            case 18:
                zzrt();
                break;
            case 19:
                zzb((Bundle) tg1.a(parcel, Bundle.CREATOR));
                break;
            case 20:
                onVideoPlay();
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
