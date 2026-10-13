package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class k implements Parcelable.Creator<LocationAvailability> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 0;
        zzaj[] zzajVarArr = null;
        int i2 = 1000;
        int i3 = 1;
        int i4 = 1;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 2) {
                i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 3) {
                j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
            } else if (a3 == 4) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                zzajVarArr = (zzaj[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, zzaj.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new LocationAvailability(i2, i3, i4, j2, zzajVarArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationAvailability[] newArray(int i2) {
        return new LocationAvailability[i2];
    }
}
