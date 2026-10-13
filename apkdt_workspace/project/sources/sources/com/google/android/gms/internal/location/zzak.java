package com.google.android.gms.internal.location;

import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzak extends zzb implements zzaj {
    public zzak() {
        super("com.google.android.gms.location.internal.IFusedLocationProviderCallback");
    }

    @Override // com.google.android.gms.internal.location.zzb
    protected final boolean dispatchTransaction(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        zza((zzad) q.a(parcel, zzad.CREATOR));
        return true;
    }
}
