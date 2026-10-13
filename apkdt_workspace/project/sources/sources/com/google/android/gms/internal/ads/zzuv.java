package com.google.android.gms.internal.ads;

import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzuv extends zzfm implements zzuw {
    public zzuv() {
        super("com.google.android.gms.ads.internal.client.IAdLoader");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zzb((zztp) tg1.a(parcel, zztp.CREATOR));
            parcel2.writeNoException();
        } else if (i2 == 2) {
            String mediationAdapterClassName = getMediationAdapterClassName();
            parcel2.writeNoException();
            parcel2.writeString(mediationAdapterClassName);
        } else if (i2 == 3) {
            boolean isLoading = isLoading();
            parcel2.writeNoException();
            tg1.a(parcel2, isLoading);
        } else if (i2 == 4) {
            String zzjp = zzjp();
            parcel2.writeNoException();
            parcel2.writeString(zzjp);
        } else {
            if (i2 != 5) {
                return false;
            }
            zza((zztp) tg1.a(parcel, zztp.CREATOR), parcel.readInt());
            parcel2.writeNoException();
        }
        return true;
    }
}
