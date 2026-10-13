package com.google.android.gms.internal.auth;

import android.os.Parcel;
import com.google.android.gms.auth.api.accounttransfer.DeviceMetaData;
import com.google.android.gms.auth.api.accounttransfer.zzl;
import com.google.android.gms.auth.api.accounttransfer.zzt;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public abstract class zzy extends zzb implements zzx {
    public zzy() {
        super("com.google.android.gms.auth.api.accounttransfer.internal.IAccountTransferCallbacks");
    }

    @Override // com.google.android.gms.internal.auth.zzb
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                zzb((Status) m.a(parcel, Status.CREATOR));
                return true;
            case 2:
                zza((Status) m.a(parcel, Status.CREATOR), (zzt) m.a(parcel, zzt.CREATOR));
                return true;
            case 3:
                zza((Status) m.a(parcel, Status.CREATOR), (zzl) m.a(parcel, zzl.CREATOR));
                return true;
            case 4:
                zzd();
                return true;
            case 5:
                onFailure((Status) m.a(parcel, Status.CREATOR));
                return true;
            case 6:
                zza(parcel.createByteArray());
                return true;
            case 7:
                zza((DeviceMetaData) m.a(parcel, DeviceMetaData.CREATOR));
                return true;
            default:
                return false;
        }
    }
}
