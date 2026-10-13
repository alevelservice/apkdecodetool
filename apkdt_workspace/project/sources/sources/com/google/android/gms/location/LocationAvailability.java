package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;

@SafeParcelable.Class(creator = "LocationAvailabilityCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class LocationAvailability extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationAvailability> CREATOR = new k();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN", id = 1)
    @Deprecated
    private int f12667e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNKNOWN", id = 2)
    @Deprecated
    private int f12668f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = ZimPlatform.REASON_0, id = 3)
    private long f12669g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationAvailability.STATUS_UNSUCCESSFUL", id = 4)
    private int f12670h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private zzaj[] f12671i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public LocationAvailability(@SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 1) int i3, @SafeParcelable.Param(id = 2) int i4, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 5) zzaj[] zzajVarArr) {
        this.f12670h = i2;
        this.f12667e = i3;
        this.f12668f = i4;
        this.f12669g = j2;
        this.f12671i = zzajVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && LocationAvailability.class == obj.getClass()) {
            LocationAvailability locationAvailability = (LocationAvailability) obj;
            if (this.f12667e == locationAvailability.f12667e && this.f12668f == locationAvailability.f12668f && this.f12669g == locationAvailability.f12669g && this.f12670h == locationAvailability.f12670h && Arrays.equals(this.f12671i, locationAvailability.f12671i)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f12670h), Integer.valueOf(this.f12667e), Integer.valueOf(this.f12668f), Long.valueOf(this.f12669g), this.f12671i);
    }

    public final boolean j() {
        return this.f12670h < 1000;
    }

    public final String toString() {
        boolean j2 = j();
        StringBuilder sb = new StringBuilder(48);
        sb.append("LocationAvailability[isLocationAvailable: ");
        sb.append(j2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f12667e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12668f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12669g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f12670h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable[]) this.f12671i, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
