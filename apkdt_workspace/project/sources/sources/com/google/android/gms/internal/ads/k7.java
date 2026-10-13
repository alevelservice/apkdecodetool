package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class k7 implements Parcelable.Creator<zzaom> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaom createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            if (com.google.android.gms.common.internal.safeparcel.a.a(a2) != 2) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzaom(str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzaom[] newArray(int i2) {
        return new zzaom[i2];
    }
}
