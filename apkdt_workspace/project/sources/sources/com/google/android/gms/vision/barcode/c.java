package com.google.android.gms.vision.barcode;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.barcode.Barcode;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<Barcode> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        String str2 = null;
        Point[] pointArr = null;
        Barcode.Email email = null;
        Barcode.Phone phone = null;
        Barcode.Sms sms = null;
        Barcode.WiFi wiFi = null;
        Barcode.UrlBookmark urlBookmark = null;
        Barcode.GeoPoint geoPoint = null;
        Barcode.CalendarEvent calendarEvent = null;
        Barcode.ContactInfo contactInfo = null;
        Barcode.DriverLicense driverLicense = null;
        byte[] bArr = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 3:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 4:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 5:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 6:
                    pointArr = (Point[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, Point.CREATOR);
                    break;
                case 7:
                    email = (Barcode.Email) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.Email.CREATOR);
                    break;
                case 8:
                    phone = (Barcode.Phone) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.Phone.CREATOR);
                    break;
                case 9:
                    sms = (Barcode.Sms) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.Sms.CREATOR);
                    break;
                case 10:
                    wiFi = (Barcode.WiFi) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.WiFi.CREATOR);
                    break;
                case 11:
                    urlBookmark = (Barcode.UrlBookmark) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.UrlBookmark.CREATOR);
                    break;
                case 12:
                    geoPoint = (Barcode.GeoPoint) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.GeoPoint.CREATOR);
                    break;
                case 13:
                    calendarEvent = (Barcode.CalendarEvent) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.CalendarEvent.CREATOR);
                    break;
                case 14:
                    contactInfo = (Barcode.ContactInfo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.ContactInfo.CREATOR);
                    break;
                case 15:
                    driverLicense = (Barcode.DriverLicense) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Barcode.DriverLicense.CREATOR);
                    break;
                case 16:
                    bArr = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Barcode(i2, str, str2, i3, pointArr, email, phone, sms, wiFi, urlBookmark, geoPoint, calendarEvent, contactInfo, driverLicense, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode[] newArray(int i2) {
        return new Barcode[i2];
    }
}
