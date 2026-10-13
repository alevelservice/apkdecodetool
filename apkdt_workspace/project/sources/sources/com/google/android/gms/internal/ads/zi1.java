package com.google.android.gms.internal.ads;

import com.alipay.mobile.security.bio.api.BioError;
import java.nio.ShortBuffer;
import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class zi1 {

    /* renamed from: a, reason: collision with root package name */
    private final int f10751a;

    /* renamed from: b, reason: collision with root package name */
    private final int f10752b;

    /* renamed from: c, reason: collision with root package name */
    private final int f10753c;

    /* renamed from: d, reason: collision with root package name */
    private final int f10754d;

    /* renamed from: e, reason: collision with root package name */
    private final int f10755e;

    /* renamed from: f, reason: collision with root package name */
    private final short[] f10756f;

    /* renamed from: g, reason: collision with root package name */
    private int f10757g;

    /* renamed from: h, reason: collision with root package name */
    private short[] f10758h;

    /* renamed from: i, reason: collision with root package name */
    private int f10759i;

    /* renamed from: j, reason: collision with root package name */
    private short[] f10760j;

    /* renamed from: k, reason: collision with root package name */
    private int f10761k;

    /* renamed from: l, reason: collision with root package name */
    private short[] f10762l;
    private int m;
    private int n;
    private float o;
    private float p;
    private int q;
    private int r;
    private int s;
    private int t;
    private int u;
    private int v;
    private int w;
    private int x;

    public zi1(int i2, int i3) {
        this.f10751a = i2;
        this.f10752b = i3;
        this.f10753c = i2 / BioError.ERROR_SINGLETON_BUSY;
        this.f10754d = i2 / 65;
        this.f10755e = this.f10754d * 2;
        int i4 = this.f10755e;
        this.f10756f = new short[i4];
        this.f10757g = i4;
        this.f10758h = new short[i4 * i3];
        this.f10759i = i4;
        this.f10760j = new short[i4 * i3];
        this.f10761k = i4;
        this.f10762l = new short[i4 * i3];
        this.m = 0;
        this.n = 0;
        this.u = 0;
        this.o = 1.0f;
        this.p = 1.0f;
    }

    private final void c() {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8 = this.r;
        float f2 = this.o / this.p;
        double d2 = f2;
        int i9 = 1;
        if (d2 <= 1.00001d && d2 >= 0.99999d) {
            a(this.f10758h, 0, this.q);
            this.q = 0;
        } else {
            int i10 = this.q;
            if (i10 >= this.f10755e) {
                int i11 = 0;
                while (true) {
                    int i12 = this.t;
                    if (i12 > 0) {
                        int min = Math.min(this.f10755e, i12);
                        a(this.f10758h, i11, min);
                        this.t -= min;
                        i11 += min;
                    } else {
                        short[] sArr = this.f10758h;
                        int i13 = this.f10751a;
                        int i14 = i13 > 4000 ? i13 / 4000 : 1;
                        if (this.f10752b == i9 && i14 == i9) {
                            i2 = a(sArr, i11, this.f10753c, this.f10754d);
                        } else {
                            b(sArr, i11, i14);
                            int a2 = a(this.f10756f, 0, this.f10753c / i14, this.f10754d / i14);
                            if (i14 != i9) {
                                int i15 = a2 * i14;
                                int i16 = i14 << 2;
                                int i17 = i15 - i16;
                                int i18 = i15 + i16;
                                int i19 = this.f10753c;
                                if (i17 >= i19) {
                                    i19 = i17;
                                }
                                int i20 = this.f10754d;
                                if (i18 > i20) {
                                    i18 = i20;
                                }
                                if (this.f10752b == i9) {
                                    i2 = a(sArr, i11, i19, i18);
                                } else {
                                    b(sArr, i11, i9);
                                    i2 = a(this.f10756f, 0, i19, i18);
                                }
                            } else {
                                i2 = a2;
                            }
                        }
                        int i21 = this.w;
                        int i22 = i21 != 0 && this.u != 0 && this.x <= i21 * 3 && (i21 << 1) > this.v * 3 ? this.u : i2;
                        this.v = this.w;
                        this.u = i2;
                        if (d2 > 1.0d) {
                            short[] sArr2 = this.f10758h;
                            if (f2 >= 2.0f) {
                                i4 = (int) (i22 / (f2 - 1.0f));
                            } else {
                                this.t = (int) ((i22 * (2.0f - f2)) / (f2 - 1.0f));
                                i4 = i22;
                            }
                            a(i4);
                            int i23 = i4;
                            a(i4, this.f10752b, this.f10760j, this.r, sArr2, i11, sArr2, i11 + i22);
                            this.r += i23;
                            i11 += i22 + i23;
                        } else {
                            int i24 = i22;
                            short[] sArr3 = this.f10758h;
                            if (f2 < 0.5f) {
                                i3 = (int) ((i24 * f2) / (1.0f - f2));
                            } else {
                                this.t = (int) ((i24 * ((2.0f * f2) - 1.0f)) / (1.0f - f2));
                                i3 = i24;
                            }
                            int i25 = i24 + i3;
                            a(i25);
                            int i26 = this.f10752b;
                            System.arraycopy(sArr3, i11 * i26, this.f10760j, this.r * i26, i26 * i24);
                            a(i3, this.f10752b, this.f10760j, this.r + i24, sArr3, i24 + i11, sArr3, i11);
                            this.r += i25;
                            i11 += i3;
                        }
                    }
                    if (this.f10755e + i11 > i10) {
                        break;
                    } else {
                        i9 = 1;
                    }
                }
                int i27 = this.q - i11;
                short[] sArr4 = this.f10758h;
                int i28 = this.f10752b;
                System.arraycopy(sArr4, i11 * i28, sArr4, 0, i28 * i27);
                this.q = i27;
            }
        }
        float f3 = this.p;
        if (f3 == 1.0f || this.r == i8) {
            return;
        }
        int i29 = this.f10751a;
        int i30 = (int) (i29 / f3);
        while (true) {
            if (i30 <= 16384 && i29 <= 16384) {
                break;
            }
            i30 /= 2;
            i29 /= 2;
        }
        int i31 = this.r - i8;
        int i32 = this.s + i31;
        int i33 = this.f10761k;
        if (i32 > i33) {
            this.f10761k = i33 + (i33 / 2) + i31;
            this.f10762l = Arrays.copyOf(this.f10762l, this.f10761k * this.f10752b);
        }
        short[] sArr5 = this.f10760j;
        int i34 = this.f10752b;
        System.arraycopy(sArr5, i8 * i34, this.f10762l, this.s * i34, i34 * i31);
        this.r = i8;
        this.s += i31;
        int i35 = 0;
        while (true) {
            i5 = this.s;
            if (i35 >= i5 - 1) {
                break;
            }
            while (true) {
                i6 = this.m;
                int i36 = (i6 + 1) * i30;
                i7 = this.n;
                if (i36 <= i7 * i29) {
                    break;
                }
                a(1);
                int i37 = 0;
                while (true) {
                    int i38 = this.f10752b;
                    if (i37 < i38) {
                        short[] sArr6 = this.f10760j;
                        int i39 = (this.r * i38) + i37;
                        short[] sArr7 = this.f10762l;
                        int i40 = (i35 * i38) + i37;
                        short s = sArr7[i40];
                        short s2 = sArr7[i40 + i38];
                        int i41 = this.n * i29;
                        int i42 = this.m;
                        int i43 = i42 * i30;
                        int i44 = (i42 + 1) * i30;
                        int i45 = i44 - i41;
                        int i46 = i44 - i43;
                        sArr6[i39] = (short) (((s * i45) + ((i46 - i45) * s2)) / i46);
                        i37++;
                    }
                }
                this.n++;
                this.r++;
            }
            this.m = i6 + 1;
            if (this.m == i29) {
                this.m = 0;
                no1.b(i7 == i30);
                this.n = 0;
            }
            i35++;
        }
        int i47 = i5 - 1;
        if (i47 != 0) {
            short[] sArr8 = this.f10762l;
            int i48 = this.f10752b;
            System.arraycopy(sArr8, i47 * i48, sArr8, 0, (i5 - i47) * i48);
            this.s -= i47;
        }
    }

    public final void a(float f2) {
        this.o = f2;
    }

    public final void b(float f2) {
        this.p = f2;
    }

    public final void a(ShortBuffer shortBuffer) {
        int remaining = shortBuffer.remaining();
        int i2 = this.f10752b;
        int i3 = remaining / i2;
        b(i3);
        shortBuffer.get(this.f10758h, this.q * this.f10752b, ((i2 * i3) << 1) / 2);
        this.q += i3;
        c();
    }

    public final void b(ShortBuffer shortBuffer) {
        int min = Math.min(shortBuffer.remaining() / this.f10752b, this.r);
        shortBuffer.put(this.f10760j, 0, this.f10752b * min);
        this.r -= min;
        short[] sArr = this.f10760j;
        int i2 = this.f10752b;
        System.arraycopy(sArr, min * i2, sArr, 0, this.r * i2);
    }

    public final int b() {
        return this.r;
    }

    private final void b(int i2) {
        int i3 = this.q + i2;
        int i4 = this.f10757g;
        if (i3 > i4) {
            this.f10757g = i4 + (i4 / 2) + i2;
            this.f10758h = Arrays.copyOf(this.f10758h, this.f10757g * this.f10752b);
        }
    }

    public final void a() {
        int i2;
        int i3 = this.q;
        float f2 = this.o;
        float f3 = this.p;
        int i4 = this.r + ((int) ((((i3 / (f2 / f3)) + this.s) / f3) + 0.5f));
        b((this.f10755e * 2) + i3);
        int i5 = 0;
        while (true) {
            i2 = this.f10755e;
            int i6 = this.f10752b;
            if (i5 >= i2 * 2 * i6) {
                break;
            }
            this.f10758h[(i6 * i3) + i5] = 0;
            i5++;
        }
        this.q += i2 * 2;
        c();
        if (this.r > i4) {
            this.r = i4;
        }
        this.q = 0;
        this.t = 0;
        this.s = 0;
    }

    private final void b(short[] sArr, int i2, int i3) {
        int i4 = this.f10755e / i3;
        int i5 = this.f10752b;
        int i6 = i3 * i5;
        int i7 = i2 * i5;
        for (int i8 = 0; i8 < i4; i8++) {
            int i9 = 0;
            for (int i10 = 0; i10 < i6; i10++) {
                i9 += sArr[(i8 * i6) + i7 + i10];
            }
            this.f10756f[i8] = (short) (i9 / i6);
        }
    }

    private final void a(int i2) {
        int i3 = this.r + i2;
        int i4 = this.f10759i;
        if (i3 > i4) {
            this.f10759i = i4 + (i4 / 2) + i2;
            this.f10760j = Arrays.copyOf(this.f10760j, this.f10759i * this.f10752b);
        }
    }

    private final void a(short[] sArr, int i2, int i3) {
        a(i3);
        int i4 = this.f10752b;
        System.arraycopy(sArr, i2 * i4, this.f10760j, this.r * i4, i4 * i3);
        this.r += i3;
    }

    private final int a(short[] sArr, int i2, int i3, int i4) {
        int i5 = i2 * this.f10752b;
        int i6 = 1;
        int i7 = 0;
        int i8 = 0;
        int i9 = 255;
        while (i3 <= i4) {
            int i10 = 0;
            for (int i11 = 0; i11 < i3; i11++) {
                short s = sArr[i5 + i11];
                short s2 = sArr[i5 + i3 + i11];
                i10 += s >= s2 ? s - s2 : s2 - s;
            }
            if (i10 * i7 < i6 * i3) {
                i7 = i3;
                i6 = i10;
            }
            if (i10 * i9 > i8 * i3) {
                i9 = i3;
                i8 = i10;
            }
            i3++;
        }
        this.w = i6 / i7;
        this.x = i8 / i9;
        return i7;
    }

    private static void a(int i2, int i3, short[] sArr, int i4, short[] sArr2, int i5, short[] sArr3, int i6) {
        for (int i7 = 0; i7 < i3; i7++) {
            int i8 = (i5 * i3) + i7;
            int i9 = (i6 * i3) + i7;
            int i10 = (i4 * i3) + i7;
            for (int i11 = 0; i11 < i2; i11++) {
                sArr[i10] = (short) (((sArr2[i8] * (i2 - i11)) + (sArr3[i9] * i11)) / i2);
                i10 += i3;
                i8 += i3;
                i9 += i3;
            }
        }
    }
}
