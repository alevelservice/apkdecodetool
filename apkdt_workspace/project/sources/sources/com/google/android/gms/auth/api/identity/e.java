package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
/* loaded from: classes.dex */
public final class e implements Parcelable.Creator<BeginSignInResult> {
    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInResult createFromParcel(Parcel parcel) {
        int b2 = com.google.android.gms.common.internal.safeparcel.a.b(parcel);
        PendingIntent pendingIntent = null;
        while (parcel.dataPosition() < b2) {
            int a2 = com.google.android.gms.common.internal.safeparcel.a.a(parcel);
            if (com.google.android.gms.common.internal.safeparcel.a.a(a2) != 1) {
                com.google.android.gms.common.internal.safeparcel.a.G(parcel, a2);
            } else {
                pendingIntent = (PendingIntent) com.google.android.gms.common.internal.safeparcel.a.a(parcel, a2, PendingIntent.CREATOR);
            }
        }
        com.google.android.gms.common.internal.safeparcel.a.s(parcel, b2);
        return new BeginSignInResult(pendingIntent);
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ BeginSignInResult[] newArray(int i2) {
        return new BeginSignInResult[i2];
    }
}
