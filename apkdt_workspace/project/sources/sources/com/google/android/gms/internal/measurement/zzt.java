package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;

/* loaded from: classes.dex */
public abstract class zzt extends zza implements zzq {
    public zzt() {
        super("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
    }

    @Override // com.google.android.gms.internal.measurement.zza
    protected final boolean zza(int i2, Parcel parcel, Parcel parcel2, int i3) {
        if (i2 == 1) {
            onEvent(parcel.readString(), parcel.readString(), (Bundle) d2.a(parcel, Bundle.CREATOR), parcel.readLong());
            parcel2.writeNoException();
        } else {
            if (i2 != 2) {
                return false;
            }
            int id = id();
            parcel2.writeNoException();
            parcel2.writeInt(id);
        }
        return true;
    }
}
