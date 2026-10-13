package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "FusedLocationProviderResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzad extends AbstractSafeParcelable implements com.google.android.gms.common.api.m {
    public static final Parcelable.Creator<zzad> CREATOR;

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getStatus", id = 1)
    private final Status f11695e;

    static {
        new zzad(Status.f4988i);
        CREATOR = new c();
    }

    @SafeParcelable.Constructor
    public zzad(@SafeParcelable.Param(id = 1) Status status) {
        this.f11695e = status;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status i() {
        return this.f11695e;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable) i(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
