package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "RequestConfigurationParcelCreator")
/* loaded from: classes.dex */
public final class zzxw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzxw> CREATOR = new gv1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    private final int f11269e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final int f11270f;

    @SafeParcelable.Constructor
    public zzxw(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3) {
        this.f11269e = i2;
        this.f11270f = i3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11269e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11270f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
