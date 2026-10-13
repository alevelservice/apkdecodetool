package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzo extends zza implements zzp {
    public zzo() {
        super("com.google.android.gms.measurement.api.internal.IBundleReceiver");
    }

    @Override // com.google.android.gms.internal.measurement.zza
    protected final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 != 1) {
            return false;
        }
        zzb((Bundle) d2.a(parcel, Bundle.CREATOR));
        parcel2.writeNoException();
        return true;
    }
}
