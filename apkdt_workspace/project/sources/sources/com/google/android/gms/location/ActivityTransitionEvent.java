package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ActivityTransitionEventCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class ActivityTransitionEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionEvent> CREATOR = new w();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getActivityType", id = 1)
    private final int f12652e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getTransitionType", id = 2)
    private final int f12653f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getElapsedRealTimeNanos", id = 3)
    private final long f12654g;

    @SafeParcelable.Constructor
    public ActivityTransitionEvent(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) long j2) {
        DetectedActivity.m(i2);
        ActivityTransition.m(i3);
        this.f12652e = i2;
        this.f12653f = i3;
        this.f12654g = j2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransitionEvent)) {
            return false;
        }
        ActivityTransitionEvent activityTransitionEvent = (ActivityTransitionEvent) obj;
        return this.f12652e == activityTransitionEvent.f12652e && this.f12653f == activityTransitionEvent.f12653f && this.f12654g == activityTransitionEvent.f12654g;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f12652e), Integer.valueOf(this.f12653f), Long.valueOf(this.f12654g));
    }

    public int j() {
        return this.f12652e;
    }

    public long k() {
        return this.f12654g;
    }

    public int l() {
        return this.f12653f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        int i2 = this.f12652e;
        StringBuilder sb2 = new StringBuilder(24);
        sb2.append("ActivityType ");
        sb2.append(i2);
        sb.append(sb2.toString());
        sb.append(HanziToPinyin.Token.SEPARATOR);
        int i3 = this.f12653f;
        StringBuilder sb3 = new StringBuilder(26);
        sb3.append("TransitionType ");
        sb3.append(i3);
        sb.append(sb3.toString());
        sb.append(HanziToPinyin.Token.SEPARATOR);
        long j2 = this.f12654g;
        StringBuilder sb4 = new StringBuilder(41);
        sb4.append("ElapsedRealTimeNanos ");
        sb4.append(j2);
        sb.append(sb4.toString());
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, l());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
