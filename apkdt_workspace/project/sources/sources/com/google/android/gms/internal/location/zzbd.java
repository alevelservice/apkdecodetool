package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.ClientIdentity;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.location.LocationRequest;
import java.util.Collections;
import java.util.List;

@SafeParcelable.Class(creator = "LocationRequestInternalCreator")
@SafeParcelable.Reserved({1000, 2, 3, 4})
/* loaded from: classes.dex */
public final class zzbd extends AbstractSafeParcelable {

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 1)
    private LocationRequest f11702e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequestInternal.DEFAULT_CLIENTS", id = 5)
    private List<ClientIdentity> f11703f;

    /* renamed from: g, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 6)
    private String f11704g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequestInternal.DEFAULT_HIDE_FROM_APP_OPS", id = 7)
    private boolean f11705h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequestInternal.DEFAULT_FORCE_COARSE_LOCATION", id = 8)
    private boolean f11706i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(defaultValueUnchecked = "LocationRequestInternal.DEFAULT_EXEMPT_FROM_THROTTLE", id = 9)
    private boolean f11707j;

    /* renamed from: k, reason: collision with root package name */
    @Nullable
    @SafeParcelable.Field(defaultValueUnchecked = "null", id = 10)
    private String f11708k;

    /* renamed from: l, reason: collision with root package name */
    static final List<ClientIdentity> f11701l = Collections.emptyList();
    public static final Parcelable.Creator<zzbd> CREATOR = new j();

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzbd(@SafeParcelable.Param(id = 1) LocationRequest locationRequest, @SafeParcelable.Param(id = 5) List<ClientIdentity> list, @Nullable @SafeParcelable.Param(id = 6) String str, @SafeParcelable.Param(id = 7) boolean z, @SafeParcelable.Param(id = 8) boolean z2, @SafeParcelable.Param(id = 9) boolean z3, @SafeParcelable.Param(id = 10) String str2) {
        this.f11702e = locationRequest;
        this.f11703f = list;
        this.f11704g = str;
        this.f11705h = z;
        this.f11706i = z2;
        this.f11707j = z3;
        this.f11708k = str2;
    }

    @Deprecated
    public static zzbd a(LocationRequest locationRequest) {
        return new zzbd(locationRequest, f11701l, null, false, false, false, null);
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zzbd)) {
            return false;
        }
        zzbd zzbdVar = (zzbd) obj;
        return com.google.android.gms.common.internal.k.a(this.f11702e, zzbdVar.f11702e) && com.google.android.gms.common.internal.k.a(this.f11703f, zzbdVar.f11703f) && com.google.android.gms.common.internal.k.a(this.f11704g, zzbdVar.f11704g) && this.f11705h == zzbdVar.f11705h && this.f11706i == zzbdVar.f11706i && this.f11707j == zzbdVar.f11707j && com.google.android.gms.common.internal.k.a(this.f11708k, zzbdVar.f11708k);
    }

    public final int hashCode() {
        return this.f11702e.hashCode();
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f11702e);
        if (this.f11704g != null) {
            sb.append(" tag=");
            sb.append(this.f11704g);
        }
        if (this.f11708k != null) {
            sb.append(" moduleId=");
            sb.append(this.f11708k);
        }
        sb.append(" hideAppOps=");
        sb.append(this.f11705h);
        sb.append(" clients=");
        sb.append(this.f11703f);
        sb.append(" forceCoarseLocation=");
        sb.append(this.f11706i);
        if (this.f11707j) {
            sb.append(" exemptFromBackgroundThrottle");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, (Parcelable) this.f11702e, i2, false);
        com.google.android.gms.common.internal.safeparcel.b.c(parcel, 5, this.f11703f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f11704g, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f11705h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f11706i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.f11707j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.f11708k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
