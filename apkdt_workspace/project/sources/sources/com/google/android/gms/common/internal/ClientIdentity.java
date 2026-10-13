package com.google.android.gms.common.internal;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-base@@17.1.0 */
@KeepForSdk
@SafeParcelable.Class(creator = "ClientIdentityCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public class ClientIdentity extends AbstractSafeParcelable {

    @KeepForSdk
    public static final Parcelable.Creator<ClientIdentity> CREATOR = new r();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = ZimPlatform.REASON_0, id = 1)
    private final int f5252e;

    /* renamed from: f, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 2)
    private final String f5253f;

    @SafeParcelable.Constructor
    public ClientIdentity(@SafeParcelable.Param(id = 1) int i2, @Nullable @SafeParcelable.Param(id = 2) String str) {
        this.f5252e = i2;
        this.f5253f = str;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && (obj instanceof ClientIdentity)) {
            ClientIdentity clientIdentity = (ClientIdentity) obj;
            if (clientIdentity.f5252e == this.f5252e && k.a(clientIdentity.f5253f, this.f5253f)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.f5252e;
    }

    public String toString() {
        int i2 = this.f5252e;
        String str = this.f5253f;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 12);
        sb.append(i2);
        sb.append(":");
        sb.append(str);
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5252e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f5253f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
