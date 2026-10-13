package com.google.android.gms.internal.measurement;

import java.io.IOException;

/* loaded from: classes.dex */
public final class o7 {

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f12018a;

    /* renamed from: c, reason: collision with root package name */
    private final int f12020c;

    /* renamed from: d, reason: collision with root package name */
    private int f12021d;

    /* renamed from: e, reason: collision with root package name */
    private int f12022e;

    /* renamed from: g, reason: collision with root package name */
    private int f12024g;

    /* renamed from: i, reason: collision with root package name */
    private int f12026i;

    /* renamed from: k, reason: collision with root package name */
    private f3 f12028k;

    /* renamed from: h, reason: collision with root package name */
    private int f12025h = Integer.MAX_VALUE;

    /* renamed from: j, reason: collision with root package name */
    private int f12027j = 64;

    /* renamed from: b, reason: collision with root package name */
    private final int f12019b = 0;

    /* renamed from: f, reason: collision with root package name */
    private int f12023f = 0;

    private o7(byte[] bArr, int i2, int i3) {
        this.f12018a = bArr;
        int i4 = i3 + 0;
        this.f12021d = i4;
        this.f12020c = i4;
    }

    public static o7 a(byte[] bArr, int i2, int i3) {
        return new o7(bArr, 0, i3);
    }

    private final void b(int i2) {
        if (this.f12024g != i2) {
            throw new w7("Protocol message end-group tag did not match expected tag.");
        }
    }

    private final void g() {
        this.f12021d += this.f12022e;
        int i2 = this.f12021d;
        int i3 = this.f12025h;
        if (i2 > i3) {
            this.f12022e = i2 - i3;
            this.f12021d = i2 - this.f12022e;
        } else {
            this.f12022e = 0;
        }
    }

    private final byte h() {
        int i2 = this.f12023f;
        if (i2 != this.f12021d) {
            byte[] bArr = this.f12018a;
            this.f12023f = i2 + 1;
            return bArr[i2];
        }
        throw w7.zzxd();
    }

    public final int c() {
        if (this.f12023f == this.f12021d) {
            this.f12024g = 0;
            return 0;
        }
        this.f12024g = e();
        int i2 = this.f12024g;
        if (i2 != 0) {
            return i2;
        }
        throw new w7("Protocol message contained an invalid tag (zero).");
    }

    public final boolean d() {
        return e() != 0;
    }

    public final int e() {
        int i2;
        byte h2 = h();
        if (h2 >= 0) {
            return h2;
        }
        int i3 = h2 & Byte.MAX_VALUE;
        byte h3 = h();
        if (h3 >= 0) {
            i2 = h3 << 7;
        } else {
            i3 |= (h3 & Byte.MAX_VALUE) << 7;
            byte h4 = h();
            if (h4 >= 0) {
                i2 = h4 << 14;
            } else {
                i3 |= (h4 & Byte.MAX_VALUE) << 14;
                byte h5 = h();
                if (h5 < 0) {
                    int i4 = i3 | ((h5 & Byte.MAX_VALUE) << 21);
                    byte h6 = h();
                    int i5 = i4 | (h6 << 28);
                    if (h6 >= 0) {
                        return i5;
                    }
                    for (int i6 = 0; i6 < 5; i6++) {
                        if (h() >= 0) {
                            return i5;
                        }
                    }
                    throw w7.zzxf();
                }
                i2 = h5 << 21;
            }
        }
        return i3 | i2;
    }

    public final long f() {
        long j2 = 0;
        for (int i2 = 0; i2 < 64; i2 += 7) {
            j2 |= (r3 & Byte.MAX_VALUE) << i2;
            if ((h() & 128) == 0) {
                return j2;
            }
        }
        throw w7.zzxf();
    }

