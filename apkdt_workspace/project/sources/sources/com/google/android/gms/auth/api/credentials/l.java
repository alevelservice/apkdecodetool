package com.google.android.gms.auth.api.credentials;

import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class l implements Parcelable.Creator<HintRequest> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        CredentialPickerConfig credentialPickerConfig = null;
        String[] strArr = null;
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
                        credentialPickerConfig = (CredentialPickerConfig) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, CredentialPickerConfig.CREATOR);
                        break;
                    case 2:
                        z = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                        break;
                    case 3:
                        z2 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                        break;
                    case 4:
                        strArr = com.google.android.gms.common.internal.safeparcel.a.q(parcel, a2);
                        break;
                    case 5:
                        z3 = com.google.android.gms.common.internal.safeparcel.a.t(parcel, a2);
                        break;
                    case 6:
                        str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                        break;
                    case 7:
                        str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
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
        return new HintRequest(i2, credentialPickerConfig, z, z2, strArr, z3, str, str2);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ HintRequest[] newArray(int i2) {
        return new HintRequest[i2];
    }
}
