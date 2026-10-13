package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@SafeParcelable.Class(creator = "BoundingBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzw> CREATOR = new l8();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final int f12640e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final int f12641f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final int f12642g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final int f12643h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final float f12644i;

    @SafeParcelable.Constructor
    public zzw(@SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) int i5, @SafeParcelable.Param(id = 6) float f2) {
        this.f12640e = i2;
        this.f12641f = i3;
        this.f12642g = i4;
        this.f12643h = i5;
        this.f12644i = f2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12640e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12641f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f12642g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f12643h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f12644i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
