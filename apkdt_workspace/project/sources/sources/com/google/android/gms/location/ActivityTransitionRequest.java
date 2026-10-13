package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.TreeSet;

@SafeParcelable.Class(creator = "ActivityTransitionRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class ActivityTransitionRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ActivityTransitionRequest> CREATOR = new y();

    /* renamed from: h, reason: collision with root package name */
    public static final Comparator<ActivityTransition> f12655h = new x();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getActivityTransitions", id = 1)
    private final List<ActivityTransition> f12656e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getTag", id = 2)
    private final String f12657f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getClients", id = 3)
    private final List<ClientIdentity> f12658g;

    @SafeParcelable.Constructor
    public ActivityTransitionRequest(@SafeParcelable.Param(id = 1) List<ActivityTransition> list, @Nullable @SafeParcelable.Param(id = 2) String str, @Nullable @SafeParcelable.Param(id = 3) List<ClientIdentity> list2) {
        com.google.android.gms.common.internal.m.a(list, "transitions can't be null");
        com.google.android.gms.common.internal.m.a(list.size() > 0, "transitions can't be empty.");
        TreeSet treeSet = new TreeSet(f12655h);
        for (ActivityTransition activityTransition : list) {
            com.google.android.gms.common.internal.m.a(treeSet.add(activityTransition), String.format("Found duplicated transition: %s.", activityTransition));
        }
        this.f12656e = Collections.unmodifiableList(list);
        this.f12657f = str;
        this.f12658g = list2 == null ? Collections.emptyList() : Collections.unmodifiableList(list2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ActivityTransitionRequest.class == obj.getClass()) {
            ActivityTransitionRequest activityTransitionRequest = (ActivityTransitionRequest) obj;
            if (com.google.android.gms.common.internal.k.a(this.f12656e, activityTransitionRequest.f12656e) && com.google.android.gms.common.internal.k.a(this.f12657f, activityTransitionRequest.f12657f) && com.google.android.gms.common.internal.k.a(this.f12658g, activityTransitionRequest.f12658g)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        int hashCode = this.f12656e.hashCode() * 31;
        String str = this.f12657f;
        int hashCode2 = (hashCode + (str != null ? str.hashCode() : 0)) * 31;
        List<ClientIdentity> list = this.f12658g;
        return hashCode2 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        String valueOf = String.valueOf(this.f12656e);
        String str = this.f12657f;
        String valueOf2 = String.valueOf(this.f12658g);
        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 61 + String.valueOf(str).length() + String.valueOf(valueOf2).length());
        sb.append("ActivityTransitionRequest [mTransitions=");
        sb.append(valueOf);
        sb.append(", mTag='");
        sb.append(str);
        sb.append('\'');
        sb.append(", mClients=");
        sb.append(valueOf2);
        sb.append(']');
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, this.f12656e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12657f, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 3, this.f12658g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
