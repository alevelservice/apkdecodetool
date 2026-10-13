package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class k implements Parcelable.Creator<zzai> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzai createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        zzah zzahVar = null;
        String str2 = null;
        long j2 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 == 3) {
                zzahVar = (zzah) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzah.CREATOR);
            } else if (a3 == 4) {
                str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzai(str, zzahVar, str2, j2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzai[] newArray(int i2) {
        return new zzai[i2];
    }
}
