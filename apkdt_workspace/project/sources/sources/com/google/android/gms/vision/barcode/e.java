package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.barcode.Barcode;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class e implements Parcelable.Creator<Barcode.CalendarDateTime> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.CalendarDateTime createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        int i5 = 0;
        int i6 = 0;
        int i7 = 0;
        boolean z = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 3:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 4:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 5:
                    i5 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 6:
                    i6 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 7:
                    i7 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 8:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 9:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Barcode.CalendarDateTime(i2, i3, i4, i5, i6, i7, z, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.CalendarDateTime[] newArray(int i2) {
        return new Barcode.CalendarDateTime[i2];
    }
}
