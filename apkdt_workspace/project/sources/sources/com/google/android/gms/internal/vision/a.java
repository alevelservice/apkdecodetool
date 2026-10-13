package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
/* loaded from: classes.dex */
public final class a implements Parcelable.Creator<zzac> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzac createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        zzaj[] zzajVarArr = null;
        zzw zzwVar = null;
        zzw zzwVar2 = null;
        zzw zzwVar3 = null;
        String str = null;
        String str2 = null;
        float f2 = 0.0f;
        int i2 = 0;
        boolean z = false;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    zzajVarArr = (zzaj[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, zzaj.CREATOR);
                    break;
                case 3:
                    zzwVar = (zzw) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzw.CREATOR);
                    break;
                case 4:
                    zzwVar2 = (zzw) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzw.CREATOR);
                    break;
                case 5:
                    zzwVar3 = (zzw) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzw.CREATOR);
                    break;
                case 6:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 7:
                    f2 = com.google.android.gms.common.internal.safeparcel.a.x(parcel, a2);
                    break;
                case 8:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 9:
                    i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 10:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 11:
                    i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                case 12:
                    i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzac(zzajVarArr, zzwVar, zzwVar2, zzwVar3, str, f2, str2, i2, z, i3, i4);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzac[] newArray(int i2) {
        return new zzac[i2];
    }
}
