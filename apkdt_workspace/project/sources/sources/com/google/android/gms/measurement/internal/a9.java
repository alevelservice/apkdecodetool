package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class a9 implements Parcelable.Creator<zzq> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzq createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 0;
        long j3 = 0;
        long j4 = 0;
        String str = null;
        String str2 = null;
        zzjn zzjnVar = null;
        String str3 = null;
        zzai zzaiVar = null;
        zzai zzaiVar2 = null;
        zzai zzaiVar3 = null;
        boolean z = false;
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
                    zzjnVar = (zzjn) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzjn.CREATOR);
                    break;
                case 5:
                    j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 6:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 7:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 8:
                    zzaiVar = (zzai) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzai.CREATOR);
                    break;
                case 9:
                    j3 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 10:
                    zzaiVar2 = (zzai) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzai.CREATOR);
                    break;
                case 11:
                    j4 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
                    break;
                case 12:
                    zzaiVar3 = (zzai) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzai.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzq(str, str2, zzjnVar, j2, z, str3, zzaiVar, j3, zzaiVar2, j4, zzaiVar3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzq[] newArray(int i2) {
        return new zzq[i2];
    }
}
