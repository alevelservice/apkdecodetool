package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class l8 implements Parcelable.Creator<zzw> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzw createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        float f2 = 0.0f;
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
                i5 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 != 6) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                f2 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzw(i2, i3, i4, i5, f2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzw[] newArray(int i2) {
        return new zzw[i2];
    }
}
