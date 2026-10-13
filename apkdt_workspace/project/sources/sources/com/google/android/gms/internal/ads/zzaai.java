package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.formats.NativeAdOptions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "NativeAdOptionsParcelCreator")
/* loaded from: classes.dex */
public final class zzaai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaai> CREATOR = new h();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final int f10884e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final boolean f10885f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final int f10886g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final boolean f10887h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final int f10888i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(id = 6)
    public final zzyc f10889j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final boolean f10890k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final int f10891l;

    public zzaai(NativeAdOptions nativeAdOptions) {
        this(4, nativeAdOptions.f(), nativeAdOptions.b(), nativeAdOptions.e(), nativeAdOptions.a(), nativeAdOptions.d() != null ? new zzyc(nativeAdOptions.d()) : null, nativeAdOptions.g(), nativeAdOptions.c());
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10884e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10885f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f10886g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f10887h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f10888i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable) this.f10889j, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f10890k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f10891l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @SafeParcelable.Constructor
    public zzaai(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) boolean z2, @SafeParcelable.Param(id = 5) int i4, @SafeParcelable.Param(id = 6) zzyc zzycVar, @SafeParcelable.Param(id = 7) boolean z3, @SafeParcelable.Param(id = 8) int i5) {
        this.f10884e = i2;
        this.f10885f = z;
        this.f10886g = i3;
        this.f10887h = z2;
        this.f10888i = i4;
        this.f10889j = zzycVar;
        this.f10890k = z3;
        this.f10891l = i5;
    }
}
