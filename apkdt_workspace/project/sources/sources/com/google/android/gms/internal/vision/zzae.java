package com.google.android.gms.internal.vision;

import android.graphics.Rect;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@ShowFirstParty
@SafeParcelable.Class(creator = "RecognitionOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzae extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzae> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final Rect f12624e;

    public zzae() {
        this.f12624e = new Rect();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f12624e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @SafeParcelable.Constructor
    public zzae(@SafeParcelable.Param(id = 2) Rect rect) {
        this.f12624e = rect;
    }
}
