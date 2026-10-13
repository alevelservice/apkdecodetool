package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "AppOpenAdOptionsParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zztx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztx> CREATOR = new cu1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final int f11254e;

    @SafeParcelable.Constructor
    public zztx(@SafeParcelable.Param(id = 2) int i2) {
        this.f11254e = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11254e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
