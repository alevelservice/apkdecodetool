package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.location.zzj;
import java.util.List;

/* loaded from: classes.dex */
public final class t implements Parcelable.Creator<zzm> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzm createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        zzj zzjVar = zzm.f11724i;
        List<ClientIdentity> list = zzm.f11723h;
        String str = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                zzjVar = (zzj) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, zzj.CREATOR);
            } else if (a3 == 2) {
                list = com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2, ClientIdentity.CREATOR);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzm(zzjVar, list, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzm[] newArray(int i2) {
        return new zzm[i2];
    }
}
