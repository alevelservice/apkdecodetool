package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class(creator = "ActivityTransitionResultCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class ActivityTransitionResult extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionResult> CREATOR = new z();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getTransitionEvents", id = 1)
    private final List<ActivityTransitionEvent> f12659e;

    @SafeParcelable.Constructor
    public ActivityTransitionResult(@SafeParcelable.Param(id = 1) List<ActivityTransitionEvent> list) {
        com.google.android.gms.common.internal.m.a(list, "transitionEvents list can't be null.");
        if (!list.isEmpty()) {
            for (int i2 = 1; i2 < list.size(); i2++) {
                com.google.android.gms.common.internal.m.a(list.get(i2).k() >= list.get(i2 + (-1)).k());
            }
        }
        this.f12659e = Collections.unmodifiableList(list);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || ActivityTransitionResult.class != obj.getClass()) {
            return false;
        }
        return this.f12659e.equals(((ActivityTransitionResult) obj).f12659e);
    }

    public int hashCode() {
        return this.f12659e.hashCode();
    }

    public List<ActivityTransitionEvent> j() {
        return this.f12659e;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
