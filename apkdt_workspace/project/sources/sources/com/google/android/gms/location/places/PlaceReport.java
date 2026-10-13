package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.safeparcel.b;

@SafeParcelable.Class(creator = "PlaceReportCreator")
/* loaded from: classes.dex */
public class PlaceReport extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<PlaceReport> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f12705e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getPlaceId", id = 2)
    private final String f12706f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getTag", id = 3)
    private final String f12707g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getSource", id = 4)
    private final String f12708h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public PlaceReport(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3) {
        this.f12705e = i2;
        this.f12706f = str;
        this.f12707g = str2;
        this.f12708h = str3;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof PlaceReport)) {
            return false;
        }
        PlaceReport placeReport = (PlaceReport) obj;
        return k.a(this.f12706f, placeReport.f12706f) && k.a(this.f12707g, placeReport.f12707g) && k.a(this.f12708h, placeReport.f12708h);
    }

    public int hashCode() {
        return k.a(this.f12706f, this.f12707g, this.f12708h);
    }

    public String j() {
        return this.f12706f;
    }

    public String k() {
        return this.f12707g;
    }

    public String toString() {
        k.a a2 = k.a(this);
        a2.a("placeId", this.f12706f);
        a2.a("tag", this.f12707g);
        if (!"unknown".equals(this.f12708h)) {
            a2.a("source", this.f12708h);
        }
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = b.a(parcel);
        b.a(parcel, 1, this.f12705e);
        b.a(parcel, 2, j(), false);
        b.a(parcel, 3, k(), false);
        b.a(parcel, 4, this.f12708h, false);
        b.a(parcel, a2);
    }
}
