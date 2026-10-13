package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ClientIdentity;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class y implements Parcelable.Creator<ActivityTransitionRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionRequest createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        ArrayList arrayList = null;
        String str = null;
        ArrayList arrayList2 = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2, ActivityTransition.CREATOR);
            } else if (a3 == 2) {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                arrayList2 = com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2, ClientIdentity.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new ActivityTransitionRequest(arrayList, str, arrayList2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionRequest[] newArray(int i2) {
        return new ActivityTransitionRequest[i2];
    }
}
