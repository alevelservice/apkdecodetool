package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.location.zzj;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class(creator = "DeviceOrientationRequestInternalCreator")
/* loaded from: classes.dex */
public final class zzm extends AbstractSafeParcelable {

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequestInternal.DEFAULT_DEVICE_ORIENTATION_REQUEST", id = 1)
    private zzj f11725e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "DeviceOrientationRequestInternal.DEFAULT_CLIENTS", id = 2)
    private List<ClientIdentity> f11726f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 3)
    private String f11727g;

    /* renamed from: h, reason: collision with root package name */
    @VisibleForTesting
    static final List<ClientIdentity> f11723h = Collections.emptyList();

    /* renamed from: i, reason: collision with root package name */
    static final zzj f11724i = new zzj();
    public static final Parcelable.Creator<zzm> CREATOR = new t();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzm(@SafeParcelable.Param(id = 1) zzj zzjVar, @SafeParcelable.Param(id = 2) List<ClientIdentity> list, @SafeParcelable.Param(id = 3) String str) {
        this.f11725e = zzjVar;
        this.f11726f = list;
        this.f11727g = str;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzm)) {
            return false;
        }
        zzm zzmVar = (zzm) obj;
        return com.google.android.gms.common.internal.k.a(this.f11725e, zzmVar.f11725e) && com.google.android.gms.common.internal.k.a(this.f11726f, zzmVar.f11726f) && com.google.android.gms.common.internal.k.a(this.f11727g, zzmVar.f11727g);
    }

    public final int hashCode() {
        return this.f11725e.hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable) this.f11725e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 2, this.f11726f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f11727g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
