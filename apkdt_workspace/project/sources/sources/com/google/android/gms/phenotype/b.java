package com.google.android.gms.phenotype;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator<Configuration> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Configuration createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        zzi[] zziVarArr = null;
        int i2 = 0;
        String[] strArr = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 3) {
                zziVarArr = (zzi[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, zzi.CREATOR);
            } else if (a3 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                strArr = com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Configuration(i2, zziVarArr, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Configuration[] newArray(int i2) {
        return new Configuration[i2];
    }
}
