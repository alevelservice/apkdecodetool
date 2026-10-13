package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "StringParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzaom extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaom> CREATOR = new k7();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    String f10973e;

    @SafeParcelable.Constructor
    public zzaom(@SafeParcelable.Param(id = 2) String str) {
        this.f10973e = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10973e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
