package com.google.android.gms.vision.face.internal.client;

import android.graphics.PointF;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@SafeParcelable.Class(creator = "ContourParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final PointF[] f13572e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final int f13573f;

    @SafeParcelable.Constructor
    public zza(@SafeParcelable.Param(id = 2) PointF[] pointFArr, @SafeParcelable.Param(id = 3) int i2) {
        this.f13572e = pointFArr;
        this.f13573f = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable[]) this.f13572e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13573f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
