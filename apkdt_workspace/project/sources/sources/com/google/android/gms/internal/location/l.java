package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class l implements Parcelable.Creator<zzbh> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbh createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        double d2 = 0.0d;
        double d3 = 0.0d;
        String str = null;
        long j2 = 0;
        int i2 = 0;
        short s = 0;
        float f2 = 0.0f;
        int i3 = 0;
        int i4 = -1;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 2:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 3:
                    s = com.google.android.gms.common.internal.safeparcel.a.E(parcel, a2);
                    break;
                case 4:
                    d2 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, a2);
                    break;
                case 5:
                    d3 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, a2);
                    break;
                case 6:
                    f2 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 7:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 8:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 9:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzbh(str, i2, s, d2, d3, f2, j2, i3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzbh[] newArray(int i2) {
        return new zzbh[i2];
    }
}
