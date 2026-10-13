package com.google.android.gms.auth.api.identity;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.identity.BeginSignInRequest;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class c implements Parcelable.Creator<BeginSignInRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        BeginSignInRequest.PasswordRequestOptions passwordRequestOptions = null;
        BeginSignInRequest.GoogleIdTokenRequestOptions googleIdTokenRequestOptions = null;
        String str = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 1) {
                passwordRequestOptions = (BeginSignInRequest.PasswordRequestOptions) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, BeginSignInRequest.PasswordRequestOptions.CREATOR);
            } else if (a3 == 2) {
                googleIdTokenRequestOptions = (BeginSignInRequest.GoogleIdTokenRequestOptions) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, BeginSignInRequest.GoogleIdTokenRequestOptions.CREATOR);
            } else if (a3 != 3) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new BeginSignInRequest(passwordRequestOptions, googleIdTokenRequestOptions, str);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInRequest[] newArray(int i2) {
        return new BeginSignInRequest[i2];
    }
}
