package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.barcode.Barcode;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class g implements Parcelable.Creator<Barcode.CalendarEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.CalendarEvent createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        String str2 = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        Barcode.CalendarDateTime calendarDateTime = null;
        Barcode.CalendarDateTime calendarDateTime2 = null;
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
                    calendarDateTime = (Barcode.CalendarDateTime) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.CalendarDateTime.CREATOR);
                    break;
                case 8:
                    calendarDateTime2 = (Barcode.CalendarDateTime) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.CalendarDateTime.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Barcode.CalendarEvent(str, str2, str3, str4, str5, calendarDateTime, calendarDateTime2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.CalendarEvent[] newArray(int i2) {
        return new Barcode.CalendarEvent[i2];
    }
}
