package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "AccountChangeEventCreator")
/* loaded from: classes.dex */
public class AccountChangeEvent extends AbstractSafeParcelable {
    public static final Parcelable.Creator<AccountChangeEvent> CREATOR = new b();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f4670e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final long f4671f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final String f4672g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    private final int f4673h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 5)
    private final int f4674i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    private final String f4675j;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public AccountChangeEvent(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 3) String str, @SafeParcelable.Param(id = 4) int i3, @SafeParcelable.Param(id = 5) int i4, @SafeParcelable.Param(id = 6) String str2) {
        this.f4670e = i2;
        this.f4671f = j2;
        m.a(str);
        this.f4672g = str;
        this.f4673h = i3;
        this.f4674i = i4;
        this.f4675j = str2;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof AccountChangeEvent) {
            AccountChangeEvent accountChangeEvent = (AccountChangeEvent) obj;
            if (this.f4670e == accountChangeEvent.f4670e && this.f4671f == accountChangeEvent.f4671f && k.a(this.f4672g, accountChangeEvent.f4672g) && this.f4673h == accountChangeEvent.f4673h && this.f4674i == accountChangeEvent.f4674i && k.a(this.f4675j, accountChangeEvent.f4675j)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return k.a(Integer.valueOf(this.f4670e), Long.valueOf(this.f4671f), this.f4672g, Integer.valueOf(this.f4673h), Integer.valueOf(this.f4674i), this.f4675j);
    }

    public String toString() {
        int i2 = this.f4673h;
        String str = i2 != 1 ? i2 != 2 ? i2 != 3 ? i2 != 4 ? "UNKNOWN" : "RENAMED_TO" : "RENAMED_FROM" : "REMOVED" : "ADDED";
        String str2 = this.f4672g;
        String str3 = this.f4675j;
        int i3 = this.f4674i;
        StringBuilder sb = new StringBuilder(String.valueOf(str2).length() + 91 + str.length() + String.valueOf(str3).length());
        sb.append("AccountChangeEvent {accountName = ");
        sb.append(str2);
        sb.append(", changeType = ");
        sb.append(str);
        sb.append(", changeData = ");
        sb.append(str3);
        sb.append(", eventIndex = ");
        sb.append(i3);
        sb.append("}");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4670e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4671f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4672g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f4673h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f4674i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f4675j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
