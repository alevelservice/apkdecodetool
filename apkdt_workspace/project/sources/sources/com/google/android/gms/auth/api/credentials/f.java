package com.google.android.gms.auth.api.credentials;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class f implements Parcelable.Creator<Credential> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        String str = null;
        String str2 = null;
        Uri uri = null;
        ArrayList arrayList = null;
        String str3 = null;
        String str4 = null;
        String str5 = null;
        String str6 = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            switch (com.google.android.gms.common.internal.safeparcel.a.a(a2)) {
                case 1:
                    str = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 2:
                    str2 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 3:
                    uri = (Uri) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, Uri.CREATOR);
                    break;
                case 4:
                    arrayList = com.google.android.gms.common.internal.safeparcel.a.c(parcel, a2, IdToken.CREATOR);
                    break;
                case 5:
                    str3 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 6:
                    str4 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 7:
                case 8:
                default:
                    com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
                    break;
                case 9:
                    str5 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
                case 10:
                    str6 = com.google.android.gms.common.internal.safeparcel.a.p(parcel, a2);
                    break;
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new Credential(str, str2, uri, arrayList, str3, str4, str5, str6);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Credential[] newArray(int i2) {
        return new Credential[i2];
    }
}
