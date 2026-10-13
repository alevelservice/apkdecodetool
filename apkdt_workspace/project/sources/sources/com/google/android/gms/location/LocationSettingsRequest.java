package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class(creator = "LocationSettingsRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class LocationSettingsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LocationSettingsRequest> CREATOR = new p();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getLocationRequests", id = 1)
    private final List<LocationRequest> f12682e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "false", getter = "alwaysShow", id = 2)
    private final boolean f12683f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "needBle", id = 3)
    private final boolean f12684g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getConfiguration", id = 5)
    private zzae f12685h;

    /* loaded from: classes.dex */
    public static final class a {

        /* renamed from: a, reason: collision with root package name */
        private final ArrayList<LocationRequest> f12686a = new ArrayList<>();

        /* renamed from: b, reason: collision with root package name */
        private boolean f12687b = false;

        /* renamed from: c, reason: collision with root package name */
        private boolean f12688c = false;

        public final a a(@NonNull LocationRequest locationRequest) {
            if (locationRequest != null) {
                this.f12686a.add(locationRequest);
            }
            return this;
        }

        public final LocationSettingsRequest a() {
            return new LocationSettingsRequest(this.f12686a, this.f12687b, this.f12688c, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public LocationSettingsRequest(@SafeParcelable.Param(id = 1) List<LocationRequest> list, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 5) zzae zzaeVar) {
        this.f12682e = list;
        this.f12683f = z;
        this.f12684g = z2;
        this.f12685h = zzaeVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, Collections.unmodifiableList(this.f12682e), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12683f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12684g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable) this.f12685h, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
