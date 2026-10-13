package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class j8 implements Parcelable.Creator<zzp> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzp createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        long j2 = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 3) {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 4) {
                i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 5) {
                j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
            } else if (a3 != 6) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                i5 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzp(i2, i3, i4, j2, i5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzp[] newArray(int i2) {
        return new zzp[i2];
    }
}
