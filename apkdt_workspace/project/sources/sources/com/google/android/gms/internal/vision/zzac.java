package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@SafeParcelable.Class(creator = "LineBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzac extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzac> CREATOR = new a();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final zzaj[] f12616e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final zzw f12617f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final zzw f12618g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private final zzw f12619h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final String f12620i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    private final float f12621j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final String f12622k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    private final int f12623l;

    @SafeParcelable.Field(id = 10)
    public final boolean m;

    @SafeParcelable.Field(id = 11)
    public final int n;

    @SafeParcelable.Field(id = 12)
    public final int o;

    @SafeParcelable.Constructor
    public zzac(@SafeParcelable.Param(id = 2) zzaj[] zzajVarArr, @SafeParcelable.Param(id = 3) zzw zzwVar, @SafeParcelable.Param(id = 4) zzw zzwVar2, @SafeParcelable.Param(id = 5) zzw zzwVar3, @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) float f2, @SafeParcelable.Param(id = 8) String str2, @SafeParcelable.Param(id = 9) int i2, @SafeParcelable.Param(id = 10) boolean z, @SafeParcelable.Param(id = 11) int i3, @SafeParcelable.Param(id = 12) int i4) {
        this.f12616e = zzajVarArr;
        this.f12617f = zzwVar;
        this.f12618g = zzwVar2;
        this.f12619h = zzwVar3;
        this.f12620i = str;
        this.f12621j = f2;
        this.f12622k = str2;
        this.f12623l = i2;
        this.m = z;
        this.n = i3;
        this.o = i4;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable[]) this.f12616e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f12617f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) this.f12618g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Parcelable) this.f12619h, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f12620i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f12621j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f12622k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f12623l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.m);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.n);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.o);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
