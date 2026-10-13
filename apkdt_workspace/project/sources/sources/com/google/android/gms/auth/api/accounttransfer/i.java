package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class i implements Parcelable.Creator<DeviceMetaData> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DeviceMetaData createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 0;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 2) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 == 3) {
                j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
            } else if (a3 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new DeviceMetaData(i2, z, j2, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DeviceMetaData[] newArray(int i2) {
        return new DeviceMetaData[i2];
    }
}
