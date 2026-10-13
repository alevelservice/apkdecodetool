package com.google.android.gms.internal.ads;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "AdRequestParcelCreator")
/* loaded from: classes.dex */
public final class zztp extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zztp> CREATOR = new wt1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final int f11237e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    @Deprecated
    public final long f11238f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final Bundle f11239g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    @Deprecated
    public final int f11240h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final List<String> f11241i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final boolean f11242j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final int f11243k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final boolean f11244l;

    @SafeParcelable.Field(id = 9)
    public final String m;

    @SafeParcelable.Field(id = 10)
    public final zzxy n;

    @SafeParcelable.Field(id = 11)
    public final Location o;

    @SafeParcelable.Field(id = 12)
    public final String p;

    @SafeParcelable.Field(id = 13)
    public final Bundle q;

    @SafeParcelable.Field(id = 14)
    public final Bundle r;

    @SafeParcelable.Field(id = 15)
    public final List<String> s;

    @SafeParcelable.Field(id = 16)
    public final String t;

    @SafeParcelable.Field(id = 17)
    public final String u;

    @SafeParcelable.Field(id = 18)
    @Deprecated
    public final boolean v;

    @Nullable
    @SafeParcelable.Field(id = 19)
    public final zztj w;

    @SafeParcelable.Field(id = 20)
    public final int x;

    @Nullable
    @SafeParcelable.Field(id = 21)
    public final String y;

    @SafeParcelable.Constructor
    public zztp(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) Bundle bundle, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) List<String> list, @SafeParcelable.Param(id = 6) boolean z, @SafeParcelable.Param(id = 7) int i4, @SafeParcelable.Param(id = 8) boolean z2, @SafeParcelable.Param(id = 9) String str, @SafeParcelable.Param(id = 10) zzxy zzxyVar, @SafeParcelable.Param(id = 11) Location location, @SafeParcelable.Param(id = 12) String str2, @SafeParcelable.Param(id = 13) Bundle bundle2, @SafeParcelable.Param(id = 14) Bundle bundle3, @SafeParcelable.Param(id = 15) List<String> list2, @SafeParcelable.Param(id = 16) String str3, @SafeParcelable.Param(id = 17) String str4, @SafeParcelable.Param(id = 18) boolean z3, @SafeParcelable.Param(id = 19) zztj zztjVar, @SafeParcelable.Param(id = 20) int i5, @Nullable @SafeParcelable.Param(id = 21) String str5) {
        this.f11237e = i2;
        this.f11238f = j2;
        this.f11239g = bundle == null ? new Bundle() : bundle;
        this.f11240h = i3;
        this.f11241i = list;
        this.f11242j = z;
        this.f11243k = i4;
        this.f11244l = z2;
        this.m = str;
        this.n = zzxyVar;
        this.o = location;
        this.p = str2;
        this.q = bundle2 == null ? new Bundle() : bundle2;
        this.r = bundle3;
        this.s = list2;
        this.t = str3;
        this.u = str4;
        this.v = z3;
        this.w = zztjVar;
        this.x = i5;
        this.y = str5;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zztp)) {
            return false;
        }
        zztp zztpVar = (zztp) obj;
        return this.f11237e == zztpVar.f11237e && this.f11238f == zztpVar.f11238f && com.google.android.gms.common.internal.k.a(this.f11239g, zztpVar.f11239g) && this.f11240h == zztpVar.f11240h && com.google.android.gms.common.internal.k.a(this.f11241i, zztpVar.f11241i) && this.f11242j == zztpVar.f11242j && this.f11243k == zztpVar.f11243k && this.f11244l == zztpVar.f11244l && com.google.android.gms.common.internal.k.a(this.m, zztpVar.m) && com.google.android.gms.common.internal.k.a(this.n, zztpVar.n) && com.google.android.gms.common.internal.k.a(this.o, zztpVar.o) && com.google.android.gms.common.internal.k.a(this.p, zztpVar.p) && com.google.android.gms.common.internal.k.a(this.q, zztpVar.q) && com.google.android.gms.common.internal.k.a(this.r, zztpVar.r) && com.google.android.gms.common.internal.k.a(this.s, zztpVar.s) && com.google.android.gms.common.internal.k.a(this.t, zztpVar.t) && com.google.android.gms.common.internal.k.a(this.u, zztpVar.u) && this.v == zztpVar.v && this.x == zztpVar.x && com.google.android.gms.common.internal.k.a(this.y, zztpVar.y);
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(Integer.valueOf(this.f11237e), Long.valueOf(this.f11238f), this.f11239g, Integer.valueOf(this.f11240h), this.f11241i, Boolean.valueOf(this.f11242j), Integer.valueOf(this.f11243k), Boolean.valueOf(this.f11244l), this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u, Boolean.valueOf(this.v), Integer.valueOf(this.x), this.y);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f11237e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11238f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f11239g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f11240h);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 5, this.f11241i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f11242j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f11243k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f11244l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.m, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, (Parcelable) this.n, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable) this.o, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.p, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.q, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, this.r, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 15, this.s, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, this.t, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, this.u, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, this.v);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 19, (Parcelable) this.w, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 20, this.x);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 21, this.y, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
