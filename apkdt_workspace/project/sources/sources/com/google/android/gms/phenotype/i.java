package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class i implements Parcelable.Creator<zzi> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        String str2 = null;
        byte[] bArr = null;
        long j2 = 0;
        double d2 = 0.0d;
        boolean z = false;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 3:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 5:
                    d2 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, a2);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 7:
                    bArr = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
                    break;
                case 8:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 9:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzi(str, j2, z, d2, str2, bArr, i2, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzi[] newArray(int i2) {
        return new zzi[i2];
    }
}
