package com.google.android.gms.common.images;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class d implements Parcelable.Creator<WebImage> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WebImage createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int i2 = 0;
        Uri uri = null;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 2) {
                uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Uri.CREATOR);
            } else if (a3 == 3) {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new WebImage(i2, uri, i3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ WebImage[] newArray(int i2) {
        return new WebImage[i2];
    }
}
