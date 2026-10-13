package com.google.android.gms.location;

import android.content.Intent;
import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

@SafeParcelable.Class(creator = "LocationResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class LocationResult extends AbstractSafeParcelable implements ReflectedParcelable {

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationResult.DEFAULT_LOCATIONS", getter = "getLocations", id = 1)
    private final List<Location> f12681e;

    /* renamed from: f, reason: collision with root package name */
    static final List<Location> f12680f = Collections.emptyList();
    public static final Parcelable.Creator<LocationResult> CREATOR = new m();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public LocationResult(@SafeParcelable.Param(id = 1) List<Location> list) {
        this.f12681e = list;
    }

    public static LocationResult a(Intent intent) {
        if (b(intent)) {
            return (LocationResult) intent.getExtras().getParcelable("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
        }
        return null;
    }

    public static boolean b(Intent intent) {
        if (intent == null) {
            return false;
        }
        return intent.hasExtra("com.google.android.gms.location.EXTRA_LOCATION_RESULT");
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof LocationResult)) {
            return false;
        }
        LocationResult locationResult = (LocationResult) obj;
        if (locationResult.f12681e.size() != this.f12681e.size()) {
            return false;
        }
        Iterator<Location> it = locationResult.f12681e.iterator();
        Iterator<Location> it2 = this.f12681e.iterator();
        while (it.hasNext()) {
            if (it2.next().getTime() != it.next().getTime()) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        Iterator<Location> it = this.f12681e.iterator();
        int i2 = 17;
        while (it.hasNext()) {
            long time = it.next().getTime();
            i2 = (i2 * 31) + ((int) (time ^ (time >>> 32)));
        }
        return i2;
    }

    public final Location j() {
        int size = this.f12681e.size();
        if (size == 0) {
            return null;
        }
        return this.f12681e.get(size - 1);
    }

    @NonNull
    public final List<Location> k() {
        return this.f12681e;
    }

    public final String toString() {
        String valueOf = String.valueOf(this.f12681e);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 27);
        sb.append("LocationResult[locations: ");
        sb.append(valueOf);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, k(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
