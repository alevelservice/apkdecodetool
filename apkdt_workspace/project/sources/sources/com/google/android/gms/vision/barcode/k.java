package com.google.android.gms.vision.barcode;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.vision.barcode.Barcode;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class k implements Parcelable.Creator<Barcode.GeoPoint> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.GeoPoint createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        double d2 = 0.0d;
        double d3 = 0.0d;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                d2 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, a2);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                d3 = com.google.android.gms.common.internal.safeparcel.a.v(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Barcode.GeoPoint(d2, d3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Barcode.GeoPoint[] newArray(int i2) {
        return new Barcode.GeoPoint[i2];
    }
}
