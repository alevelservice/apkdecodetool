package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzapy extends zzfm implements zzapz {
    public zzapy() {
        super("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
    }

    public static zzapz zzaj(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.reward.mediation.client.IMediationRewardedVideoAdListener");
        if (queryLocalInterface instanceof zzapz) {
            return (zzapz) queryLocalInterface;
        }
        return new zzaqb(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                zzai(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 2:
                zzd(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 3:
                zzaj(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 4:
                zzak(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 5:
                zzal(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 6:
                zzam(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 7:
                zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zzaqd) tg1.a(parcel, zzaqd.CREATOR));
                break;
            case 8:
                zzan(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 9:
                zze(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                break;
            case 10:
                zzao(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 11:
                zzap(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                break;
            case 12:
                zzb((Bundle) tg1.a(parcel, Bundle.CREATOR));
                break;
            default:
                return false;
        }
        parcel2.writeNoException();
        return true;
    }
}
