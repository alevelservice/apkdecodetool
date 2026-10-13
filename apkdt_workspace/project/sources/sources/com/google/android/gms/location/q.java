package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
public final class q implements Parcelable.Creator<LocationSettingsResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsResult createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Status status = null;
        LocationSettingsStates locationSettingsStates = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                status = (Status) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Status.CREATOR);
            } else if (a3 != 2) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                locationSettingsStates = (LocationSettingsStates) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, LocationSettingsStates.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new LocationSettingsResult(status, locationSettingsStates);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsResult[] newArray(int i2) {
        return new LocationSettingsResult[i2];
    }
}
