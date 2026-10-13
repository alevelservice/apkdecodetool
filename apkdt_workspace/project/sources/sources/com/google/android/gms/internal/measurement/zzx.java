package com.google.android.gms.internal.measurement;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "InitializationParamsCreator")
/* loaded from: classes.dex */
public final class zzx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzx> CREATOR = new rb();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final long f12248e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final long f12249f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final boolean f12250g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final String f12251h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final String f12252i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final String f12253j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final Bundle f12254k;

    @SafeParcelable.Constructor
    public zzx(@SafeParcelable.Param(id = 1) long j2, @SafeParcelable.Param(id = 2) long j3, @SafeParcelable.Param(id = 3) boolean z, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) String str2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 7) Bundle bundle) {
        this.f12248e = j2;
        this.f12249f = j3;
        this.f12250g = z;
        this.f12251h = str;
        this.f12252i = str2;
        this.f12253j = str3;
        this.f12254k = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f12248e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12249f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12250g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f12251h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f12252i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f12253j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f12254k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
