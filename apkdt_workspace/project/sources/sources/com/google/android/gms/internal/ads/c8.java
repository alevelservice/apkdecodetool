package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public final class c8 implements Parcelable.Creator<zzapu> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzapu createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        zztp zztpVar = null;
        String str = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                zztpVar = (zztp) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zztp.CREATOR);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzapu(zztpVar, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzapu[] newArray(int i2) {
        return new zzapu[i2];
    }
}
