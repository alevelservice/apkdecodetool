package com.google.android.gms.auth.api.signin.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "GoogleSignInOptionsExtensionCreator")
/* loaded from: classes.dex */
public class GoogleSignInOptionsExtensionParcelable extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GoogleSignInOptionsExtensionParcelable> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4853e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getType", id = 2)
    private int f4854f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getBundle", id = 3)
    private Bundle f4855g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GoogleSignInOptionsExtensionParcelable(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) Bundle bundle) {
        this.f4853e = i2;
        this.f4854f = i3;
        this.f4855g = bundle;
    }

    @KeepForSdk
    public int j() {
        return this.f4854f;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4853e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4855g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
