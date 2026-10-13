package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzqv extends zzfm implements zzqs {
    public zzqv() {
        super("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzqz zzqyVar;
        if (i2 == 2) {
            zzve zzmc = zzmc();
            parcel2.writeNoException();
            tg1.a(parcel2, zzmc);
            return true;
        }
        if (i2 != 3) {
            return false;
        }
        IBinder readStrongBinder = parcel.readStrongBinder();
        if (readStrongBinder == null) {
            zzqyVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAdPresentationCallback");
            if (queryLocalInterface instanceof zzqz) {
                zzqyVar = (zzqz) queryLocalInterface;
            } else {
                zzqyVar = new zzqy(readStrongBinder);
            }
        }
        zza(zzqyVar);
        parcel2.writeNoException();
        return true;
    }
}
