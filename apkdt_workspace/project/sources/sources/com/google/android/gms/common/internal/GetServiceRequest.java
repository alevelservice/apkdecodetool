package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.google.android.gms.common.Feature;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.IAccountAccessor;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
@SafeParcelable.Class(creator = "GetServiceRequestCreator")
@SafeParcelable.Reserved({9})
/* loaded from: classes.dex */
public class GetServiceRequest extends AbstractSafeParcelable {
    public static final Parcelable.Creator<GetServiceRequest> CREATOR = new f0();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5254e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final int f5255f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private int f5256g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    String f5257h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    IBinder f5258i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    Scope[] f5259j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    Bundle f5260k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    Account f5261l;

    @SafeParcelable.Field(id = 10)
    Feature[] m;

    @SafeParcelable.Field(id = 11)
    Feature[] n;

    @SafeParcelable.Field(id = 12)
    private boolean o;

    @SafeParcelable.Field(defaultValue = ZimPlatform.REASON_0, id = 13)
    private int p;

    public GetServiceRequest(int i2) {
        this.f5254e = 4;
        this.f5256g = com.google.android.gms.common.d.f5167a;
        this.f5255f = i2;
        this.o = true;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5254e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5255f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f5256g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5257h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f5258i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, (Parcelable[]) this.f5259j, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f5260k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, (Parcelable) this.f5261l, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, (Parcelable[]) this.m, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, (Parcelable[]) this.n, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.o);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.p);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public GetServiceRequest(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) int i3, @SafeParcelable.Param(id = 3) int i4, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) IBinder iBinder, @SafeParcelable.Param(id = 6) Scope[] scopeArr, @SafeParcelable.Param(id = 7) Bundle bundle, @SafeParcelable.Param(id = 8) Account account, @SafeParcelable.Param(id = 10) Feature[] featureArr, @SafeParcelable.Param(id = 11) Feature[] featureArr2, @SafeParcelable.Param(id = 12) boolean z, @SafeParcelable.Param(id = 13) int i5) {
        this.f5254e = i2;
        this.f5255f = i3;
        this.f5256g = i4;
        if ("com.google.android.gms".equals(str)) {
            this.f5257h = "com.google.android.gms";
        } else {
            this.f5257h = str;
        }
        if (i2 < 2) {
            this.f5261l = iBinder != null ? AccountAccessor.getAccountBinderSafe(IAccountAccessor.Stub.asInterface(iBinder)) : null;
        } else {
            this.f5258i = iBinder;
            this.f5261l = account;
        }
        this.f5259j = scopeArr;
        this.f5260k = bundle;
        this.m = featureArr;
        this.n = featureArr2;
        this.o = z;
        this.p = i5;
    }
}
