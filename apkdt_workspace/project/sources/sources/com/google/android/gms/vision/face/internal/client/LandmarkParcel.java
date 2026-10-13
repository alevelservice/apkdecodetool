package com.google.android.gms.vision.face.internal.client;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@SafeParcelable.Class(creator = "LandmarkParcelCreator")
/* loaded from: classes.dex */
public final class LandmarkParcel extends AbstractSafeParcelable {
    public static final Parcelable.Creator<LandmarkParcel> CREATOR = new d();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f13568e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final float f13569f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final float f13570g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final int f13571h;

    @SafeParcelable.Constructor
    public LandmarkParcel(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) float f2, @SafeParcelable.Param(id = 3) float f3, @SafeParcelable.Param(id = 4) int i3) {
        this.f13568e = i2;
        this.f13569f = f2;
        this.f13570g = f3;
        this.f13571h = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f13568e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13569f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13570g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13571h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
