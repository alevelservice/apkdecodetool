package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class f implements Parcelable.Creator<zzo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        ArrayList<String> arrayList3 = null;
        ArrayList<String> arrayList4 = null;
        ArrayList<String> arrayList5 = null;
        int i2 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 2:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 3:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 4:
                    arrayList3 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 5:
                    arrayList4 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 6:
                    arrayList5 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzo(i2, arrayList, arrayList2, arrayList3, arrayList4, arrayList5);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzo[] newArray(int i2) {
        return new zzo[i2];
    }
}
