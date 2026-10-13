package com.google.android.gms.auth.api.accounttransfer;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "DeviceMetaDataCreator")
/* loaded from: classes.dex */
public class DeviceMetaData extends AbstractSafeParcelable {
    public static final Parcelable.Creator<DeviceMetaData> CREATOR = new i();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4707e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isLockScreenSolved", id = 2)
    private boolean f4708f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getMinAgeOfLockScreen", id = 3)
    private long f4709g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isChallengeAllowed", id = 4)
    private final boolean f4710h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public DeviceMetaData(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) boolean z, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) boolean z2) {
        this.f4707e = i2;
        this.f4708f = z;
        this.f4709g = j2;
        this.f4710h = z2;
    }

    public long j() {
        return this.f4709g;
    }

    public boolean k() {
        return this.f4710h;
    }

    public boolean l() {
        return this.f4708f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4707e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, l());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
