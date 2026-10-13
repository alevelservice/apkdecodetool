package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "AdapterStatusParcelCreator")
/* loaded from: classes.dex */
public final class zzaex extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaex> CREATOR = new k1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final String f10911e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final boolean f10912f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final int f10913g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final String f10914h;

    @SafeParcelable.Constructor
    public zzaex(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) String str2) {
        this.f10911e = str;
        this.f10912f = z;
        this.f10913g = i2;
        this.f10914h = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10911e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10912f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f10913g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f10914h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
