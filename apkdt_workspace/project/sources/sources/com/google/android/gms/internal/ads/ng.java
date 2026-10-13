package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.faceauth.api.AntDetector;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class ng implements oh1 {

    /* renamed from: a, reason: collision with root package name */
    private final ao1 f8336a;

    /* renamed from: b, reason: collision with root package name */
    private long f8337b;

    /* renamed from: c, reason: collision with root package name */
    private long f8338c;

    /* renamed from: d, reason: collision with root package name */
    private long f8339d;

    /* renamed from: e, reason: collision with root package name */
    private long f8340e;

    /* renamed from: f, reason: collision with root package name */
    private int f8341f;

    /* renamed from: g, reason: collision with root package name */
    private boolean f8342g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ng() {
        this(15000, e.b.b.a.a.a.c.WARN_INT, 2500L, 5000L);
    }

    @Override // com.google.android.gms.internal.ads.oh1
    public final void a(ph1[] ph1VarArr, bn1 bn1Var, qn1 qn1Var) {
        this.f8341f = 0;
        for (int i2 = 0; i2 < ph1VarArr.length; i2++) {
            if (qn1Var.a(i2) != null) {
                this.f8341f += cp1.b(ph1VarArr[i2].m());
            }
        }
        this.f8336a.a(this.f8341f);
    }

    @Override // com.google.android.gms.internal.ads.oh1
    public final void b() {
        a(true);
    }

    @Override // com.google.android.gms.internal.ads.oh1
    public final void c() {
        a(true);
    }

    public final synchronized void d(int i2) {
        this.f8338c = i2 * 1000;
    }

    @Override // com.google.android.gms.internal.ads.oh1
    public final void zzei() {
        a(false);
    }

    private ng(int i2, int i3, long j2, long j3) {
        this.f8336a = new ao1(true, AntDetector.ACTION_ID_SAMPLE);
        this.f8337b = 15000000L;
        this.f8338c = 30000000L;
        this.f8339d = 2500000L;
        this.f8340e = 5000000L;
    }

    public final synchronized void b(int i2) {
        this.f8340e = i2 * 1000;
    }

    public final synchronized void c(int i2) {
        this.f8337b = i2 * 1000;
    }

    @Override // com.google.android.gms.internal.ads.oh1
    public final un1 a() {
        return this.f8336a;
    }

    @Override // com.google.android.gms.internal.ads.oh1
    public final synchronized boolean a(long j2, boolean z) {
        long j3;
        j3 = z ? this.f8340e : this.f8339d;
        return j3 <= 0 || j2 >= j3;
    }

    @Override // com.google.android.gms.internal.ads.oh1
    public final synchronized boolean a(long j2) {
        boolean z = false;
        char c2 = j2 > this.f8338c ? (char) 0 : j2 < this.f8337b ? (char) 2 : (char) 1;
        boolean z2 = this.f8336a.d() >= this.f8341f;
        if (c2 == 2 || (c2 == 1 && this.f8342g && !z2)) {
            z = true;
        }
        this.f8342g = z;
        return this.f8342g;
    }

    public final synchronized void a(int i2) {
        this.f8339d = i2 * 1000;
    }

    @VisibleForTesting
    private final void a(boolean z) {
        this.f8341f = 0;
        this.f8342g = false;
        if (z) {
            this.f8336a.c();
        }
    }
}
