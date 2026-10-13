package com.google.android.gms.common.server.response;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.server.converter.zab;
import com.google.android.gms.common.server.response.FastJsonResponse;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class a implements Parcelable.Creator<FastJsonResponse.Field> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        String str2 = null;
        zab zabVar = null;
        int i2 = 0;
        int i3 = 0;
        boolean z = false;
        int i4 = 0;
        boolean z2 = false;
        int i5 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 2:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 3:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 4:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 5:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 7:
                    i5 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 9:
                    zabVar = (zab) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zab.CREATOR);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new FastJsonResponse.Field(i2, i3, z, i4, z2, str, i5, str2, zabVar);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ FastJsonResponse.Field[] newArray(int i2) {
        return new FastJsonResponse.Field[i2];
    }
}
