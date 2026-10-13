package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<zzag> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzag createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            com.google.android.gms.common.internal.safeparcel.a.a(a2);
            com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzag();
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzag[] newArray(int i2) {
        return new zzag[i2];
    }
}
