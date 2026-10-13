package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "LocationSettingsResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class LocationSettingsResult extends AbstractSafeParcelable implements com.google.android.gms.common.api.m {
    public static final Parcelable.Creator<LocationSettingsResult> CREATOR = new q();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getStatus", id = 1)
    private final Status f12689e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getLocationSettingsStates", id = 2)
    private final LocationSettingsStates f12690f;

    public LocationSettingsResult(Status status) {
        this(status, null);
    }

    @SafeParcelable.Constructor
    public LocationSettingsResult(@SafeParcelable.Param(id = 1) Status status, @SafeParcelable.Param(id = 2) LocationSettingsStates locationSettingsStates) {
        this.f12689e = status;
        this.f12690f = locationSettingsStates;
    }

    @Override // com.google.android.gms.common.api.m
    public final Status i() {
        return this.f12689e;
    }

    public final LocationSettingsStates j() {
        return this.f12690f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable) i(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) j(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
