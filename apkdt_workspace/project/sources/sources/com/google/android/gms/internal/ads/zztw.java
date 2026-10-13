package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.DisplayMetrics;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "AdSizeParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zztw extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztw> CREATOR = new au1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f11246e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final int f11247f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final int f11248g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final boolean f11249h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final int f11250i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final int f11251j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final zztw[] f11252k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    public final boolean f11253l;

    @SafeParcelable.Field(id = 10)
    public final boolean m;

    @SafeParcelable.Field(id = 11)
    public boolean n;

    @SafeParcelable.Field(id = 12)
    public boolean o;

    @SafeParcelable.Field(id = 13)
    private boolean p;

    @SafeParcelable.Field(id = 14)
    public boolean q;

    public zztw() {
        this("interstitial_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false);
    }

    public static int a(DisplayMetrics displayMetrics) {
        return displayMetrics.widthPixels;
    }

    public static int b(DisplayMetrics displayMetrics) {
        return (int) (c(displayMetrics) * displayMetrics.density);
    }

    private static int c(DisplayMetrics displayMetrics) {
        int i2 = (int) (displayMetrics.heightPixels / displayMetrics.density);
        if (i2 <= 400) {
            return 32;
        }
        return i2 <= 720 ? 50 : 90;
    }

    public static zztw j() {
        return new zztw("reward_mb", 0, 0, true, 0, 0, null, false, false, false, false, false, false);
    }

    public static zztw k() {
        return new zztw("invalid", 0, 0, false, 0, 0, null, false, false, false, true, false, false);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11246e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f11247f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f11248g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f11249h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f11250i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f11251j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable[]) this.f11252k, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f11253l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.m);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.n);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.o);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.p);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, this.q);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zztw(Context context, com.google.android.gms.ads.d dVar) {
        this(context, new com.google.android.gms.ads.d[]{dVar});
    }

    public static zztw a(Context context) {
        return new zztw("320x50_mb", 0, 0, false, 0, 0, null, true, false, false, false, false, false);
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zztw(android.content.Context r13, com.google.android.gms.ads.d[] r14) {
        /*
            Method dump skipped, instructions count: 258
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zztw.<init>(android.content.Context, com.google.android.gms.ads.d[]):void");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zztw(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) boolean z, @SafeParcelable.Param(id = 6) int i4, @SafeParcelable.Param(id = 7) int i5, @SafeParcelable.Param(id = 8) zztw[] zztwVarArr, @SafeParcelable.Param(id = 9) boolean z2, @SafeParcelable.Param(id = 10) boolean z3, @SafeParcelable.Param(id = 11) boolean z4, @SafeParcelable.Param(id = 12) boolean z5, @SafeParcelable.Param(id = 13) boolean z6, @SafeParcelable.Param(id = 14) boolean z7) {
        this.f11246e = str;
        this.f11247f = i2;
        this.f11248g = i3;
        this.f11249h = z;
        this.f11250i = i4;
        this.f11251j = i5;
        this.f11252k = zztwVarArr;
        this.f11253l = z2;
        this.m = z3;
        this.n = z4;
        this.o = z5;
        this.p = z6;
        this.q = z7;
    }
}
