package com.google.android.gms.common.data;

import android.database.CursorWindow;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<DataHolder> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String[] strArr = null;
        CursorWindow[] cursorWindowArr = null;
        Bundle bundle = null;
        int i2 = 0;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                strArr = com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2);
            } else if (a3 == 2) {
                cursorWindowArr = (CursorWindow[]) com.google.android.gms.common.internal.safeparcel.a.b(parcel, a2, CursorWindow.CREATOR);
            } else if (a3 == 3) {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 4) {
                bundle = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
            } else if (a3 != 1000) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        DataHolder dataHolder = new DataHolder(i2, strArr, cursorWindowArr, i3, bundle);
        dataHolder.l();
        return dataHolder;
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ DataHolder[] newArray(int i2) {
        return new DataHolder[i2];
    }
}
