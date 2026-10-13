package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<zzf> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzf createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        boolean z = false;
        boolean z2 = false;
        float f2 = -1.0f;
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
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 6:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 7:
                    f2 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzf(i2, i3, i4, z, z2, f2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzf[] newArray(int i2) {
        return new zzf[i2];
    }
}
