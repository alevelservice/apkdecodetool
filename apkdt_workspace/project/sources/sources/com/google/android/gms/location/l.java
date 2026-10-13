package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class l implements Parcelable.Creator<LocationRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 3600000;
        long j3 = 600000;
        long j4 = Long.MAX_VALUE;
        long j5 = 0;
        int i2 = 102;
        boolean z = false;
        int i3 = Integer.MAX_VALUE;
        float f2 = 0.0f;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 2:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 3:
                    j3 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 5:
                    j4 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 6:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 7:
                    f2 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 8:
                    j5 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new LocationRequest(i2, j2, j3, z, j4, i3, f2, j5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LocationRequest[] newArray(int i2) {
        return new LocationRequest[i2];
    }
}
