package com.google.android.gms.internal.location;

import android.os.Parcel;
import com.google.android.gms.location.LocationSettingsResult;

/* loaded from: classes.dex */
public abstract class zzar extends zzb implements zzaq {
    public zzar() {
        super("com.google.android.gms.location.internal.ISettingsCallbacks");
    }

    @Override // com.google.android.gms.internal.location.zzb
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        zza((LocationSettingsResult) q.a(parcel, LocationSettingsResult.CREATOR));
        return true;
    }
}
