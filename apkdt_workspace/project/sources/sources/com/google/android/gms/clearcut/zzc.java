package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "CollectForDebugParcelableCreator")
/* loaded from: classes.dex */
public final class zzc extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzc> CREATOR = new d();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "false", id = 1)
    private final boolean f4902e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    private final long f4903f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    private final long f4904g;

    @SafeParcelable.Constructor
    public zzc(@SafeParcelable.Param(id = 1) boolean z, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 2) long j3) {
        this.f4902e = z;
        this.f4903f = j2;
        this.f4904g = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof zzc) {
            zzc zzcVar = (zzc) obj;
            if (this.f4902e == zzcVar.f4902e && this.f4903f == zzcVar.f4903f && this.f4904g == zzcVar.f4904g) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return k.a(Boolean.valueOf(this.f4902e), Long.valueOf(this.f4903f), Long.valueOf(this.f4904g));
    }

    public final String toString() {
        return "CollectForDebugParcelable[skipPersistentStorage: " + this.f4902e + ",collectForDebugStartTimeMillis: " + this.f4903f + ",collectForDebugExpiryTimeMillis: " + this.f4904g + "]";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f4902e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4904g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f4903f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
