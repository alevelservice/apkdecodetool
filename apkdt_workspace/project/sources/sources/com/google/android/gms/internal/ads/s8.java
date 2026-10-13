package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class s8 implements Parcelable.Creator<zzarn> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzarn createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        String str2 = null;
        ArrayList<String> arrayList = null;
        ArrayList<String> arrayList2 = null;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        boolean z4 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 2:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 3:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 4:
                    z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 5:
                    z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 6:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                case 7:
                    z3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 8:
                    z4 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                    break;
                case 9:
                    arrayList2 = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
                    break;
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzarn(str, str2, z, z2, arrayList, z3, z4, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzarn[] newArray(int i2) {
        return new zzarn[i2];
    }
}
