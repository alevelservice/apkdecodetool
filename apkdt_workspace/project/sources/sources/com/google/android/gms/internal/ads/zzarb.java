package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "ServerSideVerificationOptionsParcelCreator")
/* loaded from: classes.dex */
public final class zzarb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzarb> CREATOR = new j8();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final String f10983e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f10984f;

    @SafeParcelable.Constructor
    public zzarb(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2) {
        this.f10983e = str;
        this.f10984f = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10983e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10984f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
