package com.google.android.gms.common.server;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class a implements Parcelable.Creator<FavaDiagnosticsEntity> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FavaDiagnosticsEntity createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int i2 = 0;
        String str = null;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 2) {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new FavaDiagnosticsEntity(i2, str, i3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FavaDiagnosticsEntity[] newArray(int i2) {
        return new FavaDiagnosticsEntity[i2];
    }
}
