package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.barcode.Barcode;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class h implements Parcelable.Creator<Barcode.Email> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.Email createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        int i2 = 0;
        String str2 = null;
        String str3 = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 3) {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 == 4) {
                str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                str3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Barcode.Email(i2, str, str2, str3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.Email[] newArray(int i2) {
        return new Barcode.Email[i2];
    }
}
