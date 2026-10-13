package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AccountChangeEventsRequestCreator")
/* loaded from: classes.dex */
public class AccountChangeEventsRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsRequest> CREATOR = new c();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4676e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private int f4677f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    @Deprecated
    private String f4678g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private Account f4679h;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AccountChangeEventsRequest(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) Account account) {
        this.f4676e = i2;
        this.f4677f = i3;
        this.f4678g = str;
        if (account == null && !TextUtils.isEmpty(str)) {
            this.f4679h = new Account(str, "com.google");
        } else {
            this.f4679h = account;
        }
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4676e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4677f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4678g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, (Parcelable) this.f4679h, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public AccountChangeEventsRequest() {
        this.f4676e = 1;
    }
}
