package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "AppMetadataCreator")
@SafeParcelable.Reserved({1, 20})
/* loaded from: classes.dex */
public final class zzn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzn> CREATOR = new v8();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f13391e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final String f13392f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final String f13393g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final String f13394h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final long f13395i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final long f13396j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final String f13397k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "true", id = 9)
    public final boolean f13398l;

    @SafeParcelable.Field(id = 10)
    public final boolean m;

    @SafeParcelable.Field(defaultValueUnchecked = "Integer.MIN_VALUE", id = 11)
    public final long n;

    @SafeParcelable.Field(id = 12)
    public final String o;

    @SafeParcelable.Field(id = 13)
    public final long p;

    @SafeParcelable.Field(id = 14)
    public final long q;

    @SafeParcelable.Field(id = 15)
    public final int r;

    @SafeParcelable.Field(defaultValue = "true", id = 16)
    public final boolean s;

    @SafeParcelable.Field(defaultValue = "true", id = 17)
    public final boolean t;

    @SafeParcelable.Field(id = 18)
    public final boolean u;

    @SafeParcelable.Field(id = 19)
    public final String v;

    @SafeParcelable.Field(id = 21)
    public final Boolean w;

    @SafeParcelable.Field(id = 22)
    public final long x;

    @SafeParcelable.Field(id = 23)
    public final List<String> y;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzn(String str, String str2, String str3, long j2, String str4, long j3, long j4, String str5, boolean z, boolean z2, String str6, long j5, long j6, int i2, boolean z3, boolean z4, boolean z5, String str7, Boolean bool, long j7, List<String> list) {
        com.google.android.gms.common.internal.m.b(str);
        this.f13391e = str;
        this.f13392f = TextUtils.isEmpty(str2) ? null : str2;
        this.f13393g = str3;
        this.n = j2;
        this.f13394h = str4;
        this.f13395i = j3;
        this.f13396j = j4;
        this.f13397k = str5;
        this.f13398l = z;
        this.m = z2;
        this.o = str6;
        this.p = j5;
        this.q = j6;
        this.r = i2;
        this.s = z3;
        this.t = z4;
        this.u = z5;
        this.v = str7;
        this.w = bool;
        this.x = j7;
        this.y = list;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13391e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13392f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13393g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13394h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13395i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13396j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f13397k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f13398l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.m);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.n);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.o, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.p);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, this.q);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, this.r);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, this.s);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, this.t);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, this.u);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 19, this.v, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 21, this.w, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 22, this.x);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 23, this.y, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzn(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) long j2, @SafeParcelable.Param(id = 7) long j3, @SafeParcelable.Param(id = 8) String str5, @SafeParcelable.Param(id = 9) boolean z, @SafeParcelable.Param(id = 10) boolean z2, @SafeParcelable.Param(id = 11) long j4, @SafeParcelable.Param(id = 12) String str6, @SafeParcelable.Param(id = 13) long j5, @SafeParcelable.Param(id = 14) long j6, @SafeParcelable.Param(id = 15) int i2, @SafeParcelable.Param(id = 16) boolean z3, @SafeParcelable.Param(id = 17) boolean z4, @SafeParcelable.Param(id = 18) boolean z5, @SafeParcelable.Param(id = 19) String str7, @SafeParcelable.Param(id = 21) Boolean bool, @SafeParcelable.Param(id = 22) long j7, @SafeParcelable.Param(id = 23) List<String> list) {
        this.f13391e = str;
        this.f13392f = str2;
        this.f13393g = str3;
        this.n = j4;
        this.f13394h = str4;
        this.f13395i = j2;
        this.f13396j = j3;
        this.f13397k = str5;
        this.f13398l = z;
        this.m = z2;
        this.o = str6;
        this.p = j5;
        this.q = j6;
        this.r = i2;
        this.s = z3;
        this.t = z4;
        this.u = z5;
        this.v = str7;
        this.w = bool;
        this.x = j7;
        this.y = list;
    }
}
