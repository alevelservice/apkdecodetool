package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class wd implements Parcelable.Creator<zzawv> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzawv createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 == 3) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 4) {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 5) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 != 6) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzawv(str, i2, i3, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzawv[] newArray(int i2) {
        return new zzawv[i2];
    }
}
