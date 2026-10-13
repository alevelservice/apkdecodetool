package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "ResolveAccountResponseCreator")
/* loaded from: classes.dex */
public class ResolveAccountResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountResponse> CREATOR = new b0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5267e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private IBinder f5268f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getConnectionResult", id = 3)
    private ConnectionResult f5269g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getSaveDefaultAccount", id = 4)
    private boolean f5270h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isFromCrossClientAuth", id = 5)
    private boolean f5271i;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ResolveAccountResponse(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) ConnectionResult connectionResult, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2) {
        this.f5267e = i2;
        this.f5268f = iBinder;
        this.f5269g = connectionResult;
        this.f5270h = z;
        this.f5271i = z2;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ResolveAccountResponse)) {
            return false;
        }
        ResolveAccountResponse resolveAccountResponse = (ResolveAccountResponse) obj;
        return this.f5269g.equals(resolveAccountResponse.f5269g) && j().equals(resolveAccountResponse.j());
    }

    public IAccountAccessor j() {
        return IAccountAccessor.Stub.asInterface(this.f5268f);
    }

    public ConnectionResult k() {
        return this.f5269g;
    }

    public boolean l() {
        return this.f5270h;
    }

    public boolean m() {
        return this.f5271i;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5267e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5268f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable) k(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, l());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, m());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
