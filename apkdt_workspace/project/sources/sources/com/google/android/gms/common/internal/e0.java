package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.Feature;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class e0 implements Parcelable.Creator<zza> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zza createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        Bundle bundle = null;
        Feature[] featureArr = null;
        int i2 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                bundle = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
            } else if (a3 == 2) {
                featureArr = (Feature[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, Feature.CREATOR);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zza(bundle, featureArr, i2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zza[] newArray(int i2) {
        return new zza[i2];
    }
}
