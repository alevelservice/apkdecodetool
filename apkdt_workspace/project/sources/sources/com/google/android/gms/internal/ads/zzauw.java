package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "ExceptionParcelCreator")
/* loaded from: classes.dex */
public final class zzauw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzauw> CREATOR = new zb();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final String f10998e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final int f10999f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzauw(@Nullable @SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i2) {
        this.f10998e = str == null ? "" : str;
        this.f10999f = i2;
    }

    @Nullable
    public static zzauw a(Throwable th, int i2) {
        return new zzauw(th.getMessage(), i2);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10998e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10999f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
