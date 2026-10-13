package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "NetworkLocationStatusCreator")
/* loaded from: classes.dex */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new s();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN", id = 1)
    private final int f12712e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN", id = 2)
    private final int f12713f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "NetworkLocationStatus.STATUS_INVALID_TIMESTAMP", id = 3)
    private final long f12714g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "NetworkLocationStatus.STATUS_INVALID_TIMESTAMP", id = 4)
    private final long f12715h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzaj(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) long j3) {
        this.f12712e = i2;
        this.f12713f = i3;
        this.f12714g = j2;
        this.f12715h = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzaj.class == obj.getClass()) {
            zzaj zzajVar = (zzaj) obj;
            if (this.f12712e == zzajVar.f12712e && this.f12713f == zzajVar.f12713f && this.f12714g == zzajVar.f12714g && this.f12715h == zzajVar.f12715h) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f12713f), Integer.valueOf(this.f12712e), Long.valueOf(this.f12715h), Long.valueOf(this.f12714g));
    }

    public final String toString() {
        return "NetworkLocationStatus: Wifi status: " + this.f12712e + " Cell status: " + this.f12713f + " elapsed time NS: " + this.f12715h + " system time ms: " + this.f12714g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f12712e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12713f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12714g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f12715h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
