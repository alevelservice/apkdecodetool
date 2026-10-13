package com.google.android.gms.measurement.internal;

import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@SafeParcelable.Class(creator = "UserAttributeParcelCreator")
/* loaded from: classes.dex */
public final class zzjn extends AbstractSafeParcelable {
    public static final Parcelable.Creator<zzjn> CREATOR = new p8();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.Field(id = 1)
    private final int f13384e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(id = 2)
    public final String f13385f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(id = 3)
    public final long f13386g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(id = 4)
    public final Long f13387h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(id = 6)
    public final String f13388i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(id = 7)
    public final String f13389j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(id = 8)
    public final Double f13390k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjn(o8 o8Var) {
        this(o8Var.f13131c, o8Var.f13132d, o8Var.f13133e, o8Var.f13130b);
    }

    public final Object j() {
        Long l2 = this.f13387h;
        if (l2 != null) {
            return l2;
        }
        Double d2 = this.f13390k;
        if (d2 != null) {
            return d2;
        }
        String str = this.f13388i;
        if (str != null) {
            return str;
        }
        return null;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f13384e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, this.f13385f, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 3, this.f13386g);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f13387h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, (Float) null, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 6, this.f13388i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 7, this.f13389j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.f13390k, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjn(String str, long j2, Object obj, String str2) {
        com.google.android.gms.common.internal.m.b(str);
        this.f13384e = 2;
        this.f13385f = str;
        this.f13386g = j2;
        this.f13389j = str2;
        if (obj == null) {
            this.f13387h = null;
            this.f13390k = null;
            this.f13388i = null;
            return;
        }
        if (obj instanceof Long) {
            this.f13387h = (Long) obj;
            this.f13390k = null;
            this.f13388i = null;
        } else if (obj instanceof String) {
            this.f13387h = null;
            this.f13390k = null;
            this.f13388i = (String) obj;
        } else {
            if (obj instanceof Double) {
                this.f13387h = null;
                this.f13390k = (Double) obj;
                this.f13388i = null;
                return;
            }
            throw new IllegalArgumentException("User attribute given of un-supported type");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzjn(String str, long j2, String str2) {
        com.google.android.gms.common.internal.m.b(str);
        this.f13384e = 2;
        this.f13385f = str;
        this.f13386g = 0L;
        this.f13387h = null;
        this.f13390k = null;
        this.f13388i = null;
        this.f13389j = null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public zzjn(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) String str, @SafeParcelable.Param(id = 3) long j2, @SafeParcelable.Param(id = 4) Long l2, @SafeParcelable.Param(id = 5) Float f2, @SafeParcelable.Param(id = 6) String str2, @SafeParcelable.Param(id = 7) String str3, @SafeParcelable.Param(id = 8) Double d2) {
        this.f13384e = i2;
        this.f13385f = str;
        this.f13386g = j2;
        this.f13387h = l2;
        if (i2 == 1) {
            this.f13390k = f2 != null ? Double.valueOf(f2.doubleValue()) : null;
        } else {
            this.f13390k = d2;
        }
        this.f13388i = str2;
        this.f13389j = str3;
    }
}
