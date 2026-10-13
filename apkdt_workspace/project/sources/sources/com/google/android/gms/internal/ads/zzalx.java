package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import javax.annotation.ParametersAreNonnullByDefault;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@ParametersAreNonnullByDefault
@SafeParcelable.Class(creator = "RtbVersionInfoParcelCreator")
/* loaded from: classes.dex */
public final class zzalx extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzalx> CREATOR = new v5();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    private final int f10938e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final int f10939f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final int f10940g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzalx(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) int i4) {
        this.f10938e = i2;
        this.f10939f = i3;
        this.f10940g = i4;
    }

    public static zzalx a(com.google.android.gms.ads.mediation.y yVar) {
        yVar.a();
        throw null;
    }

    public final String toString() {
        int i2 = this.f10938e;
        int i3 = this.f10939f;
        int i4 = this.f10940g;
        StringBuilder sb = new StringBuilder(35);
        sb.append(i2);
        sb.append(".");
        sb.append(i3);
        sb.append(".");
        sb.append(i4);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f10938e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f10939f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f10940g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
