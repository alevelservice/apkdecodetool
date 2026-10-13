package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "AccountChangeEventsResponseCreator")
/* loaded from: classes.dex */
public class AccountChangeEventsResponse extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEventsResponse> CREATOR = new d();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4680e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final List<AccountChangeEvent> f4681f;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AccountChangeEventsResponse(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) List<AccountChangeEvent> list) {
        this.f4680e = i2;
        m.a(list);
        this.f4681f = list;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4680e);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 2, this.f4681f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
