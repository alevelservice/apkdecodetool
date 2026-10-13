package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class z implements Parcelable.Creator<ActivityTransitionResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionResult createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        ArrayList arrayList = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            if (com.google.android.gms.common.internal.safeparcel.a.a(a2) != 1) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2, ActivityTransitionEvent.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new ActivityTransitionResult(arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionResult[] newArray(int i2) {
        return new ActivityTransitionResult[i2];
    }
}
