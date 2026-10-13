package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@SafeParcelable.Class(creator = "FaceSettingsParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzf> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public int f13574e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public int f13575f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public int f13576g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public boolean f13577h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public boolean f13578i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "-1", id = 7)
    public float f13579j;

    public zzf() {
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13574e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13575f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13576g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13577h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13578i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13579j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @SafeParcelable.Constructor
    public zzf(@SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) boolean z2, @SafeParcelable.Param(id = 7) float f2) {
        this.f13574e = i2;
        this.f13575f = i3;
        this.f13576g = i4;
        this.f13577h = z;
        this.f13578i = z2;
        this.f13579j = f2;
    }
}
