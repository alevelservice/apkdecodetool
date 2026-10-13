package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class k1 implements Parcelable.Creator<zzaex> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaex createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean z = false;
        String str = null;
        String str2 = null;
        int i2 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 == 2) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 == 3) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzaex(str, z, i2, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaex[] newArray(int i2) {
        return new zzaex[i2];
    }
}
