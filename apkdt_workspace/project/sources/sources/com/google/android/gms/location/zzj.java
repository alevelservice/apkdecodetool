package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.SystemClock;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "DeviceOrientationRequestCreator")
/* loaded from: classes.dex */
public final class zzj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzj> CREATOR = new c0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_SHOULD_USE_MAG", id = 1)
    private boolean f12719e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_MINIMUM_SAMPLING_PERIOD_MS", id = 2)
    private long f12720f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_SMALLEST_ANGLE_CHANGE_RADIANS", id = 3)
    private float f12721g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_EXPIRE_AT_MS", id = 4)
    private long f12722h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequest.DEFAULT_NUM_UPDATES", id = 5)
    private int f12723i;

    public zzj() {
        this(true, 50L, 0.0f, Long.MAX_VALUE, Integer.MAX_VALUE);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzj(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) float f2, @SafeParcelable.Param(id = 4) long j3, @SafeParcelable.Param(id = 5) int i2) {
        this.f12719e = z;
        this.f12720f = j2;
        this.f12721g = f2;
        this.f12722h = j3;
        this.f12723i = i2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof zzj)) {
            return false;
        }
        zzj zzjVar = (zzj) obj;
        return this.f12719e == zzjVar.f12719e && this.f12720f == zzjVar.f12720f && Float.compare(this.f12721g, zzjVar.f12721g) == 0 && this.f12722h == zzjVar.f12722h && this.f12723i == zzjVar.f12723i;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(Boolean.valueOf(this.f12719e), Long.valueOf(this.f12720f), Float.valueOf(this.f12721g), Long.valueOf(this.f12722h), Integer.valueOf(this.f12723i));
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("DeviceOrientationRequest[mShouldUseMag=");
        sb.append(this.f12719e);
        sb.append(" mMinimumSamplingPeriodMs=");
        sb.append(this.f12720f);
        sb.append(" mSmallestAngleChangeRadians=");
        sb.append(this.f12721g);
        long j2 = this.f12722h;
        if (j2 != Long.MAX_VALUE) {
            long elapsedRealtime = j2 - SystemClock.elapsedRealtime();
            sb.append(" expireIn=");
            sb.append(elapsedRealtime);
            sb.append("ms");
        }
        if (this.f12723i != Integer.MAX_VALUE) {
            sb.append(" num=");
            sb.append(this.f12723i);
        }
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f12719e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12720f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12721g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f12722h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f12723i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
