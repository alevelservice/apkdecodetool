package com.google.android.gms.auth.api.proxy;

import android.app.PendingIntent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepForSdkWithMembers
@SafeParcelable.Class(creator = "ProxyResponseCreator")
/* loaded from: classes.dex */
public class ProxyResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyResponse> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1000)
    private final int f4809e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final int f4810f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final PendingIntent f4811g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final int f4812h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final Bundle f4813i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    public final byte[] f4814j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ProxyResponse(@SafeParcelable.Param(id = 1000) int i2, @SafeParcelable.Param(id = 1) int i3, @SafeParcelable.Param(id = 2) PendingIntent pendingIntent, @SafeParcelable.Param(id = 3) int i4, @SafeParcelable.Param(id = 4) Bundle bundle, @SafeParcelable.Param(id = 5) byte[] bArr) {
        this.f4809e = i2;
        this.f4810f = i3;
        this.f4812h = i4;
        this.f4813i = bundle;
        this.f4814j = bArr;
        this.f4811g = pendingIntent;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4810f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f4811g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4812h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4813i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4814j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f4809e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
