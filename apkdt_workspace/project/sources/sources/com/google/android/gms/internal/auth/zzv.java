package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "DeviceMetaDataRequestCreator")
/* loaded from: classes.dex */
public final class zzv extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzv> CREATOR = new s();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f11348e = 1;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final String f11349f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzv(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str) {
        com.google.android.gms.common.internal.m.a(str);
        this.f11349f = str;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11348e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11349f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
