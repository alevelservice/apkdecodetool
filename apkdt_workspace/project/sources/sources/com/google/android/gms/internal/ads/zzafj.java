package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "InstreamAdConfigurationParcelCreator")
/* loaded from: classes.dex */
public final class zzafj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzafj> CREATOR = new o1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final int f10917e;

    @SafeParcelable.Constructor
    public zzafj(@SafeParcelable.Param(id = 1) int i2) {
        this.f10917e = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10917e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
