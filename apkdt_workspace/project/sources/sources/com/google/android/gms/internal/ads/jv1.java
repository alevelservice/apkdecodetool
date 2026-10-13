package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class jv1 implements Parcelable.Creator<zzyc> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzyc createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 == 3) {
                z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                z3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzyc(z, z2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzyc[] newArray(int i2) {
        return new zzyc[i2];
    }
}
