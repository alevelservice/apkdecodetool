package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class d implements Parcelable.Creator<BeginSignInRequest.GoogleIdTokenRequestOptions> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest.GoogleIdTokenRequestOptions createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        boolean z = false;
        String str2 = null;
        boolean z2 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            } else if (a3 == 2) {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 == 3) {
                str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 != 4) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new BeginSignInRequest.GoogleIdTokenRequestOptions(z, str, str2, z2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest.GoogleIdTokenRequestOptions[] newArray(int i2) {
        return new BeginSignInRequest.GoogleIdTokenRequestOptions[i2];
    }
}
