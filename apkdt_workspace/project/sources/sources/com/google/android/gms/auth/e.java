package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.a;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class e implements Parcelable.Creator<TokenData> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData createFromParcel(Parcel parcel) {
        int b2 = a.b(parcel);
        String str = null;
        Long l2 = null;
        ArrayList<String> arrayList = null;
        String str2 = null;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = a.a(parcel);
            switch (a.a(a2)) {
                case 1:
                    i2 = a.A(parcel, a2);
                    break;
                case 2:
                    str = a.p(parcel, a2);
                    break;
                case 3:
                    l2 = a.D(parcel, a2);
                    break;
                case 4:
                    z = a.t(parcel, a2);
                    break;
                case 5:
                    z2 = a.t(parcel, a2);
                    break;
                case 6:
                    arrayList = a.r(parcel, a2);
                    break;
                case 7:
                    str2 = a.p(parcel, a2);
                    break;
                default:
                    a.G(parcel, a2);
                    break;
            }
        }
        a.s(parcel, b2);
        return new TokenData(i2, str, l2, z, z2, arrayList, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ TokenData[] newArray(int i2) {
        return new TokenData[i2];
    }
}
