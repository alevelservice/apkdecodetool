package com.google.android.gms.location;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.location.zzb;

/* loaded from: classes.dex */
public abstract class zzv extends zzb implements zzu {
    public zzv() {
        super("com.google.android.gms.location.ILocationCallback");
    }

    public static zzu zzb(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationCallback");
        return queryLocalInterface instanceof zzu ? (zzu) queryLocalInterface : new zzw(iBinder);
    }

    @Override // com.google.android.gms.internal.location.zzb
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            onLocationResult((LocationResult) com.google.android.gms.internal.location.q.a(parcel, LocationResult.CREATOR));
        } else {
            if (i2 != 2) {
                return false;
            }
            onLocationAvailability((LocationAvailability) com.google.android.gms.internal.location.q.a(parcel, LocationAvailability.CREATOR));
        }
        return true;
    }
}
