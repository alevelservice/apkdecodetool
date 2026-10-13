package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "AdDataParcelCreator")
/* loaded from: classes.dex */
public final class zztj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztj> CREATOR = new tt1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final String f11233e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f11234f;

    @SafeParcelable.Constructor
    public zztj(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) String str2) {
        this.f11233e = str;
        this.f11234f = str2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11233e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11234f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
