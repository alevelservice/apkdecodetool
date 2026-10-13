package com.google.android.gms.internal.ads;

import android.net.Uri;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class xg implements wn1 {

    /* renamed from: a, reason: collision with root package name */
    private final wn1 f10338a;

    /* renamed from: b, reason: collision with root package name */
    private final long f10339b;

    /* renamed from: c, reason: collision with root package name */
    private final wn1 f10340c;

    /* renamed from: d, reason: collision with root package name */
    private long f10341d;

    /* renamed from: e, reason: collision with root package name */
    private Uri f10342e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public xg(wn1 wn1Var, int i2, wn1 wn1Var2) {
        this.f10338a = wn1Var;
        this.f10339b = i2;
        this.f10340c = wn1Var2;
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final long a(bo1 bo1Var) {
        bo1 bo1Var2;
        bo1 bo1Var3;
        this.f10342e = bo1Var.f5821a;
        long j2 = bo1Var.f5824d;
        long j3 = this.f10339b;
        if (j2 >= j3) {
            bo1Var2 = null;
        } else {
            long j4 = bo1Var.f5825e;
            bo1Var2 = new bo1(bo1Var.f5821a, j2, j4 != -1 ? Math.min(j4, j3 - j2) : j3 - j2, null);
        }
        long j5 = bo1Var.f5825e;
        if (j5 == -1 || bo1Var.f5824d + j5 > this.f10339b) {
            long max = Math.max(this.f10339b, bo1Var.f5824d);
            long j6 = bo1Var.f5825e;
            bo1Var3 = new bo1(bo1Var.f5821a, max, j6 != -1 ? Math.min(j6, (bo1Var.f5824d + j6) - this.f10339b) : -1L, null);
        } else {
            bo1Var3 = null;
        }
        long a2 = bo1Var2 != null ? this.f10338a.a(bo1Var2) : 0L;
        long a3 = bo1Var3 != null ? this.f10340c.a(bo1Var3) : 0L;
        this.f10341d = bo1Var.f5824d;
        if (a2 == -1 || a3 == -1) {
            return -1L;
        }
        return a2 + a3;
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final void close() {
        this.f10338a.close();
        this.f10340c.close();
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final Uri getUri() {
        return this.f10342e;
    }

    @Override // com.google.android.gms.internal.ads.wn1
    public final int a(byte[] bArr, int i2, int i3) {
        int i4;
        long j2 = this.f10341d;
        long j3 = this.f10339b;
        if (j2 < j3) {
            i4 = this.f10338a.a(bArr, i2, (int) Math.min(i3, j3 - j2));
            this.f10341d += i4;
        } else {
            i4 = 0;
        }
        if (this.f10341d < this.f10339b) {
            return i4;
        }
        int a2 = this.f10340c.a(bArr, i2 + i4, i3 - i4);
        int i5 = i4 + a2;
        this.f10341d += a2;
        return i5;
    }
}
