package com.google.android.gms.internal.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "SendDataRequestCreator")
/* loaded from: classes.dex */
public final class zzaf extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaf> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f11338e = 1;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final String f11339f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final byte[] f11340g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzaf(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) byte[] bArr) {
        com.google.android.gms.common.internal.m.a(str);
        this.f11339f = str;
        com.google.android.gms.common.internal.m.a(bArr);
        this.f11340g = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11338e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11339f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f11340g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
