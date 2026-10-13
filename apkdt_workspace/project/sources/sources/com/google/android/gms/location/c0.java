package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class c0 implements Parcelable.Creator<zzj> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 50;
        long j3 = Long.MAX_VALUE;
        boolean z = true;
        float f2 = 0.0f;
        int i2 = Integer.MAX_VALUE;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 == 2) {
                j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
            } else if (a3 == 3) {
                f2 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
            } else if (a3 == 4) {
                j3 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
            } else if (a3 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzj(z, j2, f2, j3, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzj[] newArray(int i2) {
        return new zzj[i2];
    }
}
