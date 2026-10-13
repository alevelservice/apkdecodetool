package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "LocationSettingsConfigurationCreator")
@SafeParcelable.Reserved({3, 4, 1000})
/* loaded from: classes.dex */
public final class zzae extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzae> CREATOR = new o();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "", getter = "getJustificationText", id = 1)
    private final String f12709e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "", getter = "getExperimentId", id = 2)
    private final String f12710f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "", getter = "getTitleText", id = 5)
    private final String f12711g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzae(@SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 1) String str2, @SafeParcelable.Param(id = 2) String str3) {
        this.f12711g = str;
        this.f12709e = str2;
        this.f12710f = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f12709e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12710f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f12711g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
