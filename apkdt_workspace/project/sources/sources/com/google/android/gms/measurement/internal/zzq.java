package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "ConditionalUserPropertyParcelCreator")
/* loaded from: classes.dex */
public final class zzq extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzq> CREATOR = new a9();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public String f13399e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public String f13400f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public zzjn f13401g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public long f13402h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public boolean f13403i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public String f13404j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public zzai f13405k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    public long f13406l;

    @SafeParcelable.Field(id = 10)
    public zzai m;

    @SafeParcelable.Field(id = 11)
    public long n;

    @SafeParcelable.Field(id = 12)
    public zzai o;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzq(zzq zzqVar) {
        com.google.android.gms.common.internal.m.a(zzqVar);
        this.f13399e = zzqVar.f13399e;
        this.f13400f = zzqVar.f13400f;
        this.f13401g = zzqVar.f13401g;
        this.f13402h = zzqVar.f13402h;
        this.f13403i = zzqVar.f13403i;
        this.f13404j = zzqVar.f13404j;
        this.f13405k = zzqVar.f13405k;
        this.f13406l = zzqVar.f13406l;
        this.m = zzqVar.m;
        this.n = zzqVar.n;
        this.o = zzqVar.o;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13399e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13400f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) this.f13401g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13402h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13403i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13404j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable) this.f13405k, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f13406l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, (Parcelable) this.m, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, this.n);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, (Parcelable) this.o, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzq(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) zzjn zzjnVar, @SafeParcelable.Param(id = 5) long j2, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) zzai zzaiVar, @SafeParcelable.Param(id = 9) long j3, @SafeParcelable.Param(id = 10) zzai zzaiVar2, @SafeParcelable.Param(id = 11) long j4, @SafeParcelable.Param(id = 12) zzai zzaiVar3) {
        this.f13399e = str;
        this.f13400f = str2;
        this.f13401g = zzjnVar;
        this.f13402h = j2;
        this.f13403i = z;
        this.f13404j = str3;
        this.f13405k = zzaiVar;
        this.f13406l = j3;
        this.m = zzaiVar2;
        this.n = j4;
        this.o = zzaiVar3;
    }
}
