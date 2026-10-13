package com.google.android.gms.internal.measurement;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class h3 extends f3 {

    /* renamed from: d, reason: collision with root package name */
    private final byte[] f11887d;

    /* renamed from: e, reason: collision with root package name */
    private int f11888e;

    /* renamed from: f, reason: collision with root package name */
    private int f11889f;

    /* renamed from: g, reason: collision with root package name */
    private int f11890g;

    /* renamed from: h, reason: collision with root package name */
    private int f11891h;

    /* renamed from: i, reason: collision with root package name */
    private int f11892i;

    /* renamed from: j, reason: collision with root package name */
    private int f11893j;

    private h3(byte[] bArr, int i2, int i3, boolean z) {
        super();
        this.f11893j = Integer.MAX_VALUE;
        this.f11887d = bArr;
        this.f11888e = i3 + i2;
        this.f11890g = i2;
        this.f11891h = this.f11890g;
    }

    private final byte A() {
        int i2 = this.f11890g;
        if (i2 != this.f11888e) {
            byte[] bArr = this.f11887d;
            this.f11890g = i2 + 1;
            return bArr[i2];
        }
        throw l4.zzut();
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
            int r0 = r5.f11890g
            int r1 = r5.f11888e
            if (r1 == r0) goto L6b
            byte[] r2 = r5.f11887d
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L11
            r5.f11890g = r3
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
            r5.f11890g = r1
            return r0
        L6b:
            long r0 = r5.u()
            int r1 = (int) r0
            return r1
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.h3.v():int");
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
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.h3.w():long");
    }

    private final int x() {
        int i2 = this.f11890g;
        if (this.f11888e - i2 >= 4) {
            byte[] bArr = this.f11887d;
            this.f11890g = i2 + 4;
            return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
        }
        throw l4.zzut();
    }

    private final long y() {
        int i2 = this.f11890g;
        if (this.f11888e - i2 >= 8) {
            byte[] bArr = this.f11887d;
            this.f11890g = i2 + 8;
            return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
        }
        throw l4.zzut();
    }

    private final void z() {
        this.f11888e += this.f11889f;
        int i2 = this.f11888e;
        int i3 = i2 - this.f11891h;
        int i4 = this.f11893j;
        if (i3 > i4) {
            this.f11889f = i3 - i4;
            this.f11888e = i2 - this.f11889f;
        } else {
            this.f11889f = 0;
        }
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final void a(int i2) {
        if (this.f11892i != i2) {
            throw l4.zzux();
        }
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final boolean b(int i2) {
        int d2;
        int i3 = i2 & 7;
        int i4 = 0;
        if (i3 == 0) {
            if (this.f11888e - this.f11890g >= 10) {
                while (i4 < 10) {
                    byte[] bArr = this.f11887d;
                    int i5 = this.f11890g;
                    this.f11890g = i5 + 1;
                    if (bArr[i5] < 0) {
                        i4++;
                    }
                }
                throw l4.zzuv();
            }
            while (i4 < 10) {
                if (A() < 0) {
                    i4++;
                }
            }
            throw l4.zzuv();
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
                throw l4.zzuy();
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

    @Override // com.google.android.gms.internal.measurement.f3
    public final String c() {
        int v = v();
        if (v > 0) {
            int i2 = this.f11888e;
            int i3 = this.f11890g;
            if (v <= i2 - i3) {
                String str = new String(this.f11887d, i3, v, c4.f11799a);
                this.f11890g += v;
                return str;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v < 0) {
            throw l4.zzuu();
        }
        throw l4.zzut();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final int d() {
        if (s()) {
            this.f11892i = 0;
            return 0;
        }
        this.f11892i = v();
        int i2 = this.f11892i;
        if ((i2 >>> 3) != 0) {
            return i2;
        }
        throw l4.zzuw();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final long e() {
        return w();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final long f() {
        return w();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final int g() {
        return v();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final long h() {
        return y();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final int i() {
        return x();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final boolean j() {
        return w() != 0;
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final String k() {
        int v = v();
        if (v > 0) {
            int i2 = this.f11888e;
            int i3 = this.f11890g;
            if (v <= i2 - i3) {
                String c2 = a7.c(this.f11887d, i3, v);
                this.f11890g += v;
                return c2;
            }
        }
        if (v == 0) {
            return "";
        }
        if (v <= 0) {
            throw l4.zzuu();
        }
        throw l4.zzut();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final t2 l() {
        byte[] bArr;
        int v = v();
        if (v > 0) {
            int i2 = this.f11888e;
            int i3 = this.f11890g;
            if (v <= i2 - i3) {
                t2 zzb = t2.zzb(this.f11887d, i3, v);
                this.f11890g += v;
                return zzb;
            }
        }
        if (v == 0) {
            return t2.zzadh;
        }
        if (v > 0) {
            int i4 = this.f11888e;
            int i5 = this.f11890g;
            if (v <= i4 - i5) {
                this.f11890g = v + i5;
                bArr = Arrays.copyOfRange(this.f11887d, i5, this.f11890g);
                return t2.zze(bArr);
            }
        }
        if (v > 0) {
            throw l4.zzut();
        }
        if (v == 0) {
            bArr = c4.f11800b;
            return t2.zze(bArr);
        }
        throw l4.zzuu();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final int m() {
        return v();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final int n() {
        return v();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final int o() {
        return x();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final long p() {
        return y();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final int q() {
        return f3.g(v());
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final long r() {
        return f3.a(w());
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final boolean s() {
        return this.f11890g == this.f11888e;
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final int t() {
        return this.f11890g - this.f11891h;
    }

    final long u() {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            j2 |= (r3 & Byte.MAX_VALUE) << i2;
            if ((A() & 128) == 0) {
                return j2;
            }
        }
        throw l4.zzuv();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final void e(int i2) {
        this.f11893j = i2;
        z();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final void f(int i2) {
        if (i2 >= 0) {
            int i3 = this.f11888e;
            int i4 = this.f11890g;
            if (i2 <= i3 - i4) {
                this.f11890g = i4 + i2;
                return;
            }
        }
        if (i2 < 0) {
            throw l4.zzuu();
        }
        throw l4.zzut();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final double a() {
        return Double.longBitsToDouble(y());
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final <T extends k5> T a(s5<T> s5Var, o3 o3Var) {
        int v = v();
        if (this.f11849a < this.f11850b) {
            int d2 = d(v);
            this.f11849a++;
            T a2 = s5Var.a(this, o3Var);
            a(0);
            this.f11849a--;
            e(d2);
            return a2;
        }
        throw l4.zzuz();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final int d(int i2) {
        if (i2 >= 0) {
            int t = i2 + t();
            int i3 = this.f11893j;
            if (t <= i3) {
                this.f11893j = t;
                z();
                return i3;
            }
            throw l4.zzut();
        }
        throw l4.zzuu();
    }

    @Override // com.google.android.gms.internal.measurement.f3
    public final float b() {
        return Float.intBitsToFloat(x());
    }
}
