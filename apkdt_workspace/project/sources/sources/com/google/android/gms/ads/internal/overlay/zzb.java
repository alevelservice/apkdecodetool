package com.google.android.gms.ads.internal.overlay;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "AdLauncherIntentInfoCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class zzb extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzb> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final String f4573e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final String f4574f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final String f4575g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final String f4576h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final String f4577i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final String f4578j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    private final String f4579k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 9)
    public final Intent f4580l;

    public zzb(String str, String str2, String str3, String str4, String str5, String str6, String str7) {
        this(str, str2, str3, str4, str5, str6, str7, null);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4573e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4574f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4575g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4576h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f4577i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f4578j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f4579k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, (Parcelable) this.f4580l, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zzb(Intent intent) {
        this(null, null, null, null, null, null, null, intent);
    }

    @SafeParcelable.Constructor
    public zzb(@SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) String str2, @SafeParcelable.Param(id = 4) String str3, @SafeParcelable.Param(id = 5) String str4, @SafeParcelable.Param(id = 6) String str5, @SafeParcelable.Param(id = 7) String str6, @SafeParcelable.Param(id = 8) String str7, @SafeParcelable.Param(id = 9) Intent intent) {
        this.f4573e = str;
        this.f4574f = str2;
        this.f4575g = str3;
        this.f4576h = str4;
        this.f4577i = str5;
        this.f4578j = str6;
        this.f4579k = str7;
        this.f4580l = intent;
    }
}
