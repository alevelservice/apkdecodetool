package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzvq extends zzfm implements zzvn {
    public zzvq() {
        super("com.google.android.gms.ads.internal.client.IClientApi");
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        switch (i2) {
            case 1:
                zzve zza = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zztw) tg1.a(parcel, zztw.CREATOR), parcel.readString(), zzajg.zzz(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                tg1.a(parcel2, zza);
                return true;
            case 2:
                zzve zzb = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zztw) tg1.a(parcel, zztw.CREATOR), parcel.readString(), zzajg.zzz(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                tg1.a(parcel2, zzb);
                return true;
            case 3:
                zzux zza2 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzajg.zzz(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                tg1.a(parcel2, zza2);
                return true;
            case 4:
                zzvu zzg = zzg(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                tg1.a(parcel2, zzg);
                return true;
            case 5:
                zzaaw zzc = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                tg1.a(parcel2, zzc);
                return true;
            case 6:
                zzapl zza3 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), zzajg.zzz(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                tg1.a(parcel2, zza3);
                return true;
            case 7:
                zzane zzh = zzh(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                tg1.a(parcel2, zzh);
                return true;
            case 8:
                zzamu zzf = zzf(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                tg1.a(parcel2, zzf);
                return true;
            case 9:
                zzvu zza4 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                tg1.a(parcel2, zza4);
                return true;
            case 10:
                zzve zza5 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zztw) tg1.a(parcel, zztw.CREATOR), parcel.readString(), parcel.readInt());
                parcel2.writeNoException();
                tg1.a(parcel2, zza5);
                return true;
            case 11:
                zzaaz zza6 = zza(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()));
                parcel2.writeNoException();
                tg1.a(parcel2, zza6);
                return true;
            case 12:
                zzaqg zzb2 = zzb(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), parcel.readString(), zzajg.zzz(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                tg1.a(parcel2, zzb2);
                return true;
            case 13:
                zzve zzc2 = zzc(IObjectWrapper.Stub.asInterface(parcel.readStrongBinder()), (zztw) tg1.a(parcel, zztw.CREATOR), parcel.readString(), zzajg.zzz(parcel.readStrongBinder()), parcel.readInt());
                parcel2.writeNoException();
                tg1.a(parcel2, zzc2);
                return true;
            default:
                return false;
        }
    }
}
