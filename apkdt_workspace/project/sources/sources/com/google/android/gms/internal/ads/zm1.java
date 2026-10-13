package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class zm1 extends vh1 {

    /* renamed from: e, reason: collision with root package name */
    private static final Object f10803e = new Object();

    /* renamed from: b, reason: collision with root package name */
    private final long f10804b;

    /* renamed from: c, reason: collision with root package name */
    private final long f10805c;

    /* renamed from: d, reason: collision with root package name */
    private final boolean f10806d;

    public zm1(long j2, boolean z) {
        this(j2, j2, 0L, 0L, z, false);
    }

    @Override // com.google.android.gms.internal.ads.vh1
    public final wh1 a(int i2, wh1 wh1Var, boolean z, long j2) {
        no1.a(i2, 0, 1);
        boolean z2 = this.f10806d;
        long j3 = this.f10805c;
        wh1Var.f10119a = null;
        wh1Var.f10120b = -9223372036854775807L;
        wh1Var.f10121c = -9223372036854775807L;
        wh1Var.f10122d = z2;
        wh1Var.f10123e = false;
        wh1Var.f10126h = 0L;
        wh1Var.f10127i = j3;
        wh1Var.f10124f = 0;
        wh1Var.f10125g = 0;
        wh1Var.f10128j = 0L;
        return wh1Var;
    }

    @Override // com.google.android.gms.internal.ads.vh1
    public final int b() {
        return 1;
    }

    @Override // com.google.android.gms.internal.ads.vh1
    public final int c() {
        return 1;
    }

    private zm1(long j2, long j3, long j4, long j5, boolean z, boolean z2) {
        this.f10804b = j2;
        this.f10805c = j3;
        this.f10806d = z;
    }

    @Override // com.google.android.gms.internal.ads.vh1
    public final xh1 a(int i2, xh1 xh1Var, boolean z) {
        no1.a(i2, 0, 1);
        Object obj = z ? f10803e : null;
        xh1Var.a(obj, obj, 0, this.f10804b, 0L, false);
        return xh1Var;
    }

    @Override // com.google.android.gms.internal.ads.vh1
    public final int a(Object obj) {
        return f10803e.equals(obj) ? 0 : -1;
    }
}
