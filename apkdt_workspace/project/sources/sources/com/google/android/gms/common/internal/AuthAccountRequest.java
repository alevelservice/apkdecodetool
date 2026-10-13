package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@SafeParcelable.Class(creator = "AuthAccountRequestCreator")
/* loaded from: classes.dex */
public class AuthAccountRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AuthAccountRequest> CREATOR = new q();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5218e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    @Deprecated
    private final IBinder f5219f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final Scope[] f5220g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private Integer f5221h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private Integer f5222i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 6, type = "android.accounts.Account")
    private Account f5223j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AuthAccountRequest(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) IBinder iBinder, @SafeParcelable.Param(id = 3) Scope[] scopeArr, @SafeParcelable.Param(id = 4) Integer num, @SafeParcelable.Param(id = 5) Integer num2, @SafeParcelable.Param(id = 6) Account account) {
        this.f5218e = i2;
        this.f5219f = iBinder;
        this.f5220g = scopeArr;
        this.f5221h = num;
        this.f5222i = num2;
        this.f5223j = account;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5218e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5219f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, (Parcelable[]) this.f5220g, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5221h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f5222i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable) this.f5223j, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
