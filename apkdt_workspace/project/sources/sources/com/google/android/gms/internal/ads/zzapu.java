package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "RewardedVideoAdRequestParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzapu extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzapu> CREATOR = new c8();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final zztp f10976e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final String f10977f;

    @SafeParcelable.Constructor
    public zzapu(@SafeParcelable.Param(id = 2) zztp zztpVar, @SafeParcelable.Param(id = 3) String str) {
        this.f10976e = zztpVar;
        this.f10977f = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f10976e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f10977f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
