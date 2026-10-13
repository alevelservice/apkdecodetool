package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "ActivityRecognitionResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class ActivityRecognitionResult extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<ActivityRecognitionResult> CREATOR = new u();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    private List<DetectedActivity> f12645e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private long f12646f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private long f12647g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private int f12648h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private Bundle f12649i;

    @SafeParcelable.Constructor
    public ActivityRecognitionResult(@SafeParcelable.Param(id = 1) List<DetectedActivity> list, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) long j3, @SafeParcelable.Param(id = 4) int i2, @SafeParcelable.Param(id = 5) Bundle bundle) {
        com.google.android.gms.common.internal.m.a(list != null && list.size() > 0, "Must have at least 1 detected activity");
        com.google.android.gms.common.internal.m.a(j2 > 0 && j3 > 0, "Must set times");
        this.f12645e = list;
        this.f12646f = j2;
        this.f12647g = j3;
        this.f12648h = i2;
        this.f12649i = bundle;
    }

    private static boolean a(Bundle bundle, Bundle bundle2) {
        if (bundle == null && bundle2 == null) {
            return true;
        }
        if ((bundle == null && bundle2 != null) || ((bundle != null && bundle2 == null) || bundle.size() != bundle2.size())) {
            return false;
        }
        for (String str : bundle.keySet()) {
            if (!bundle2.containsKey(str)) {
                return false;
            }
            if (bundle.get(str) == null) {
                if (bundle2.get(str) != null) {
                    return false;
                }
            } else if (bundle.get(str) instanceof Bundle) {
                if (!a(bundle.getBundle(str), bundle2.getBundle(str))) {
                    return false;
                }
            } else if (!bundle.get(str).equals(bundle2.get(str))) {
                return false;
            }
        }
        return true;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ActivityRecognitionResult.class == obj.getClass()) {
            ActivityRecognitionResult activityRecognitionResult = (ActivityRecognitionResult) obj;
            if (this.f12646f == activityRecognitionResult.f12646f && this.f12647g == activityRecognitionResult.f12647g && this.f12648h == activityRecognitionResult.f12648h && com.google.android.gms.common.internal.k.a(this.f12645e, activityRecognitionResult.f12645e) && a(this.f12649i, activityRecognitionResult.f12649i)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.k.a(Long.valueOf(this.f12646f), Long.valueOf(this.f12647g), Integer.valueOf(this.f12648h), this.f12645e, this.f12649i);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f12645e);
        long j2 = this.f12646f;
        long j3 = this.f12647g;
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 124);
        sb.append("ActivityRecognitionResult [probableActivities=");
        sb.append(valueOf);
        sb.append(", timeMillis=");
        sb.append(j2);
        sb.append(", elapsedRealtimeMillis=");
        sb.append(j3);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, this.f12645e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12646f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12647g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f12648h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f12649i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
