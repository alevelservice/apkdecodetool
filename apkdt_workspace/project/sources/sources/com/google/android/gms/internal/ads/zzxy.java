package com.google.android.gms.internal.ads;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
@SafeParcelable.Class(creator = "SearchAdRequestParcelCreator")
@SafeParcelable.Reserved({1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14})
/* loaded from: classes.dex */
public final class zzxy extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzxy> CREATOR = new hv1();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 15)
    public final String f11271e;

    public zzxy(com.google.android.gms.ads.search.b bVar) {
        bVar.a();
        throw null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, this.f11271e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzxy(@SafeParcelable.Param(id = 15) String str) {
        this.f11271e = str;
    }
}
