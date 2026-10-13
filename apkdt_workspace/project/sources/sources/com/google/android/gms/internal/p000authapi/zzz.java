package com.google.android.gms.internal.p000authapi;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.auth.api.credentials.Credential;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

/* compiled from: com.google.android.gms:play-services-auth@@18.0.0 */
@SafeParcelable.Class(creator = "SaveRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzz extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzz> CREATOR = new o();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getCredential", id = 1)
    private final Credential f11325e;

    @SafeParcelable.Constructor
    public zzz(@SafeParcelable.Param(id = 1) Credential credential) {
        this.f11325e = credential;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = b.a(parcel);
        b.a(parcel, 1, (Parcelable) this.f11325e, i2, false);
        b.a(parcel, a2);
    }
}
