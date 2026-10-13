package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.ads.formats.PublisherAdViewOptions;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzva extends zzfm implements zzux {
    public zzva() {
        super("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        zzur zzurVar = null;
        zzvs zzvsVar = null;
        switch (i2) {
            case 1:
                zzuw zzon = zzon();
                parcel2.writeNoException();
                tg1.a(parcel2, zzon);
                return true;
            case 2:
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdListener");
                    if (queryLocalInterface instanceof zzur) {
                        zzurVar = (zzur) queryLocalInterface;
                    } else {
                        zzurVar = new zzut(readStrongBinder);
                    }
                }
                zzb(zzurVar);
                parcel2.writeNoException();
                return true;
            case 3:
                zza(zzabr.zzp(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 4:
                zza(zzabw.zzq(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 5:
                zza(parcel.readString(), zzacc.zzs(parcel.readStrongBinder()), zzabx.zzr(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 6:
                zza((zzaai) tg1.a(parcel, zzaai.CREATOR));
                parcel2.writeNoException();
                return true;
            case 7:
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("com.google.android.gms.ads.internal.client.ICorrelationIdProvider");
                    if (queryLocalInterface2 instanceof zzvs) {
                        zzvsVar = (zzvs) queryLocalInterface2;
                    } else {
                        zzvsVar = new zzvr(readStrongBinder2);
                    }
                }
                zzb(zzvsVar);
                parcel2.writeNoException();
                return true;
            case 8:
                zza(zzacd.zzt(parcel.readStrongBinder()), (zztw) tg1.a(parcel, zztw.CREATOR));
                parcel2.writeNoException();
                return true;
            case 9:
                zza((PublisherAdViewOptions) tg1.a(parcel, PublisherAdViewOptions.CREATOR));
                parcel2.writeNoException();
                return true;
            case 10:
                zza(zzaci.zzu(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 11:
            case 12:
            default:
                return false;
            case 13:
                zza((zzafj) tg1.a(parcel, zzafj.CREATOR));
                parcel2.writeNoException();
                return true;
            case 14:
                zza(zzafs.zzy(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
        }
    }
}
