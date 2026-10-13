package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class e implements Parcelable.Creator<zzl> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        HashSet hashSet = new HashSet();
        int i2 = 0;
        ArrayList arrayList = null;
        zzo zzoVar = null;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                hashSet.add(1);
            } else if (a3 == 2) {
                arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2, zzr.CREATOR);
                hashSet.add(2);
            } else if (a3 == 3) {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
                hashSet.add(3);
            } else if (a3 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                zzoVar = (zzo) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzo.CREATOR);
                hashSet.add(4);
            }
        }
        if (parcel.dataPosition() == b2) {
            return new zzl(hashSet, i2, arrayList, i3, zzoVar);
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("Overread allowed size end=");
        sb.append(b2);
        throw new a.C0088a(sb.toString(), parcel);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzl[] newArray(int i2) {
        return new zzl[i2];
    }
}
