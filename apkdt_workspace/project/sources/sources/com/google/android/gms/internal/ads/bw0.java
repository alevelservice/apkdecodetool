package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
/* loaded from: classes.dex */
public final class bw0 implements Parcelable.Creator<zzcyt> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyt createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int i2 = 0;
        byte[] bArr = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 != 2) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                bArr = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzcyt(i2, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzcyt[] newArray(int i2) {
        return new zzcyt[i2];
    }
}
