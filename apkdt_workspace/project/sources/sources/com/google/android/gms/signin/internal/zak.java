package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "SignInResponseCreator")
/* loaded from: classes.dex */
public final class zak extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zak> CREATOR = new d();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f13435e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getConnectionResult", id = 2)
    private final ConnectionResult f13436f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(getter = "getResolveAccountResponse", id = 3)
    private final ResolveAccountResponse f13437g;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zak(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) ConnectionResult connectionResult, @Nullable @SafeParcelable.Param(id = 3) ResolveAccountResponse resolveAccountResponse) {
        this.f13435e = i2;
        this.f13436f = connectionResult;
        this.f13437g = resolveAccountResponse;
    }

    public final ConnectionResult j() {
        return this.f13436f;
    }

    @Nullable
    public final ResolveAccountResponse k() {
        return this.f13437g;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f13435e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) this.f13436f, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) this.f13437g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public zak(int i2) {
        this(new ConnectionResult(8, null), null);
    }

    private zak(ConnectionResult connectionResult, @Nullable ResolveAccountResponse resolveAccountResponse) {
        this(1, connectionResult, null);
    }
}
