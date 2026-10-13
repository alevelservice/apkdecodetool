package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class e7 implements Parcelable.Creator<zzanz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzanz createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        boolean z = false;
        ArrayList<String> arrayList = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 2) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                arrayList = com.google.android.gms.common.internal.safeparcel.a.r(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zzanz(z, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzanz[] newArray(int i2) {
        return new zzanz[i2];
    }
}
