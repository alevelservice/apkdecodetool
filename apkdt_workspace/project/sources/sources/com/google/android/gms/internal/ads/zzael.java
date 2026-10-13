package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
@SafeParcelable.Class(creator = "HttpResponseParcelCreator")
/* loaded from: classes.dex */
public final class zzael extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzael> CREATOR = new d1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final boolean f10902e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f10903f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final int f10904g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final byte[] f10905h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final String[] f10906i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final String[] f10907j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final boolean f10908k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final long f10909l;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzael(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) int i2, @SafeParcelable.Param(id = 4) byte[] bArr, @SafeParcelable.Param(id = 5) String[] strArr, @SafeParcelable.Param(id = 6) String[] strArr2, @SafeParcelable.Param(id = 7) boolean z2, @SafeParcelable.Param(id = 8) long j2) {
        this.f10902e = z;
        this.f10903f = str;
        this.f10904g = i2;
        this.f10905h = bArr;
        this.f10906i = strArr;
        this.f10907j = strArr2;
        this.f10908k = z2;
        this.f10909l = j2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10902e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10903f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f10904g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f10905h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f10906i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f10907j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f10908k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f10909l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
