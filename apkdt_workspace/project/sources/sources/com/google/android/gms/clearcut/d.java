package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class d implements Parcelable.Creator<zzc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 0;
        long j3 = 0;
        boolean z = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 == 2) {
                j3 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzc(z, j2, j3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzc[] newArray(int i2) {
        return new zzc[i2];
    }
}
