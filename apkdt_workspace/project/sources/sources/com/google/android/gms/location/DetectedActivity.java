package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "DetectedActivityCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class DetectedActivity extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DetectedActivity> CREATOR;

    /* renamed from: g, reason: collision with root package name */
    private static final int[] f12660g;

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    private int f12661e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private int f12662f;

    static {
        new a0();
        f12660g = new int[]{0, 1, 2, 3, 7, 8, 16, 17};
        CREATOR = new b0();
    }

    @SafeParcelable.Constructor
    public DetectedActivity(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3) {
        this.f12661e = i2;
        this.f12662f = i3;
    }

    public static void m(int i2) {
        boolean z = false;
        for (int i3 : f12660g) {
            if (i3 == i2) {
                z = true;
            }
        }
        if (z) {
            return;
        }
        StringBuilder sb = new StringBuilder(81);
        sb.append(i2);
        sb.append(" is not a valid DetectedActivity supported by Activity Transition API.");
        sb.toString();
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && DetectedActivity.class == obj.getClass()) {
            DetectedActivity detectedActivity = (DetectedActivity) obj;
            if (this.f12661e == detectedActivity.f12661e && this.f12662f == detectedActivity.f12662f) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f12661e), Integer.valueOf(this.f12662f));
    }

    public int j() {
        return this.f12662f;
    }

    public int k() {
        int i2 = this.f12661e;
        if (i2 > 19 || i2 < 0) {
            return 4;
        }
        return i2;
    }

    public String toString() {
        String str;
        int k2 = k();
        if (k2 == 0) {
            str = "IN_VEHICLE";
        } else if (k2 == 1) {
            str = "ON_BICYCLE";
        } else if (k2 == 2) {
            str = "ON_FOOT";
        } else if (k2 == 3) {
            str = "STILL";
        } else if (k2 == 4) {
            str = "UNKNOWN";
        } else if (k2 == 5) {
            str = "TILTING";
        } else if (k2 == 7) {
            str = "WALKING";
        } else if (k2 != 8) {
            switch (k2) {
                case 16:
                    str = "IN_ROAD_VEHICLE";
                    break;
                case 17:
                    str = "IN_RAIL_VEHICLE";
                    break;
                case 18:
                    str = "IN_TWO_WHEELER_VEHICLE";
                    break;
                case 19:
                    str = "IN_FOUR_WHEELER_VEHICLE";
                    break;
                default:
                    str = Integer.toString(k2);
                    break;
            }
        } else {
            str = "RUNNING";
        }
        int i2 = this.f12662f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 48);
        sb.append("DetectedActivity [type=");
        sb.append(str);
        sb.append(", confidence=");
        sb.append(i2);
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f12661e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12662f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
