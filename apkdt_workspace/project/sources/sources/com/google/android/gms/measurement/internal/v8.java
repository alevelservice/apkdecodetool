package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class v8 implements Parcelable.Creator<zzn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzn createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        long j5 = 0;
        long j6 = 0;
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        Boolean bool = null;
        ArrayList<String> arrayList = null;
        long j7 = -2147483648L;
        boolean z = true;
        boolean z2 = false;
        int i2 = 0;
        boolean z3 = true;
        boolean z4 = true;
        boolean z5 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 4:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 5:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 6:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 7:
                    j3 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 8:
                    str5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 9:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 10:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 11:
                    j7 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 12:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 13:
                    j4 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 14:
                    j5 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 15:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 16:
                    z3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 17:
                    z4 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 18:
                    z5 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 19:
                    str7 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 20:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
                case 21:
                    bool = com.google.android.gms.common.internal.safeparcel.a.u(parcel, a2);
                    break;
                case 22:
                    j6 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 23:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzn(str, str2, str3, str4, j2, j3, str5, z, z2, j7, str6, j4, j5, i2, z3, z4, z5, str7, bool, j6, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzn[] newArray(int i2) {
        return new zzn[i2];
    }
}
