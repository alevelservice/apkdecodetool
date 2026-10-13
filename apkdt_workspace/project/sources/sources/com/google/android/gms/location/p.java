package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class p implements Parcelable.Creator<LocationSettingsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsRequest createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean z = false;
        ArrayList arrayList = null;
        zzae zzaeVar = null;
        boolean z2 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2, LocationRequest.CREATOR);
            } else if (a3 == 2) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 == 3) {
                z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                zzaeVar = (zzae) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzae.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new LocationSettingsRequest(arrayList, z, z2, zzaeVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsRequest[] newArray(int i2) {
        return new LocationSettingsRequest[i2];
    }
}
