package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzvt extends zzfm implements zzvu {
    public zzvt() {
        super("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                initialize();
                parcel2.writeNoException();
                return true;
            case 2:
                setAppVolume(parcel.readFloat());
                parcel2.writeNoException();
                return true;
            case 3:
                zzby(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 4:
                setAppMuted(tg1.a(parcel));
                parcel2.writeNoException();
                return true;
            case 5:
                zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                return true;
            case 6:
                zzb(parcel.readString(), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 7:
                float zzoo = zzoo();
                parcel2.writeNoException();
                parcel2.writeFloat(zzoo);
                return true;
            case 8:
                boolean zzop = zzop();
                parcel2.writeNoException();
                tg1.a(parcel2, zzop);
                return true;
            case 9:
                String versionString = getVersionString();
                parcel2.writeNoException();
                parcel2.writeString(versionString);
                return true;
            case 10:
                zzbz(parcel.readString());
                parcel2.writeNoException();
                return true;
            case 11:
                zza(zzajg.zzz(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 12:
                zza(zzafd.zzx(parcel.readStrongBinder()));
                parcel2.writeNoException();
                return true;
            case 13:
                List<zzaex> zzoq = zzoq();
                parcel2.writeNoException();
                parcel2.writeTypedList(zzoq);
                return true;
            case 14:
                zza((zzxw) tg1.a(parcel, zzxw.CREATOR));
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
