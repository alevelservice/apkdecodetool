package com.google.android.gms.auth.api.signin;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class j implements Parcelable.Creator<SignInAccount> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = "";
        GoogleSignInAccount googleSignInAccount = null;
        String str2 = "";
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 == 4) {
                str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            } else if (a3 == 7) {
                googleSignInAccount = (GoogleSignInAccount) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, GoogleSignInAccount.CREATOR);
            } else if (a3 != 8) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new SignInAccount(str, googleSignInAccount, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ SignInAccount[] newArray(int i2) {
        return new SignInAccount[i2];
    }
}
