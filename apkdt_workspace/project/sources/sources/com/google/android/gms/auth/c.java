package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<AccountChangeEventsRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsRequest createFromParcel(Parcel parcel) {
        int b2 = a.b(parcel);
        int i2 = 0;
        String str = null;
        Account account = null;
        int i3 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = a.a(parcel);
            int a3 = a.a(a2);
            if (a3 == 1) {
                i2 = a.A(parcel, a2);
            } else if (a3 == 2) {
                i3 = a.A(parcel, a2);
            } else if (a3 == 3) {
                str = a.p(parcel, a2);
            } else if (a3 != 4) {
                a.G(parcel, a2);
            } else {
                account = (Account) a.a(parcel, a2, Account.CREATOR);
            }
        }
        a.s(parcel, b2);
        return new AccountChangeEventsRequest(i2, i3, str, account);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEventsRequest[] newArray(int i2) {
        return new AccountChangeEventsRequest[i2];
    }
}
