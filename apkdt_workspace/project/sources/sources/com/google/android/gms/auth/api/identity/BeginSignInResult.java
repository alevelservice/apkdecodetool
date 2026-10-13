package com.google.android.gms.auth.api.identity;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "BeginSignInResultCreator")
/* loaded from: classes.dex */
public final class BeginSignInResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<BeginSignInResult> CREATOR = new e();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getPendingIntent", id = 1)
    private final PendingIntent f4791e;

    @SafeParcelable.Constructor
    public BeginSignInResult(@SafeParcelable.Param(id = 1) PendingIntent pendingIntent) {
        m.a(pendingIntent);
        this.f4791e = pendingIntent;
    }

    public final PendingIntent j() {
        return this.f4791e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable) j(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
