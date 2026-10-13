package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "MediationConfigurationParcelCreator")
/* loaded from: classes.dex */
public final class zzafh extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzafh> CREATOR = new n1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final String f10915e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final Bundle f10916f;

    @SafeParcelable.Constructor
    public zzafh(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) Bundle bundle) {
        this.f10915e = str;
        this.f10916f = bundle;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10915e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10916f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
