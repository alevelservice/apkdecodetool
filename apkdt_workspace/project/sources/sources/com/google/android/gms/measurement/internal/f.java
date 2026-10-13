package com.google.android.gms.measurement.internal;

/* loaded from: classes.dex */
final class f {

    /* renamed from: a, reason: collision with root package name */
    final String f12882a;

    /* renamed from: b, reason: collision with root package name */
    final String f12883b;

    /* renamed from: c, reason: collision with root package name */
    final long f12884c;

    /* renamed from: d, reason: collision with root package name */
    final long f12885d;

    /* renamed from: e, reason: collision with root package name */
    final long f12886e;

    /* renamed from: f, reason: collision with root package name */
    final long f12887f;

    /* renamed from: g, reason: collision with root package name */
    final long f12888g;

    /* renamed from: h, reason: collision with root package name */
    final Long f12889h;

    /* renamed from: i, reason: collision with root package name */
    final Long f12890i;

    /* renamed from: j, reason: collision with root package name */
    final Long f12891j;

    /* renamed from: k, reason: collision with root package name */
    final Boolean f12892k;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, String str2, long j2, long j3, long j4, long j5, long j6, Long l2, Long l3, Long l4, Boolean bool) {
        com.google.android.gms.common.internal.m.b(str);
        com.google.android.gms.common.internal.m.b(str2);
        com.google.android.gms.common.internal.m.a(j2 >= 0);
        com.google.android.gms.common.internal.m.a(j3 >= 0);
        com.google.android.gms.common.internal.m.a(j4 >= 0);
        com.google.android.gms.common.internal.m.a(j6 >= 0);
        this.f12882a = str;
        this.f12883b = str2;
        this.f12884c = j2;
        this.f12885d = j3;
        this.f12886e = j4;
        this.f12887f = j5;
        this.f12888g = j6;
        this.f12889h = l2;
        this.f12890i = l3;
        this.f12891j = l4;
        this.f12892k = bool;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f a(long j2) {
        return new f(this.f12882a, this.f12883b, this.f12884c, this.f12885d, this.f12886e, j2, this.f12888g, this.f12889h, this.f12890i, this.f12891j, this.f12892k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f a(long j2, long j3) {
        return new f(this.f12882a, this.f12883b, this.f12884c, this.f12885d, this.f12886e, this.f12887f, j2, Long.valueOf(j3), this.f12890i, this.f12891j, this.f12892k);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final f a(Long l2, Long l3, Boolean bool) {
        return new f(this.f12882a, this.f12883b, this.f12884c, this.f12885d, this.f12886e, this.f12887f, this.f12888g, this.f12889h, l2, l3, (bool == null || bool.booleanValue()) ? bool : null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(String str, String str2, long j2, long j3, long j4, long j5, Long l2, Long l3, Long l4, Boolean bool) {
        this(str, str2, j2, j3, 0L, j4, 0L, null, null, null, null);
    }
}
