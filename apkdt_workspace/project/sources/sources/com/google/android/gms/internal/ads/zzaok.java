package com.google.android.gms.internal.ads;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "NonagonRequestParcelCreator")
/* loaded from: classes.dex */
public final class zzaok extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzaok> CREATOR = new i7();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final Bundle f10965e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final zzawv f10966f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final ApplicationInfo f10967g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final String f10968h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final List<String> f10969i;

    /* renamed from: j, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(id = 6)
    public final PackageInfo f10970j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final String f10971k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final boolean f10972l;

    @SafeParcelable.Field(id = 9)
    public final String m;

    @SafeParcelable.Constructor
    public zzaok(@SafeParcelable.Param(id = 1) Bundle bundle, @SafeParcelable.Param(id = 2) zzawv zzawvVar, @SafeParcelable.Param(id = 3) ApplicationInfo applicationInfo, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) List<String> list, @Nullable @SafeParcelable.Param(id = 6) PackageInfo packageInfo, @SafeParcelable.Param(id = 7) String str2, @SafeParcelable.Param(id = 8) boolean z, @SafeParcelable.Param(id = 9) String str3) {
        this.f10965e = bundle;
        this.f10966f = zzawvVar;
        this.f10968h = str;
        this.f10967g = applicationInfo;
        this.f10969i = list;
        this.f10970j = packageInfo;
        this.f10971k = str2;
        this.f10972l = z;
        this.m = str3;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10965e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f10966f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f10967g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f10968h, false);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 5, this.f10969i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable) this.f10970j, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f10971k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f10972l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.m, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
