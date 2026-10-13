package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.barcode.Barcode;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class i implements Parcelable.Creator<Barcode.DriverLicense> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.DriverLicense createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        String str7 = null;
        String str8 = null;
        String str9 = null;
        String str10 = null;
        String str11 = null;
        String str12 = null;
        String str13 = null;
        String str14 = null;
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
                    str5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 7:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 8:
                    str7 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 9:
                    str8 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 10:
                    str9 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 11:
                    str10 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 12:
                    str11 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 13:
                    str12 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 14:
                    str13 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 15:
                    str14 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Barcode.DriverLicense(str, str2, str3, str4, str5, str6, str7, str8, str9, str10, str11, str12, str13, str14);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.DriverLicense[] newArray(int i2) {
        return new Barcode.DriverLicense[i2];
    }
}
