package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class w implements Parcelable.Creator<ActivityTransitionEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionEvent createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int i2 = 0;
        long j2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 2) {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                j2 = com.google.android.gms.common.internal.safeparcel.a.C(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new ActivityTransitionEvent(i2, i3, j2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ActivityTransitionEvent[] newArray(int i2) {
        return new ActivityTransitionEvent[i2];
    }
}
