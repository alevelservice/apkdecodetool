package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.barcode.Barcode;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class b implements Parcelable.Creator<Barcode.Address> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.Address createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int i2 = 0;
        String[] strArr = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                strArr = com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Barcode.Address(i2, strArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.Address[] newArray(int i2) {
        return new Barcode.Address[i2];
    }
}
