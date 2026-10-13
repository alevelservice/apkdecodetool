package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-gass@@18.1.0 */
@SafeParcelable.Class(creator = "GassEventParcelCreator")
/* loaded from: classes.dex */
public final class zzcyt extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzcyt> CREATOR = new bw0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f11178e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final byte[] f11179f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzcyt(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) byte[] bArr) {
        this.f11178e = i2;
        this.f11179f = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11178e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11179f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zzcyt(byte[] bArr) {
        this(1, bArr);
    }
}
