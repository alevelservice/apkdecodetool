package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class d implements Parcelable.Creator<zak> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        ConnectionResult connectionResult = null;
        int i2 = 0;
        ResolveAccountResponse resolveAccountResponse = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 2) {
                connectionResult = (ConnectionResult) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, ConnectionResult.CREATOR);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                resolveAccountResponse = (ResolveAccountResponse) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, ResolveAccountResponse.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zak(i2, connectionResult, resolveAccountResponse);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zak[] newArray(int i2) {
        return new zak[i2];
    }
}
