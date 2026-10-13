package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

@SafeParcelable.Class(creator = "TokenDataCreator")
/* loaded from: classes.dex */
public class TokenData extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<TokenData> CREATOR = new e();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4682e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getToken", id = 2)
    private final String f4683f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getExpirationTimeSecs", id = 3)
    private final Long f4684g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isCached", id = 4)
    private final boolean f4685h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "isSnowballed", id = 5)
    private final boolean f4686i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getGrantedScopes", id = 6)
    private final List<String> f4687j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getScopeData", id = 7)
    private final String f4688k;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public TokenData(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) Long l2, @SafeParcelable.Param(id = 4) boolean z, @SafeParcelable.Param(id = 5) boolean z2, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 7) String str2) {
        this.f4682e = i2;
        m.b(str);
        this.f4683f = str;
        this.f4684g = l2;
        this.f4685h = z;
        this.f4686i = z2;
        this.f4687j = list;
        this.f4688k = str2;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof TokenData)) {
            return false;
        }
        TokenData tokenData = (TokenData) obj;
        return TextUtils.equals(this.f4683f, tokenData.f4683f) && k.a(this.f4684g, tokenData.f4684g) && this.f4685h == tokenData.f4685h && this.f4686i == tokenData.f4686i && k.a(this.f4687j, tokenData.f4687j) && k.a(this.f4688k, tokenData.f4688k);
    }

    public int hashCode() {
        return k.a(this.f4683f, this.f4684g, Boolean.valueOf(this.f4685h), Boolean.valueOf(this.f4686i), this.f4687j, this.f4688k);
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4682e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4683f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4684g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4685h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4686i);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 6, this.f4687j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f4688k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
