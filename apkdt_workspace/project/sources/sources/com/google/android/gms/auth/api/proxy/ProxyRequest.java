package com.google.android.gms.auth.api.proxy;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdkWithMembers;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@KeepForSdkWithMembers
@SafeParcelable.Class(creator = "ProxyRequestCreator")
/* loaded from: classes.dex */
public class ProxyRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ProxyRequest> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1000)
    private final int f4803e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    public final String f4804f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final int f4805g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final long f4806h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final byte[] f4807i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private Bundle f4808j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ProxyRequest(@SafeParcelable.Param(id = 1000) int i2, @SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) byte[] bArr, @SafeParcelable.Param(id = 5) Bundle bundle) {
        this.f4803e = i2;
        this.f4804f = str;
        this.f4805g = i3;
        this.f4806h = j2;
        this.f4807i = bArr;
        this.f4808j = bundle;
    }

    public String toString() {
        String str = this.f4804f;
        int i2 = this.f4805g;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 42);
        sb.append("ProxyRequest[ url: ");
        sb.append(str);
        sb.append(", method: ");
        sb.append(i2);
        sb.append(" ]");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4804f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4805g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4806h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4807i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4808j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1000, this.f4803e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
