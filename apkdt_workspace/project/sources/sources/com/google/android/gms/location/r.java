package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class r implements Parcelable.Creator<LocationSettingsStates> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsStates createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        boolean z5 = false;
        boolean z6 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 2:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 3:
                    z3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 4:
                    z4 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 5:
                    z5 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 6:
                    z6 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new LocationSettingsStates(z, z2, z3, z4, z5, z6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationSettingsStates[] newArray(int i2) {
        return new LocationSettingsStates[i2];
    }
}
