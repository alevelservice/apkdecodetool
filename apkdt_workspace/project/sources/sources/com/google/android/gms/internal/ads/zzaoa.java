package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzaoa extends zzfm implements zzaob {
    public zzaoa() {
        super("com.google.android.gms.ads.internal.request.IAdRequestService");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            zzaoc zzaocVar = null;
            zzaoe zzaoeVar = null;
            zzaoe zzaoeVar2 = null;
            if (i2 == 2) {
                zzanv zzanvVar = (zzanv) tg1.a(parcel, zzanv.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.request.IAdResponseListener");
                    if (queryLocalInterface instanceof zzaoc) {
                        zzaocVar = (zzaoc) queryLocalInterface;
                    } else {
                        zzaocVar = new zzaof(readStrongBinder);
                    }
                }
                zza(zzanvVar, zzaocVar);
                parcel2.writeNoException();
            } else if (i2 == 4) {
                zzaok zzaokVar = (zzaok) tg1.a(parcel, zzaok.CREATOR);
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface2 instanceof zzaoe) {
                        zzaoeVar2 = (zzaoe) queryLocalInterface2;
                    } else {
                        zzaoeVar2 = new zzaog(readStrongBinder2);
                    }
                }
                zza(zzaokVar, zzaoeVar2);
                parcel2.writeNoException();
            } else {
                if (i2 != 5) {
                    return false;
                }
                zzaok zzaokVar2 = (zzaok) tg1.a(parcel, zzaok.CREATOR);
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    IInterface queryLocalInterface3 = readStrongBinder3.queryLocalInterface("com.google.android.gms.ads.internal.request.INonagonStreamingResponseListener");
                    if (queryLocalInterface3 instanceof zzaoe) {
                        zzaoeVar = (zzaoe) queryLocalInterface3;
                    } else {
                        zzaoeVar = new zzaog(readStrongBinder3);
                    }
                }
                zzb(zzaokVar2, zzaoeVar);
                parcel2.writeNoException();
            }
        } else {
            zzanx zza = zza((zzanv) tg1.a(parcel, zzanv.CREATOR));
            parcel2.writeNoException();
            tg1.b(parcel2, zza);
        }
        return true;
    }
}