    public final boolean a(int i2) {
        int c2;
        int i3 = i2 & 7;
        if (i3 == 0) {
            e();
            return true;
        }
        if (i3 == 1) {
            h();
            h();
            h();
            h();
            h();
            h();
            h();
            h();
            return true;
        }
        if (i3 != 2) {
            if (i3 != 3) {
                if (i3 == 4) {
                    return false;
                }
                if (i3 == 5) {
                    h();
                    h();
                    h();
                    h();
                    return true;
                }
                throw new w7("Protocol message tag had invalid wire type.");
            }
            do {
                c2 = c();
                if (c2 == 0) {
                    break;
                }
            } while (a(c2));
            b(((i2 >>> 3) << 3) | 4);
            return true;
        }
        c(e());
        return true;
    }

    public final String b() {
        int e2 = e();
        if (e2 >= 0) {
            int i2 = this.f12021d;
            int i3 = this.f12023f;
            if (e2 <= i2 - i3) {
                String str = new String(this.f12018a, i3, e2, x7.f12204a);
                this.f12023f += e2;
                return str;
            }
            throw w7.zzxd();
        }
        throw w7.zzxe();
    }

    private final void c(int i2) {
        if (i2 >= 0) {
            int i3 = this.f12023f;
            int i4 = i3 + i2;
            int i5 = this.f12025h;
            if (i4 <= i5) {
                if (i2 <= this.f12021d - i3) {
                    this.f12023f = i3 + i2;
                    return;
                }
                throw w7.zzxd();
            }
            c(i5 - i3);
            throw w7.zzxd();
        }
        throw w7.zzxe();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(int i2, int i3) {
        int i4 = this.f12023f;
        int i5 = this.f12019b;
        if (i2 > i4 - i5) {
            StringBuilder sb = new StringBuilder(50);
            sb.append("Position ");
            sb.append(i2);
            sb.append(" is beyond current ");
            sb.append(i4 - i5);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 >= 0) {
            this.f12023f = i5 + i2;
            this.f12024g = i3;
        } else {
            StringBuilder sb2 = new StringBuilder(24);
            sb2.append("Bad position ");
            sb2.append(i2);
            throw new IllegalArgumentException(sb2.toString());
        }
    }

    public final void a(z7 z7Var) {
        int e2 = e();
        if (this.f12026i >= this.f12027j) {
            throw new w7("Protocol message had too many levels of nesting.  May be malicious.  Use CodedInputStream.setRecursionLimit() to increase the depth limit.");
        }
        if (e2 >= 0) {
            int i2 = e2 + this.f12023f;
            int i3 = this.f12025h;
            if (i2 <= i3) {
                this.f12025h = i2;
                g();
                this.f12026i++;
                z7Var.a(this);
                b(0);
                this.f12026i--;
                this.f12025h = i3;
                g();
                return;
            }
            throw w7.zzxd();
        }
        throw w7.zzxe();
    }

    public final <T extends b4<T, ?>> T a(s5<T> s5Var) {
        try {
            if (this.f12028k == null) {
                this.f12028k = f3.a(this.f12018a, this.f12019b, this.f12020c);
            }
            int t = this.f12028k.t();
            int i2 = this.f12023f - this.f12019b;
            if (t <= i2) {
                this.f12028k.f(i2 - t);
                this.f12028k.c(this.f12027j - this.f12026i);
                T t2 = (T) this.f12028k.a(s5Var, o3.d());
                a(this.f12024g);
                return t2;
            }
            throw new IOException(String.format("CodedInputStream read ahead of CodedInputByteBufferNano: %s > %s", Integer.valueOf(t), Integer.valueOf(i2)));
        } catch (l4 e2) {
            throw new w7("", e2);
        }
    }

    public final int a() {
        return this.f12023f - this.f12019b;
    }

    public final byte[] a(int i2, int i3) {
        if (i3 == 0) {
            return a8.f11749a;
        }
        byte[] bArr = new byte[i3];
        System.arraycopy(this.f12018a, this.f12019b + i2, bArr, 0, i3);
        return bArr;
    }
}
