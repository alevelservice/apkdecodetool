package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
@SafeParcelable.Class(creator = "FrameMetadataParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzp> CREATOR = new j8();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public int f12635e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public int f12636f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public int f12637g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public long f12638h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public int f12639i;

    public zzp() {
    }

    public static zzp a(com.google.android.gms.vision.c cVar) {
        zzp zzpVar = new zzp();
        zzpVar.f12635e = cVar.c().e();
        zzpVar.f12636f = cVar.c().a();
        zzpVar.f12639i = cVar.c().c();
        zzpVar.f12637g = cVar.c().b();
        zzpVar.f12638h = cVar.c().d();
        return zzpVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f12635e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f12636f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f12637g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f12638h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f12639i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @SafeParcelable.Constructor
    public zzp(@SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) int i4, @SafeParcelable.Param(id = 5) long j2, @SafeParcelable.Param(id = 6) int i5) {
        this.f12635e = i2;
        this.f12636f = i3;
        this.f12637g = i4;
        this.f12638h = j2;
        this.f12639i = i5;
    }
}
