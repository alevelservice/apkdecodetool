package com.google.android.gms.common;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.k;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
@SafeParcelable.Class(creator = "FeatureCreator")
/* loaded from: classes.dex */
public class Feature extends AbstractSafeParcelable {
    public static final Parcelable.Creator<Feature> CREATOR = new q();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getName", id = 1)
    private final String f4976e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getOldVersion", id = 2)
    @Deprecated
    private final int f4977f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(defaultValue = "-1", getter = "getVersion", id = 3)
    private final long f4978g;

    @KeepForSdk
    public Feature(String str, long j2) {
        this.f4976e = str;
        this.f4978g = j2;
        this.f4977f = -1;
    }

    public boolean equals(@Nullable Object obj) {
        if (obj instanceof Feature) {
            Feature feature = (Feature) obj;
            if (((j() != null && j().equals(feature.j())) || (j() == null && feature.j() == null)) && k() == feature.k()) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return com.google.android.gms.common.internal.k.a(j(), Long.valueOf(k()));
    }

    @KeepForSdk
    public String j() {
        return this.f4976e;
    }

    @KeepForSdk
    public long k() {
        long j2 = this.f4978g;
        return j2 == -1 ? this.f4977f : j2;
    }

    public String toString() {
        k.a a2 = com.google.android.gms.common.internal.k.a(this);
        a2.a("name", j());
        a2.a("version", Long.valueOf(k()));
        return a2.toString();
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, j(), false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f4977f);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    @SafeParcelable.Constructor
    public Feature(@SafeParcelable.Param(id = 1) String str, @SafeParcelable.Param(id = 2) int i2, @SafeParcelable.Param(id = 3) long j2) {
        this.f4976e = str;
        this.f4977f = i2;
        this.f4978g = j2;
    }
}
