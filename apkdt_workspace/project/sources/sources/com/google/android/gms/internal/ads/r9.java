package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class r9 implements Parcelable.Creator<zzasr> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzasr createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        String str2 = null;
        zztw zztwVar = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 == 2) {
                str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                zztwVar = (zztw) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zztw.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzasr(str, str2, zztwVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzasr[] newArray(int i2) {
        return new zzasr[i2];
    }
}
