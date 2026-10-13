package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<ProxyResponse> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyResponse createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        PendingIntent pendingIntent = null;
        Bundle bundle = null;
        byte[] bArr = null;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i3 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 2) {
                pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, PendingIntent.CREATOR);
            } else if (a3 == 3) {
                i4 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 == 4) {
                bundle = com.google.android.gms.common.internal.safeparcel.a.f(parcel, a2);
            } else if (a3 == 5) {
                bArr = com.google.android.gms.common.internal.safeparcel.a.g(parcel, a2);
            } else if (a3 != 1000) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new ProxyResponse(i2, i3, pendingIntent, i4, bundle, bArr);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ ProxyResponse[] newArray(int i2) {
        return new ProxyResponse[i2];
    }
}
