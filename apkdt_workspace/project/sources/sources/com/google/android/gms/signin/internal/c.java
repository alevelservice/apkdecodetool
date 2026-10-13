package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<zai> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zai createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        int i2 = 0;
        ResolveAccountRequest resolveAccountRequest = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            } else if (a3 != 2) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                resolveAccountRequest = (ResolveAccountRequest) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, ResolveAccountRequest.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new zai(i2, resolveAccountRequest);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zai[] newArray(int i2) {
        return new zai[i2];
    }
}
