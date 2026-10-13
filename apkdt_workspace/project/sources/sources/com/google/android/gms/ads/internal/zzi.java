package com.google.android.gms.ads.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "InterstitialAdParameterParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzi extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzi> CREATOR = new h();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final boolean f4595e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final boolean f4596f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final String f4597g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final boolean f4598h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final float f4599i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final int f4600j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final boolean f4601k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    public final boolean f4602l;

    @SafeParcelable.Field(id = 10)
    public final boolean m;

    public zzi(boolean z, boolean z2, boolean z3, float f2, int i2, boolean z4, boolean z5, boolean z6) {
        this(false, z2, null, false, 0.0f, -1, z4, z5, z6);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4595e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4596f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4597g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4598h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f4599i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f4600j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f4601k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f4602l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.m);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzi(@SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) boolean z2, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) boolean z3, @SafeParcelable.Param(id = 6) float f2, @SafeParcelable.Param(id = 7) int i2, @SafeParcelable.Param(id = 8) boolean z4, @SafeParcelable.Param(id = 9) boolean z5, @SafeParcelable.Param(id = 10) boolean z6) {
        this.f4595e = z;
        this.f4596f = z2;
        this.f4597g = str;
        this.f4598h = z3;
        this.f4599i = f2;
        this.f4600j = i2;
        this.f4601k = z4;
        this.f4602l = z5;
        this.m = z6;
    }
}
