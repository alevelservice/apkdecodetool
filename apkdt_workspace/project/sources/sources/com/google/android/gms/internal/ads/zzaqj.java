package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaqj extends zzfm implements zzaqg {
    public zzaqj() {
        super("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
    }

    public static zzaqg zzal(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAd");
        if (queryLocalInterface instanceof zzaqg) {
            return (zzaqg) queryLocalInterface;
        }
        return new zzaqi(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzaqo zzaqoVar = null;
        zzaqt zzaqtVar = null;
        zzaql zzaqlVar = null;
        switch (i2) {
            case 1:
                zztp zztpVar = (zztp) tg1.a(parcel, zztp.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdLoadCallback");
                    if (queryLocalInterface instanceof zzaqo) {
                        zzaqoVar = (zzaqo) queryLocalInterface;
                    } else {
                        zzaqoVar = new zzaqq(readStrongBinder);
                    }
                }
                zza(zztpVar, zzaqoVar);
                parcel2.writeNoException();
                return true;
            case 2:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdCallback");
                    if (queryLocalInterface2 instanceof zzaql) {
                        zzaqlVar = (zzaql) queryLocalInterface2;
                    } else {
                        zzaqlVar = new zzaqn(readStrongBinder2);
                    }
                }
                zza(zzaqlVar);
                parcel2.writeNoException();
                return true;
            case 3:
                boolean isLoaded = isLoaded();
                parcel2.writeNoException();
                tg1.a(parcel2, isLoaded);
                return true;
            case 4:
                String mediationAdapterClassName = getMediationAdapterClassName();
                parcel2.writeNoException();
                parcel2.writeString(mediationAdapterClassName);
                return true;
            case 5:
                zzl(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.rewarded.client.IRewardedAdSkuListener");
                    if (queryLocalInterface3 instanceof zzaqt) {
                        zzaqtVar = (zzaqt) queryLocalInterface3;
                    } else {
                        zzaqtVar = new zzaqs(readStrongBinder3);
                    }
                }
                zza(zzaqtVar);
                parcel2.writeNoException();
                return true;
            case 7:
                zza((zzarb) tg1.a(parcel, zzarb.CREATOR));
                parcel2.writeNoException();
                return true;
            case 8:
                zza(zzwi.zzh(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 9:
                Bundle adMetadata = getAdMetadata();
                parcel2.writeNoException();
                tg1.b(parcel2, adMetadata);
                return true;
            case 10:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), tg1.a(parcel));
                parcel2.writeNoException();
                return true;
            case 11:
                zzaqf zzpg = zzpg();
                parcel2.writeNoException();
                tg1.a(parcel2, zzpg);
                return true;
            default:
                return false;
        }
    }
}
