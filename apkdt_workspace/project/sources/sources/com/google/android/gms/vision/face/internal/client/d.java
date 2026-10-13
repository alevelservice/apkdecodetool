package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class d implements Parcelable.Creator<LandmarkParcel> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LandmarkParcel createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        float f2 = 0.0f;
        int i2 = 0;
        float f3 = 0.0f;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 2) {
                f2 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
            } else if (a3 == 3) {
                f3 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
            } else if (a3 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new LandmarkParcel(i2, f2, f3, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ LandmarkParcel[] newArray(int i2) {
        return new LandmarkParcel[i2];
    }
}
