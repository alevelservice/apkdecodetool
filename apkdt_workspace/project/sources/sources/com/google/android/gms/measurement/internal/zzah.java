package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;

@SafeParcelable.Class(creator = "EventParamsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzah extends AbstractSafeParcelable implements Iterable<String> {
    public static final Parcelable.Creator<zzah> CREATOR = new i();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "z", id = 2)
    private final Bundle f13376e;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzah(@SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f13376e = bundle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Object b(String str) {
        return this.f13376e.get(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Long c(String str) {
        return Long.valueOf(this.f13376e.getLong(str));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final String d(String str) {
        return this.f13376e.getString(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Double e(String str) {
        return Double.valueOf(this.f13376e.getDouble(str));
    }

    @Override // java.lang.Iterable
    public final Iterator<String> iterator() {
        return new h(this);
    }

    public final Bundle j() {
        return new Bundle(this.f13376e);
    }

    public final int size() {
        return this.f13376e.size();
    }

    public final String toString() {
        return this.f13376e.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
