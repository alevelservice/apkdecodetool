package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;

@SafeParcelable.Class(creator = "LocationRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class LocationRequest extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<LocationRequest> CREATOR = new l();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_PRIORITY", id = 1)
    private int f12672e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_INTERVAL", id = 2)
    private long f12673f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_FASTEST_INTERVAL", id = 3)
    private long f12674g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_EXPLICIT_FASTEST_INTERVAL", id = 4)
    private boolean f12675h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_EXPIRE_AT", id = 5)
    private long f12676i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_NUM_UPDATES", id = 6)
    private int f12677j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_SMALLEST_DISPLACEMENT", id = 7)
    private float f12678k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequest.DEFAULT_MAX_WAIT_TIME", id = 8)
    private long f12679l;

    public LocationRequest() {
        this.f12672e = 102;
        this.f12673f = 3600000L;
        this.f12674g = 600000L;
        this.f12675h = false;
        this.f12676i = Long.MAX_VALUE;
        this.f12677j = Integer.MAX_VALUE;
        this.f12678k = 0.0f;
        this.f12679l = 0L;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public LocationRequest(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) long j3, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) long j4, @SafeParcelable.Param(id = 6) int i3, @SafeParcelable.Param(id = 7) float f2, @SafeParcelable.Param(id = 8) long j5) {
        this.f12672e = i2;
        this.f12673f = j2;
        this.f12674g = j3;
        this.f12675h = z;
        this.f12676i = j4;
        this.f12677j = i3;
        this.f12678k = f2;
        this.f12679l = j5;
    }

    @VisibleForTesting
    public static LocationRequest k() {
        return new LocationRequest();
    }

    private static void l(long j2) {
        if (j2 >= 0) {
            return;
        }
        StringBuilder sb = new StringBuilder(38);
        sb.append("invalid interval: ");
        sb.append(j2);
        throw new IllegalArgumentException(sb.toString());
    }

    @VisibleForTesting
    public final LocationRequest a(float f2) {
        if (f2 >= 0.0f) {
            this.f12678k = f2;
            return this;
        }
        StringBuilder sb = new StringBuilder(37);
        sb.append("invalid displacement: ");
        sb.append(f2);
        throw new IllegalArgumentException(sb.toString());
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof LocationRequest)) {
            return false;
        }
        LocationRequest locationRequest = (LocationRequest) obj;
        return this.f12672e == locationRequest.f12672e && this.f12673f == locationRequest.f12673f && this.f12674g == locationRequest.f12674g && this.f12675h == locationRequest.f12675h && this.f12676i == locationRequest.f12676i && this.f12677j == locationRequest.f12677j && this.f12678k == locationRequest.f12678k && j() == locationRequest.j();
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f12672e), Long.valueOf(this.f12673f), Float.valueOf(this.f12678k), Long.valueOf(this.f12679l));
    }

    public final LocationRequest i(long j2) {
        l(j2);
        this.f12675h = true;
        this.f12674g = j2;
        return this;
    }

    public final long j() {
        long j2 = this.f12679l;
        long j3 = this.f12673f;
        return j2 < j3 ? j3 : j2;
    }

    public final LocationRequest j(long j2) {
        l(j2);
        this.f12673f = j2;
        if (!this.f12675h) {
            double d2 = this.f12673f;
            Double.isNaN(d2);
            this.f12674g = (long) (d2 / 6.0d);
        }
        return this;
    }

    @VisibleForTesting
    public final LocationRequest k(long j2) {
        l(j2);
        this.f12679l = j2;
        return this;
    }

    @VisibleForTesting
    public final LocationRequest m(int i2) {
        if (i2 == 100 || i2 == 102 || i2 == 104 || i2 == 105) {
            this.f12672e = i2;
            return this;
        }
        StringBuilder sb = new StringBuilder(28);
        sb.append("invalid quality: ");
        sb.append(i2);
        throw new IllegalArgumentException(sb.toString());
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("Request[");
        int i2 = this.f12672e;
        sb.append(i2 != 100 ? i2 != 102 ? i2 != 104 ? i2 != 105 ? "???" : "PRIORITY_NO_POWER" : "PRIORITY_LOW_POWER" : "PRIORITY_BALANCED_POWER_ACCURACY" : "PRIORITY_HIGH_ACCURACY");
        if (this.f12672e != 105) {
            sb.append(" requested=");
            sb.append(this.f12673f);
            sb.append("ms");
        }
        sb.append(" fastest=");
        sb.append(this.f12674g);
        sb.append("ms");
        if (this.f12679l > this.f12673f) {
            sb.append(" maxWait=");
            sb.append(this.f12679l);
            sb.append("ms");
        }
        if (this.f12678k > 0.0f) {
            sb.append(" smallestDisplacement=");
            sb.append(this.f12678k);
            sb.append("m");
        }
        long j2 = this.f12676i;
        if (j2 != Long.MAX_VALUE) {
            long elapsedRealtime = j2 - SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(elapsedRealtime);
            sb.append("ms");
        }
        if (this.f12677j != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(this.f12677j);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f12672e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12673f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12674g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f12675h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f12676i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f12677j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f12678k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f12679l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
