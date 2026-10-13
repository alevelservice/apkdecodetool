package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public abstract class zzajg extends zzfm implements zzajd {
    public zzajg() {
        super("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
    }

    public static zzajd zzz(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.mediation.client.IAdapterCreator");
        if (queryLocalInterface instanceof zzajd) {
            return (zzajd) queryLocalInterface;
        }
        return new zzajf(iBinder);
    }

    @Override // com.google.android.gms.internal.ads.zzfm
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zzaji zzcz = zzcz(parcel.readString());
            parcel2.writeNoException();
            tg1.a(parcel2, zzcz);
        } else if (i2 == 2) {
            boolean zzda = zzda(parcel.readString());
            parcel2.writeNoException();
            tg1.a(parcel2, zzda);
        } else {
            if (i2 != 3) {
                return false;
            }
            zzalj zzdb = zzdb(parcel.readString());
            parcel2.writeNoException();
            tg1.a(parcel2, zzdb);
        }
        return true;
    }
}
