package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;

/* loaded from: classes.dex */
public final class b implements Parcelable.Creator<AccountChangeEvent> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEvent createFromParcel(Parcel parcel) {
        int b2 = a.b(parcel);
        String str = null;
        String str2 = null;
        long j2 = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = a.a(parcel);
            switch (a.a(a2)) {
                case 1:
                    i2 = a.A(parcel, a2);
                    break;
                case 2:
                    j2 = a.C(parcel, a2);
                    break;
                case 3:
                    str = a.p(parcel, a2);
                    break;
                case 4:
                    i3 = a.A(parcel, a2);
                    break;
                case 5:
                    i4 = a.A(parcel, a2);
                    break;
                case 6:
                    str2 = a.p(parcel, a2);
                    break;
                default:
                    a.G(parcel, a2);
                    break;
            }
        }
        a.s(parcel, b2);
        return new AccountChangeEvent(i2, j2, str, i3, i4, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ AccountChangeEvent[] newArray(int i2) {
        return new AccountChangeEvent[i2];
    }
}
