package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class d implements Parcelable.Creator<AccountChangeEventsResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsResponse createFromParcel(Parcel parcel) {
        int b2 = a.b(parcel);
        int i2 = 0;
        ArrayList arrayList = null;
        while (parcel.dataPosition() < b2) {
            int a2 = a.a(parcel);
            int a3 = a.a(a2);
            if (a3 == 1) {
                i2 = a.A(parcel, a2);
            } else if (a3 != 2) {
                a.G(parcel, a2);
            } else {
                arrayList = a.c(parcel, a2, AccountChangeEvent.CREATOR);
            }
        }
        a.s(parcel, b2);
        return new AccountChangeEventsResponse(i2, arrayList);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsResponse[] newArray(int i2) {
        return new AccountChangeEventsResponse[i2];
    }
}
