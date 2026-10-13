package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.barcode.Barcode;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class f implements Parcelable.Creator<Barcode.ContactInfo> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.ContactInfo createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Barcode.PersonName personName = null;
        String str = null;
        String str2 = null;
        Barcode.Phone[] phoneArr = null;
        Barcode.Email[] emailArr = null;
        String[] strArr = null;
        Barcode.Address[] addressArr = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    personName = (Barcode.PersonName) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.PersonName.CREATOR);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 5:
                    phoneArr = (Barcode.Phone[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, Barcode.Phone.CREATOR);
                    break;
                case 6:
                    emailArr = (Barcode.Email[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, Barcode.Email.CREATOR);
                    break;
                case 7:
                    strArr = com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2);
                    break;
                case 8:
                    addressArr = (Barcode.Address[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, Barcode.Address.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Barcode.ContactInfo(personName, str, str2, phoneArr, emailArr, strArr, addressArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.ContactInfo[] newArray(int i2) {
        return new Barcode.ContactInfo[i2];
    }
}
