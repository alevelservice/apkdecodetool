package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "LocationSettingsStatesCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class LocationSettingsStates extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsStates> CREATOR = new r();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isGpsUsable", id = 1)
    private final boolean f12691e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isNetworkLocationUsable", id = 2)
    private final boolean f12692f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isBleUsable", id = 3)
    private final boolean f12693g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isGpsPresent", id = 4)
    private final boolean f12694h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isNetworkLocationPresent", id = 5)
    private final boolean f12695i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isBlePresent", id = 6)
    private final boolean f12696j;

    @SafeParcelable.Constructor
    public LocationSettingsStates(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) boolean z2, @SafeParcelable.Param(id = 3) boolean z3, @SafeParcelable.Param(id = 4) boolean z4, @SafeParcelable.Param(id = 5) boolean z5, @SafeParcelable.Param(id = 6) boolean z6) {
        this.f12691e = z;
        this.f12692f = z2;
        this.f12693g = z3;
        this.f12694h = z4;
        this.f12695i = z5;
        this.f12696j = z6;
    }

    public final boolean j() {
        return this.f12696j;
    }

    public final boolean k() {
        return this.f12693g;
    }

    public final boolean l() {
        return this.f12694h;
    }

    public final boolean m() {
        return this.f12691e;
    }

    public final boolean o() {
        return this.f12695i;
    }

    public final boolean p() {
        return this.f12692f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, m());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, p());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, l());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, o());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
