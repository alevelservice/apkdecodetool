package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "EventParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzai> CREATOR = new k();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f13377e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final zzah f13378f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final String f13379g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final long f13380h;

    @SafeParcelable.Constructor
    public zzai(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) zzah zzahVar, @SafeParcelable.Param(id = 4) String str2, @SafeParcelable.Param(id = 5) long j2) {
        this.f13377e = str;
        this.f13378f = zzahVar;
        this.f13379g = str2;
        this.f13380h = j2;
    }

    public final String toString() {
        String str = this.f13379g;
        String str2 = this.f13377e;
        String valueOf = String.valueOf(this.f13378f);
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 21 + String.valueOf(str2).length() + String.valueOf(valueOf).length());
        sb.append("origin=");
        sb.append(str);
        sb.append(",name=");
        sb.append(str2);
        sb.append(",params=");
        sb.append(valueOf);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13377e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f13378f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13379g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f13380h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzai(zzai zzaiVar, long j2) {
        com.google.android.gms.common.internal.m.a(zzaiVar);
        this.f13377e = zzaiVar.f13377e;
        this.f13378f = zzaiVar.f13378f;
        this.f13379g = zzaiVar.f13379g;
        this.f13380h = j2;
    }
}
