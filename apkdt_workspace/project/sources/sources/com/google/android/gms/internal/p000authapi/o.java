package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.a;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class o implements Parcelable.Creator<zzz> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz createFromParcel(Parcel parcel) {
        int b2 = a.b(parcel);
        Credential credential = null;
        while (parcel.dataPosition() < b2) {
            int a2 = a.a(parcel);
            if (a.a(a2) != 1) {
                a.G(parcel, a2);
            } else {
                credential = (Credential) a.a(parcel, a2, Credential.CREATOR);
            }
        }
        a.s(parcel, b2);
        return new zzz(credential);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ zzz[] newArray(int i2) {
        return new zzz[i2];
    }
}
