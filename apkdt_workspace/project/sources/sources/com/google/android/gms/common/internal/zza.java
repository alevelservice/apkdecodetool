package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@SafeParcelable.Class(creator = "ConnectionInfoCreator")
/* loaded from: classes.dex */
public final class zza extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zza> CREATOR = new e0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    Bundle f5346e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    Feature[] f5347f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = ZimPlatform.REASON_0, id = 3)
    private int f5348g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zza(@SafeParcelable.Param(id = 1) Bundle bundle, @SafeParcelable.Param(id = 2) Feature[] featureArr, @SafeParcelable.Param(id = 3) int i2) {
        this.f5346e = bundle;
        this.f5347f = featureArr;
        this.f5348g = i2;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5346e, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable[]) this.f5347f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5348g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zza() {
    }
}
