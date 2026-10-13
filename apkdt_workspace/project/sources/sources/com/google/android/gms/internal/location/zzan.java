package com.google.android.gms.internal.location;

import android.app.PendingIntent;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzan extends zzb implements zzam {
    public zzan() {
        super("com.google.android.gms.location.internal.IGeofencerCallbacks");
    }

    @Override // com.google.android.gms.internal.location.zzb
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            zza(parcel.readInt(), parcel.createStringArray());
        } else if (i2 == 2) {
            zzb(parcel.readInt(), parcel.createStringArray());
        } else {
            if (i2 != 3) {
                return false;
            }
            zza(parcel.readInt(), (PendingIntent) q.a(parcel, PendingIntent.CREATOR));
        }
        return true;
    }
}
