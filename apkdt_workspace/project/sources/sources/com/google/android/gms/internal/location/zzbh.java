package com.google.android.gms.internal.location;

import android.os.Parcel;
import android.os.Parcelable;
import com.alipay.mobile.security.zim.biz.ZimPlatform;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Locale;

@VisibleForTesting
@SafeParcelable.Class(creator = "ParcelableGeofenceCreator")
@SafeParcelable.Reserved({1000})
/* loaded from: classes.dex */
public final class zzbh extends AbstractSafeParcelable implements com.google.android.gms.location.b {
    public static final Parcelable.Creator<zzbh> CREATOR = new l();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getRequestId", id = 1)
    private final String f11715e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getExpirationTime", id = 2)
    private final long f11716f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getType", id = 3)
    private final short f11717g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getLatitude", id = 4)
    private final double f11718h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getLongitude", id = 5)
    private final double f11719i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getRadius", id = 6)
    private final float f11720j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getTransitionTypes", id = 7)
    private final int f11721k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = ZimPlatform.REASON_0, getter = "getNotificationResponsiveness", id = 8)
    private final int f11722l;

    @SafeParcelable.Field(defaultValue = "-1", getter = "getLoiteringDelay", id = 9)
    private final int m;

    @SafeParcelable.Constructor
    public zzbh(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 7) int i2, @SafeParcelable.Param(id = 3) short s, @SafeParcelable.Param(id = 4) double d2, @SafeParcelable.Param(id = 5) double d3, @SafeParcelable.Param(id = 6) float f2, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 8) int i3, @SafeParcelable.Param(id = 9) int i4) {
        if (str == null || str.length() > 100) {
            String valueOf = String.valueOf(str);
            throw new IllegalArgumentException(valueOf.length() != 0 ? "requestId is null or too long: ".concat(valueOf) : new String("requestId is null or too long: "));
        }
        if (f2 <= 0.0f) {
            StringBuilder sb = new StringBuilder(31);
            sb.append("invalid radius: ");
            sb.append(f2);
            throw new IllegalArgumentException(sb.toString());
        }
        if (d2 > 90.0d || d2 < -90.0d) {
            StringBuilder sb2 = new StringBuilder(42);
            sb2.append("invalid latitude: ");
            sb2.append(d2);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (d3 > 180.0d || d3 < -180.0d) {
            StringBuilder sb3 = new StringBuilder(43);
            sb3.append("invalid longitude: ");
            sb3.append(d3);
            throw new IllegalArgumentException(sb3.toString());
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            StringBuilder sb4 = new StringBuilder(46);
            sb4.append("No supported transition specified: ");
            sb4.append(i2);
            throw new IllegalArgumentException(sb4.toString());
        }
        this.f11717g = s;
        this.f11715e = str;
        this.f11718h = d2;
        this.f11719i = d3;
        this.f11720j = f2;
        this.f11716f = j2;
        this.f11721k = i5;
        this.f11722l = i3;
        this.m = i4;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzbh)) {
            return false;
        }
        zzbh zzbhVar = (zzbh) obj;
        return this.f11720j == zzbhVar.f11720j && this.f11718h == zzbhVar.f11718h && this.f11719i == zzbhVar.f11719i && this.f11717g == zzbhVar.f11717g;
    }

    public final int hashCode() {
        long doubleToLongBits = Double.doubleToLongBits(this.f11718h);
        int i2 = ((int) (doubleToLongBits ^ (doubleToLongBits >>> 32))) + 31;
        long doubleToLongBits2 = Double.doubleToLongBits(this.f11719i);
        return (((((((i2 * 31) + ((int) (doubleToLongBits2 ^ (doubleToLongBits2 >>> 32)))) * 31) + Float.floatToIntBits(this.f11720j)) * 31) + this.f11717g) * 31) + this.f11721k;
    }

    public final String j() {
        return this.f11715e;
    }

    public final String toString() {
        Locale locale = Locale.US;
        Object[] objArr = new Object[9];
        objArr[0] = this.f11717g != 1 ? null : "CIRCLE";
        objArr[1] = this.f11715e.replaceAll("\\p{C}", "?");
        objArr[2] = Integer.valueOf(this.f11721k);
        objArr[3] = Double.valueOf(this.f11718h);
        objArr[4] = Double.valueOf(this.f11719i);
        objArr[5] = Float.valueOf(this.f11720j);
        objArr[6] = Integer.valueOf(this.f11722l / 1000);
        objArr[7] = Integer.valueOf(this.m);
        objArr[8] = Long.valueOf(this.f11716f);
        return String.format(locale, "Geofence[%s id:%s transitions:%d %.6f, %.6f %.0fm, resp=%ds, dwell=%dms, @%d]", objArr);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f11716f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f11717g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f11718h);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f11719i);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f11720j);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f11721k);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f11722l);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 9, this.m);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }
}
