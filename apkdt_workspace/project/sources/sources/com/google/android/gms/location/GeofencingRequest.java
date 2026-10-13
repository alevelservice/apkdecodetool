package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.location.zzbh;
import java.util.List;

@SafeParcelable.Class(creator = "GeofencingRequestCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class GeofencingRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GeofencingRequest> CREATOR = new g0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getParcelableGeofences", id = 1)
    private final List<zzbh> f12664e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getInitialTrigger", id = 2)
    private final int f12665f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "", getter = "getTag", id = 3)
    private final String f12666g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GeofencingRequest(@SafeParcelable.Param(id = 1) List<zzbh> list, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) String str) {
        this.f12664e = list;
        this.f12665f = i2;
        this.f12666g = str;
    }

    public int j() {
        return this.f12665f;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append("GeofencingRequest[");
        sb.append("geofences=");
        sb.append(this.f12664e);
        int i2 = this.f12665f;
        StringBuilder sb2 = new StringBuilder(30);
        sb2.append(", initialTrigger=");
        sb2.append(i2);
        sb2.append(", ");
        sb.append(sb2.toString());
        String valueOf = String.valueOf(this.f12666g);
        sb.append(valueOf.length() != 0 ? "tag=".concat(valueOf) : new String("tag="));
        sb.append("]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 1, this.f12664e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12666g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
