package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "SignInRequestCreator")
/* loaded from: classes.dex */
public final class zai extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zai> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f13433e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getResolveAccountRequest", id = 2)
    private final ResolveAccountRequest f13434f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zai(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) ResolveAccountRequest resolveAccountRequest) {
        this.f13433e = i2;
        this.f13434f = resolveAccountRequest;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f13433e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f13434f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zai(ResolveAccountRequest resolveAccountRequest) {
        this(1, resolveAccountRequest);
    }
}
