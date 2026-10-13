package com.google.android.gms.internal.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "PlayLoggerContextCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzr extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzr> CREATOR = new p5();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final String f11668e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final int f11669f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final int f11670g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private final String f11671h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private final String f11672i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "true", id = 7)
    private final boolean f11673j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final String f11674k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    private final boolean f11675l;

    @SafeParcelable.Field(id = 10)
    private final int m;

    public zzr(String str, int i2, int i3, String str2, String str3, String str4, boolean z, z4 z4Var) {
        com.google.android.gms.common.internal.m.a(str);
        this.f11668e = str;
        this.f11669f = i2;
        this.f11670g = i3;
        this.f11674k = str2;
        this.f11671h = str3;
        this.f11672i = str4;
        this.f11673j = !z;
        this.f11675l = z;
        this.m = z4Var.zzc();
    }

    @SafeParcelable.Constructor
    public zzr(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) String str2, @SafeParcelable.Param(id = 6) String str3, @SafeParcelable.Param(id = 7) boolean z, @SafeParcelable.Param(id = 8) String str4, @SafeParcelable.Param(id = 9) boolean z2, @SafeParcelable.Param(id = 10) int i4) {
        this.f11668e = str;
        this.f11669f = i2;
        this.f11670g = i3;
        this.f11671h = str2;
        this.f11672i = str3;
        this.f11673j = z;
        this.f11674k = str4;
        this.f11675l = z2;
        this.m = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzr) {
            zzr zzrVar = (zzr) obj;
            if (com.google.android.gms.common.internal.k.a(this.f11668e, zzrVar.f11668e) && this.f11669f == zzrVar.f11669f && this.f11670g == zzrVar.f11670g && com.google.android.gms.common.internal.k.a(this.f11674k, zzrVar.f11674k) && com.google.android.gms.common.internal.k.a(this.f11671h, zzrVar.f11671h) && com.google.android.gms.common.internal.k.a(this.f11672i, zzrVar.f11672i) && this.f11673j == zzrVar.f11673j && this.f11675l == zzrVar.f11675l && this.m == zzrVar.m) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return com.google.android.gms.common.internal.k.a(this.f11668e, Integer.valueOf(this.f11669f), Integer.valueOf(this.f11670g), this.f11674k, this.f11671h, this.f11672i, Boolean.valueOf(this.f11673j), Boolean.valueOf(this.f11675l), Integer.valueOf(this.m));
    }

    public final String toString() {
        return "PlayLoggerContext[package=" + this.f11668e + ",packageVersionCode=" + this.f11669f + ",logSource=" + this.f11670g + ",logSourceName=" + this.f11674k + ",uploadAccount=" + this.f11671h + ",loggingId=" + this.f11672i + ",logAndroidId=" + this.f11673j + ",isAnonymous=" + this.f11675l + ",qosTier=" + this.m + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11668e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f11669f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f11670g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f11671h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f11672i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f11673j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f11674k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f11675l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.m);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
