package com.google.android.gms.common.stats;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@SafeParcelable.Class(creator = "WakeLockEventCreator")
/* loaded from: classes.dex */
public final class WakeLockEvent extends StatsEvent {
    public static final Parcelable.Creator<WakeLockEvent> CREATOR = new e();

    /* renamed from: e, reason: collision with root package name */
    @SafeParcelable.VersionField(id = 1)
    private final int f5400e;

    /* renamed from: f, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getTimeMillis", id = 2)
    private final long f5401f;

    /* renamed from: g, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getEventType", id = 11)
    private int f5402g;

    /* renamed from: h, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getWakeLockName", id = 4)
    private final String f5403h;

    /* renamed from: i, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getSecondaryWakeLockName", id = 10)
    private final String f5404i;

    /* renamed from: j, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getCodePackage", id = 17)
    private final String f5405j;

    /* renamed from: k, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getWakeLockType", id = 5)
    private final int f5406k;

    /* renamed from: l, reason: collision with root package name */
    @SafeParcelable.Field(getter = "getCallingPackages", id = 6)
    private final List<String> f5407l;

    @SafeParcelable.Field(getter = "getEventKey", id = 12)
    private final String m;

    @SafeParcelable.Field(getter = "getElapsedRealtime", id = 8)
    private final long n;

    @SafeParcelable.Field(getter = "getDeviceState", id = 14)
    private int o;

    @SafeParcelable.Field(getter = "getHostPackage", id = 13)
    private final String p;

    @SafeParcelable.Field(getter = "getBeginPowerPercentage", id = 15)
    private final float q;

    @SafeParcelable.Field(getter = "getTimeout", id = 16)
    private final long r;

    @SafeParcelable.Field(getter = "getAcquiredWithTimeout", id = 18)
    private final boolean s;
    private long t;

    /* JADX INFO: Access modifiers changed from: package-private */
    @SafeParcelable.Constructor
    public WakeLockEvent(@SafeParcelable.Param(id = 1) int i2, @SafeParcelable.Param(id = 2) long j2, @SafeParcelable.Param(id = 11) int i3, @SafeParcelable.Param(id = 4) String str, @SafeParcelable.Param(id = 5) int i4, @SafeParcelable.Param(id = 6) List<String> list, @SafeParcelable.Param(id = 12) String str2, @SafeParcelable.Param(id = 8) long j3, @SafeParcelable.Param(id = 14) int i5, @SafeParcelable.Param(id = 10) String str3, @SafeParcelable.Param(id = 13) String str4, @SafeParcelable.Param(id = 15) float f2, @SafeParcelable.Param(id = 16) long j4, @SafeParcelable.Param(id = 17) String str5, @SafeParcelable.Param(id = 18) boolean z) {
        this.f5400e = i2;
        this.f5401f = j2;
        this.f5402g = i3;
        this.f5403h = str;
        this.f5404i = str3;
        this.f5405j = str5;
        this.f5406k = i4;
        this.t = -1L;
        this.f5407l = list;
        this.m = str2;
        this.n = j3;
        this.o = i5;
        this.p = str4;
        this.q = f2;
        this.r = j4;
        this.s = z;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long V() {
        return this.t;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final String W() {
        String str = this.f5403h;
        int i2 = this.f5406k;
        List<String> list = this.f5407l;
        String join = list == null ? "" : TextUtils.join(",", list);
        int i3 = this.o;
        String str2 = this.f5404i;
        if (str2 == null) {
            str2 = "";
        }
        String str3 = this.p;
        if (str3 == null) {
            str3 = "";
        }
        float f2 = this.q;
        String str4 = this.f5405j;
        String str5 = str4 != null ? str4 : "";
        boolean z = this.s;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 51 + String.valueOf(join).length() + String.valueOf(str2).length() + String.valueOf(str3).length() + String.valueOf(str5).length());
        sb.append("\t");
        sb.append(str);
        sb.append("\t");
        sb.append(i2);
        sb.append("\t");
        sb.append(join);
        sb.append("\t");
        sb.append(i3);
        sb.append("\t");
        sb.append(str2);
        sb.append("\t");
        sb.append(str3);
        sb.append("\t");
        sb.append(f2);
        sb.append("\t");
        sb.append(str5);
        sb.append("\t");
        sb.append(z);
        return sb.toString();
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final int j() {
        return this.f5402g;
    }

    @Override // com.google.android.gms.common.stats.StatsEvent
    public final long k() {
        return this.f5401f;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i2) {
        int a2 = com.google.android.gms.common.internal.safeparcel.b.a(parcel);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 1, this.f5400e);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 2, k());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 4, this.f5403h, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 5, this.f5406k);
        com.google.android.gms.common.internal.safeparcel.b.b(parcel, 6, this.f5407l, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 8, this.n);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 10, this.f5404i, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 11, j());
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 12, this.m, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 13, this.p, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 14, this.o);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 15, this.q);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 16, this.r);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 17, this.f5405j, false);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, 18, this.s);
        com.google.android.gms.common.internal.safeparcel.b.a(parcel, a2);
    }

    public WakeLockEvent(long j2, int i2, String str, int i3, List<String> list, String str2, long j3, int i4, String str3, String str4, float f2, long j4, String str5, boolean z) {
        this(2, j2, i2, str, i3, list, str2, j3, i4, str3, str4, f2, j4, str5, z);
    }
}
