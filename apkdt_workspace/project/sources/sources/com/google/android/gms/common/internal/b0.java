package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class b0 implements Parcelable.Creator<ResolveAccountResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        IBinder iBinder = null;
        ConnectionResult connectionResult = null;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 2) {
                iBinder = com.google.android.gms.common.internal.safeparcel.a.z(parcel, a2);
            } else if (a3 == 3) {
                connectionResult = (ConnectionResult) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, ConnectionResult.CREATOR);
            } else if (a3 == 4) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 != 5) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new ResolveAccountResponse(i2, iBinder, connectionResult, z, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ResolveAccountResponse[] newArray(int i2) {
        return new ResolveAccountResponse[i2];
    }
}
