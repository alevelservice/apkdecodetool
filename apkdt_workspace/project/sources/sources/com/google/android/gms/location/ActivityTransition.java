package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

@SafeParcelable.Class(creator = "ActivityTransitionCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class ActivityTransition extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransition> CREATOR = new v();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getActivityType", id = 1)
    private final int f12650e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getTransitionType", id = 2)
    private final int f12651f;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface SupportedActivityTransition {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ActivityTransition(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3) {
        this.f12650e = i2;
        this.f12651f = i3;
    }

    public static void m(int i2) {
        boolean z = i2 >= 0 && i2 <= 1;
        StringBuilder sb = new StringBuilder(41);
        sb.append("Transition type ");
        sb.append(i2);
        sb.append(" is not valid.");
        com.google.android.gms.common.internal.m.a(z, sb.toString());
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ActivityTransition)) {
            return false;
        }
        ActivityTransition activityTransition = (ActivityTransition) obj;
        return this.f12650e == activityTransition.f12650e && this.f12651f == activityTransition.f12651f;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f12650e), Integer.valueOf(this.f12651f));
    }

    public int j() {
        return this.f12650e;
    }

    public int k() {
        return this.f12651f;
    }

    public String toString() {
        int i2 = this.f12650e;
        int i3 = this.f12651f;
        StringBuilder sb = new StringBuilder(75);
        sb.append("ActivityTransition [mActivityType=");
        sb.append(i2);
        sb.append(", mTransitionType=");
        sb.append(i3);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
