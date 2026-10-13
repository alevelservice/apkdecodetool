package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "IconAdOptionsParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzwq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzwq> CREATOR = new qu1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final int f11259e;

    @SafeParcelable.Constructor
    public zzwq(@SafeParcelable.Param(id = 2) int i2) {
        this.f11259e = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11259e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
