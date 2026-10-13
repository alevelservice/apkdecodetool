package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzapk extends zzfm implements zzapl {
    public zzapk() {
        super("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
    }

    public static zzapl zzah(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAd");
        if (queryLocalInterface instanceof zzapl) {
            return (zzapl) queryLocalInterface;
        }
        return new zzapn(iBinder);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x000e. Please report as an issue. */
    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zza((zzapu) tg1.a(parcel, zzapu.CREATOR));
            parcel2.writeNoException();
        } else if (i2 != 2) {
            zzapo zzapoVar = null;
            zzapj zzapjVar = null;
            if (i2 == 3) {
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedVideoAdListener");
                    if (queryLocalInterface instanceof zzapo) {
                        zzapoVar = (zzapo) queryLocalInterface;
                    } else {
                        zzapoVar = new zzapq(readStrongBinder);
                    }
                }
                zza(zzapoVar);
                parcel2.writeNoException();
            } else if (i2 != 34) {
                switch (i2) {
                    case 5:
                        boolean isLoaded = isLoaded();
                        parcel2.writeNoException();
                        tg1.a(parcel2, isLoaded);
                        break;
                    case 6:
                        pause();
                        parcel2.writeNoException();
                        break;
                    case 7:
                        resume();
                        parcel2.writeNoException();
                        break;
                    case 8:
                        destroy();
                        parcel2.writeNoException();
                        break;
                    case 9:
                        zzn(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case 10:
                        zzo(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case 11:
                        zzp(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case 12:
                        String mediationAdapterClassName = getMediationAdapterClassName();
                        parcel2.writeNoException();
                        parcel2.writeString(mediationAdapterClassName);
                        break;
                    case 13:
                        setUserId(parcel.readString());
                        parcel2.writeNoException();
                        break;
                    case 14:
                        zza(zzvk.zzd(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case 15:
                        Bundle adMetadata = getAdMetadata();
                        parcel2.writeNoException();
                        tg1.b(parcel2, adMetadata);
                        break;
                    case 16:
                        IBinder readStrongBinder2 = parcel.readStrongBinder();
                        if (readStrongBinder2 != null) {
                            IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.reward.client.IRewardedAdSkuListener");
                            if (queryLocalInterface2 instanceof zzapj) {
                                zzapjVar = (zzapj) queryLocalInterface2;
                            } else {
                                zzapjVar = new zzapi(readStrongBinder2);
                            }
                        }
                        zza(zzapjVar);
                        parcel2.writeNoException();
                        break;
                    case 17:
                        setAppPackageName(parcel.readString());
                        parcel2.writeNoException();
                        break;
                    case 18:
                        zzm(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                        parcel2.writeNoException();
                        break;
                    case 19:
                        setCustomData(parcel.readString());
                        parcel2.writeNoException();
                        break;
                    case 20:
                        boolean zzph = zzph();
                        parcel2.writeNoException();
                        tg1.a(parcel2, zzph);
                        break;
                    default:
                        return false;
                }
            } else {
                setImmersiveMode(tg1.a(parcel));
                parcel2.writeNoException();
            }
        } else {
            show();
            parcel2.writeNoException();
        }
        return true;
    }
}
