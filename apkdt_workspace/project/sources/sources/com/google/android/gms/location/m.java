package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.List;

/* loaded from: classes.dex */
public final class m implements Parcelable.Creator<LocationResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        List<Location> list = LocationResult.f12680f;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            if (com.google.android.gms.common.internal.safeparcel.a.a(a2) != 1) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                list = com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2, Location.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new LocationResult(list);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationResult[] newArray(int i2) {
        return new LocationResult[i2];
    }
}
