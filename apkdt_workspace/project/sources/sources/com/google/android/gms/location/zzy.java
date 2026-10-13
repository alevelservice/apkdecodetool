package com.google.android.gms.location;

import android.location.Location;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.location.zzb;

/* loaded from: classes.dex */
public abstract class zzy extends zzb implements zzx {
    public zzy() {
        super("com.google.android.gms.location.ILocationListener");
    }

    public static zzx zzc(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.location.ILocationListener");
        return queryLocalInterface instanceof zzx ? (zzx) queryLocalInterface : new zzz(iBinder);
    }

    @Override // com.google.android.gms.internal.location.zzb
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        onLocationChanged((Location) com.google.android.gms.internal.location.q.a(parcel, Location.CREATOR));
        return true;
    }
}
