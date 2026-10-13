package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.auth.api.signin.GoogleSignInAccount;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "ResolveAccountRequestCreator")
/* loaded from: classes.dex */
public class ResolveAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<ResolveAccountRequest> CREATOR = new a0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5263e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getAccount", id = 2)
    private final Account f5264f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getSessionId", id = 3)
    private final int f5265g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getSignInAccountHint", id = 4)
    private final GoogleSignInAccount f5266h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public ResolveAccountRequest(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) Account account, @SafeParcelable.Param(id = 3) int i3, @SafeParcelable.Param(id = 4) GoogleSignInAccount googleSignInAccount) {
        this.f5263e = i2;
        this.f5264f = account;
        this.f5265g = i3;
        this.f5266h = googleSignInAccount;
    }

    public Account j() {
        return this.f5264f;
    }

    public int k() {
        return this.f5265g;
    }

    @Nullable
    public GoogleSignInAccount l() {
        return this.f5266h;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5263e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, (Parcelable) j(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) l(), i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public ResolveAccountRequest(Account account, int i2, GoogleSignInAccount googleSignInAccount) {
        this(2, account, i2, googleSignInAccount);
    }
}
