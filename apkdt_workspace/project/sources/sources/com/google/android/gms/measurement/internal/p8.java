package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class p8 implements Parcelable.Creator<zzjn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjn createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        Long l2 = null;
        Float f2 = null;
        String str2 = null;
        String str3 = null;
        Double d2 = null;
        long j2 = 0;
        int i2 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 3:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 4:
                    l2 = com.google.android.gms.common.internal.safeparcel.a.D(parcel, a2);
                    break;
                case 5:
                    f2 = com.google.android.gms.common.internal.safeparcel.a.y(parcel, a2);
                    break;
                case 6:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 7:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 8:
                    d2 = com.google.android.gms.common.internal.safeparcel.a.w(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzjn(i2, str, j2, l2, f2, str2, str3, d2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzjn[] newArray(int i2) {
        return new zzjn[i2];
    }
}
