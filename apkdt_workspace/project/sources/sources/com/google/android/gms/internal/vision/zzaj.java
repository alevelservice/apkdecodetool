package com.google.android.gms.internal.vision;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-vision@@19.0.0 */
@SafeParcelable.Class(creator = "WordBoxParcelCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzaj extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaj> CREATOR = new f();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final zzag[] f12625e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final zzw f12626f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final zzw f12627g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final String f12628h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private final float f12629i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final String f12630j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    private final boolean f12631k;

    @SafeParcelable.Constructor
    public zzaj(@SafeParcelable.Param(id = 2) zzag[] zzagVarArr, @SafeParcelable.Param(id = 3) zzw zzwVar, @SafeParcelable.Param(id = 4) zzw zzwVar2, @SafeParcelable.Param(id = 5) String str, @SafeParcelable.Param(id = 6) float f2, @SafeParcelable.Param(id = 7) String str2, @SafeParcelable.Param(id = 8) boolean z) {
        this.f12625e = zzagVarArr;
        this.f12626f = zzwVar;
        this.f12627g = zzwVar2;
        this.f12628h = str;
        this.f12629i = f2;
        this.f12630j = str2;
        this.f12631k = z;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable[]) this.f12625e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f12626f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) this.f12627g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f12628h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f12629i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f12630j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f12631k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
