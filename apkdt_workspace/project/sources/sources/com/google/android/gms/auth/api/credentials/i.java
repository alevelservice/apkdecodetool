package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class i implements Parcelable.Creator<CredentialRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String[] strArr = null;
        CredentialPickerConfig credentialPickerConfig = null;
        CredentialPickerConfig credentialPickerConfig2 = null;
        String str = null;
        String str2 = null;
        int i2 = 0;
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            int a3 = com.google.android.gms.common.internal.safeparcel.a.a(a2);
            if (a3 != 1000) {
                switch (a3) {
                    case 1:
                        z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                        break;
                    case 2:
                        strArr = com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2);
                        break;
                    case 3:
                        credentialPickerConfig = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, CredentialPickerConfig.CREATOR);
                        break;
                    case 4:
                        credentialPickerConfig2 = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, CredentialPickerConfig.CREATOR);
                        break;
                    case 5:
                        z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                        break;
                    case 6:
                        str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                        break;
                    case 7:
                        str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                        break;
                    case 8:
                        z3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                        break;
                    default:
                        com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                        break;
                }
            } else {
                i2 = com.google.android.gms.common.internal.safeparcel.a.A(parcel, a2);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new CredentialRequest(i2, z, strArr, credentialPickerConfig, credentialPickerConfig2, z2, str, str2, z3);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ CredentialRequest[] newArray(int i2) {
        return new CredentialRequest[i2];
    }
}
