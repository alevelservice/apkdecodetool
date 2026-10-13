package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class i81 extends g81 {

    /* renamed from: d, reason: collision with root package name */
    private final byte[] f7246d;

    /* renamed from: e, reason: collision with root package name */
    private int f7247e;

    /* renamed from: f, reason: collision with root package name */
    private int f7248f;

    /* renamed from: g, reason: collision with root package name */
    private int f7249g;

    /* renamed from: h, reason: collision with root package name */
    private int f7250h;

    /* renamed from: i, reason: collision with root package name */
    private int f7251i;

    /* renamed from: j, reason: collision with root package name */
    private int f7252j;

    private i81(byte[] bArr, int i2, int i3, boolean z) {
        super();
        this.f7252j = Integer.MAX_VALUE;
        this.f7246d = bArr;
        this.f7247e = i3 + i2;
        this.f7249g = i2;
        this.f7250h = this.f7249g;
    }

    private final byte A() {
        int i2 = this.f7249g;
        if (i2 != this.f7247e) {
            byte[] bArr = this.f7246d;
            this.f7249g = i2 + 1;
            return bArr[i2];
        }
        throw o91.zzazx();
    }

    /* JADX WARN: Code restructure failed: missing block: B:33:0x0066, code lost:
    
        if (r2[r3] >= 0) goto L32;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int v() {
        /*
            r5 = this;
            int r0 = r5.f7249g
            int r1 = r5.f7247e
            if (r1 == r0) goto L6b
            byte[] r2 = r5.f7246d
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.f7249g = r3
            return r0
        L11:
            int r1 = r1 - r3
            r4 = 9
            if (r1 < r4) goto L6b
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            if (r0 >= 0) goto L22
            r0 = r0 ^ (-128(0xffffffffffffff80, float:NaN))
            goto L68
        L22:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            if (r0 < 0) goto L2f
            r0 = r0 ^ 16256(0x3f80, float:2.278E-41)
        L2d:
            r1 = r3
            goto L68
        L2f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            if (r0 >= 0) goto L3d
            r2 = -2080896(0xffffffffffe03f80, float:NaN)
            r0 = r0 ^ r2
            goto L68
        L3d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            r4 = 266354560(0xfe03f80, float:2.2112565E-29)
            r0 = r0 ^ r4
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L68
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L2d
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 < 0) goto L6b
        L68:
            r5.f7249g = r1
            return r0
        L6b:
            long r0 = r5.u()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.i81.v():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:40:0x00b0, code lost:
    
        if (r2[r0] >= 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final long w() {
        /*
            Method dump skipped, instructions count: 186
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.i81.w():long");
    }

    private final int x() {
        int i2 = this.f7249g;
        if (this.f7247e - i2 >= 4) {
            byte[] bArr = this.f7246d;
            this.f7249g = i2 + 4;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }
        throw o91.zzazx();
    }

    private final long y() {
        int i2 = this.f7249g;
        if (this.f7247e - i2 >= 8) {
            byte[] bArr = this.f7246d;
            this.f7249g = i2 + 8;
            return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
        }
        throw o91.zzazx();
    }

    private final void z() {
        this.f7247e += this.f7248f;
        int i2 = this.f7247e;
        int i3 = i2 - this.f7250h;
        int i4 = this.f7252j;
        if (i3 > i4) {
            this.f7248f = i3 - i4;
            this.f7247e = i2 - this.f7248f;
        } else {
            this.f7248f = 0;
        }
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final void a(int i2) {
        if (this.f7251i != i2) {
            throw o91.zzbab();
        }
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final boolean b(int i2) {
        int d2;
        int i3 = i2 & 7;
        int i4 = 0;
        if (i3 == 0) {
            if (this.f7247e - this.f7249g >= 10) {
                while (i4 < 10) {
                    byte[] bArr = this.f7246d;
                    int i5 = this.f7249g;
                    this.f7249g = i5 + 1;
                    if (bArr[i5] < 0) {
                        i4++;
                    }
                }
                throw o91.zzazz();
            }
            while (i4 < 10) {
                if (A() < 0) {
                    i4++;
                }
            }
            throw o91.zzazz();
            return true;
        }
        if (i3 == 1) {
            f(8);
            return true;
        }
        if (i3 != 2) {
            if (i3 != 3) {
                if (i3 == 4) {
                    return false;
                }
                if (i3 == 5) {
                    f(4);
                    return true;
                }
                throw o91.zzbac();
            }
            do {
                d2 = d();
                if (d2 == 0) {
                    break;
                }
            } while (b(d2));
            a(((i2 >>> 3) << 3) | 4);
            return true;
        }
        f(v());
        return true;
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final String c() {
        int v = v();
        if (v > 0) {
            int i2 = this.f7247e;
            int i3 = this.f7249g;
            if (v <= i2 - i3) {
                String str = new String(this.f7246d, i3, v, f91.f6596a);
                this.f7249g += v;
                return str;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v < 0) {
            throw o91.zzazy();
        }
        throw o91.zzazx();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final int d() {
        if (s()) {
            this.f7251i = 0;
            return 0;
        }
        this.f7251i = v();
        int i2 = this.f7251i;
        if ((i2 >>> 3) != 0) {
            return i2;
        }
        throw o91.zzbaa();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final long e() {
        return w();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final long f() {
        return w();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final int g() {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final long h() {
        return y();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final int i() {
        return x();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final boolean j() {
        return w() != 0;
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final String k() {
        int v = v();
        if (v > 0) {
            int i2 = this.f7247e;
            int i3 = this.f7249g;
            if (v <= i2 - i3) {
                String c2 = fc1.c(this.f7246d, i3, v);
                this.f7249g += v;
                return c2;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v <= 0) {
            throw o91.zzazy();
        }
        throw o91.zzazx();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final t71 l() {
        byte[] bArr;
        int v = v();
        if (v > 0) {
            int i2 = this.f7247e;
            int i3 = this.f7249g;
            if (v <= i2 - i3) {
                t71 zzh = t71.zzh(this.f7246d, i3, v);
                this.f7249g += v;
                return zzh;
            }
        }
        if (v == 0) {
            return t71.zzhfn;
        }
        if (v > 0) {
            int i4 = this.f7247e;
            int i5 = this.f7249g;
            if (v <= i4 - i5) {
                this.f7249g = v + i5;
                bArr = Arrays.copyOfRange(this.f7246d, i5, this.f7249g);
                return t71.zzz(bArr);
            }
        }
        if (v > 0) {
            throw o91.zzazx();
        }
        if (v == 0) {
            bArr = f91.f6597b;
            return t71.zzz(bArr);
        }
        throw o91.zzazy();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final int m() {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final int n() {
        return v();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final int o() {
        return x();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final long p() {
        return y();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final int q() {
        return g81.e(v());
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final long r() {
        return g81.a(w());
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final boolean s() {
        return this.f7249g == this.f7247e;
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final int t() {
        return this.f7249g - this.f7250h;
    }

    final long u() {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            j2 |= (r3 & Byte.MAX_VALUE) << i2;
            if ((A() & 128) == 0) {
                return j2;
            }
        }
        throw o91.zzazz();
    }

    private final void f(int i2) {
        if (i2 >= 0) {
            int i3 = this.f7247e;
            int i4 = this.f7249g;
            if (i2 <= i3 - i4) {
                this.f7249g = i4 + i2;
                return;
            }
        }
        if (i2 < 0) {
            throw o91.zzazy();
        }
        throw o91.zzazx();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final double a() {
        return Double.longBitsToDouble(y());
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final void d(int i2) {
        this.f7252j = i2;
        z();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final int c(int i2) {
        if (i2 >= 0) {
            int t = i2 + t();
            int i3 = this.f7252j;
            if (t <= i3) {
                this.f7252j = t;
                z();
                return i3;
            }
            throw o91.zzazx();
        }
        throw o91.zzazy();
    }

    @Override // com.google.android.gms.internal.ads.g81
    public final float b() {
        return Float.intBitsToFloat(x());
    }
}
