package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public abstract class a4 extends k3 {

    /* renamed from: b, reason: collision with root package name */
    private static final Logger f12287b = Logger.getLogger(a4.class.getName());

    /* renamed from: c, reason: collision with root package name */
    private static final boolean f12288c = o7.a();

    /* renamed from: a, reason: collision with root package name */
    c4 f12289a;

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    public static class a extends IOException {
        a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        a(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        a(java.lang.String r3, java.lang.Throwable r4) {
            /*
                r2 = this;
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r0 = r3.length()
                java.lang.String r1 = "CodedOutputStream was writing to a flat byte array and ran out of space.: "
                if (r0 == 0) goto L11
                java.lang.String r3 = r1.concat(r3)
                goto L16
            L11:
                java.lang.String r3 = new java.lang.String
                r3.<init>(r1)
            L16:
                r2.<init>(r3, r4)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.a4.a.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    /* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
    /* loaded from: classes.dex */
    static class b extends a4 {

        /* renamed from: d, reason: collision with root package name */
        private final byte[] f12290d;

        /* renamed from: e, reason: collision with root package name */
        private final int f12291e;

        /* renamed from: f, reason: collision with root package name */
        private int f12292f;

        b(byte[] bArr, int i2, int i3) {
            super();
            if (bArr != null) {
                int i4 = i3 + 0;
                if ((i3 | 0 | (bArr.length - i4)) >= 0) {
                    this.f12290d = bArr;
                    this.f12292f = 0;
                    this.f12291e = i4;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), 0, Integer.valueOf(i3)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void d(int i2) {
            try {
                byte[] bArr = this.f12290d;
                int i3 = this.f12292f;
                this.f12292f = i3 + 1;
                bArr[i3] = (byte) i2;
                byte[] bArr2 = this.f12290d;
                int i4 = this.f12292f;
                this.f12292f = i4 + 1;
                bArr2[i4] = (byte) (i2 >> 8);
                byte[] bArr3 = this.f12290d;
                int i5 = this.f12292f;
                this.f12292f = i5 + 1;
                bArr3[i5] = (byte) (i2 >> 16);
                byte[] bArr4 = this.f12290d;
                int i6 = this.f12292f;
                this.f12292f = i6 + 1;
                bArr4[i6] = (byte) (i2 >>> 24);
            } catch (IndexOutOfBoundsException e2) {
                throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12292f), Integer.valueOf(this.f12291e), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        public final void b(j3 j3Var) {
            b(j3Var.size());
            j3Var.zza(this);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void b(int i2, j3 j3Var) {
            a(1, 3);
            c(2, i2);
            a(3, j3Var);
            a(1, 4);
        }

        public final void c(d6 d6Var) {
            b(d6Var.d());
            d6Var.a(this);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void c(long j2) {
            try {
                byte[] bArr = this.f12290d;
                int i2 = this.f12292f;
                this.f12292f = i2 + 1;
                bArr[i2] = (byte) j2;
                byte[] bArr2 = this.f12290d;
                int i3 = this.f12292f;
                this.f12292f = i3 + 1;
                bArr2[i3] = (byte) (j2 >> 8);
                byte[] bArr3 = this.f12290d;
                int i4 = this.f12292f;
                this.f12292f = i4 + 1;
                bArr3[i4] = (byte) (j2 >> 16);
                byte[] bArr4 = this.f12290d;
                int i5 = this.f12292f;
                this.f12292f = i5 + 1;
                bArr4[i5] = (byte) (j2 >> 24);
                byte[] bArr5 = this.f12290d;
                int i6 = this.f12292f;
                this.f12292f = i6 + 1;
                bArr5[i6] = (byte) (j2 >> 32);
                byte[] bArr6 = this.f12290d;
                int i7 = this.f12292f;
                this.f12292f = i7 + 1;
                bArr6[i7] = (byte) (j2 >> 40);
                byte[] bArr7 = this.f12290d;
                int i8 = this.f12292f;
                this.f12292f = i8 + 1;
                bArr7[i8] = (byte) (j2 >> 48);
                byte[] bArr8 = this.f12290d;
                int i9 = this.f12292f;
                this.f12292f = i9 + 1;
                bArr8[i9] = (byte) (j2 >> 56);
            } catch (IndexOutOfBoundsException e2) {
                throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12292f), Integer.valueOf(this.f12291e), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void a(int i2, j3 j3Var) {
            a(i2, 2);
            b(j3Var);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void b(int i2) {
            if (!a4.f12288c || f3.a() || a() < 5) {
                while ((i2 & (-128)) != 0) {
                    try {
                        byte[] bArr = this.f12290d;
                        int i3 = this.f12292f;
                        this.f12292f = i3 + 1;
                        bArr[i3] = (byte) ((i2 & 127) | 128);
                        i2 >>>= 7;
                    } catch (IndexOutOfBoundsException e2) {
                        throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12292f), Integer.valueOf(this.f12291e), 1), e2);
                    }
                }
                byte[] bArr2 = this.f12290d;
                int i4 = this.f12292f;
                this.f12292f = i4 + 1;
                bArr2[i4] = (byte) i2;
                return;
            }
            if ((i2 & (-128)) == 0) {
                byte[] bArr3 = this.f12290d;
                int i5 = this.f12292f;
                this.f12292f = i5 + 1;
                o7.a(bArr3, i5, (byte) i2);
                return;
            }
            byte[] bArr4 = this.f12290d;
            int i6 = this.f12292f;
            this.f12292f = i6 + 1;
            o7.a(bArr4, i6, (byte) (i2 | 128));
            int i7 = i2 >>> 7;
            if ((i7 & (-128)) == 0) {
                byte[] bArr5 = this.f12290d;
                int i8 = this.f12292f;
                this.f12292f = i8 + 1;
                o7.a(bArr5, i8, (byte) i7);
                return;
            }
            byte[] bArr6 = this.f12290d;
            int i9 = this.f12292f;
            this.f12292f = i9 + 1;
            o7.a(bArr6, i9, (byte) (i7 | 128));
            int i10 = i7 >>> 7;
            if ((i10 & (-128)) == 0) {
                byte[] bArr7 = this.f12290d;
                int i11 = this.f12292f;
                this.f12292f = i11 + 1;
                o7.a(bArr7, i11, (byte) i10);
                return;
            }
            byte[] bArr8 = this.f12290d;
            int i12 = this.f12292f;
            this.f12292f = i12 + 1;
            o7.a(bArr8, i12, (byte) (i10 | 128));
            int i13 = i10 >>> 7;
            if ((i13 & (-128)) == 0) {
                byte[] bArr9 = this.f12290d;
                int i14 = this.f12292f;
                this.f12292f = i14 + 1;
                o7.a(bArr9, i14, (byte) i13);
                return;
            }
            byte[] bArr10 = this.f12290d;
            int i15 = this.f12292f;
            this.f12292f = i15 + 1;
            o7.a(bArr10, i15, (byte) (i13 | 128));
            byte[] bArr11 = this.f12290d;
            int i16 = this.f12292f;
            this.f12292f = i16 + 1;
            o7.a(bArr11, i16, (byte) (i13 >>> 7));
        }

        @Override // com.google.android.gms.internal.vision.a4
        final void a(int i2, d6 d6Var, r6 r6Var) {
            a(i2, 2);
            y2 y2Var = (y2) d6Var;
            int f2 = y2Var.f();
            if (f2 == -1) {
                f2 = r6Var.a(y2Var);
                y2Var.a(f2);
            }
            b(f2);
            r6Var.a((r6) d6Var, (e8) this.f12289a);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void a(int i2, d6 d6Var) {
            a(1, 3);
            c(2, i2);
            a(3, 2);
            c(d6Var);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void a(byte b2) {
            try {
                byte[] bArr = this.f12290d;
                int i2 = this.f12292f;
                this.f12292f = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12292f), Integer.valueOf(this.f12291e), 1), e2);
            }
        }

        private final void b(byte[] bArr, int i2, int i3) {
            try {
                System.arraycopy(bArr, i2, this.f12290d, this.f12292f, i3);
                this.f12292f += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12292f), Integer.valueOf(this.f12291e), Integer.valueOf(i3)), e2);
            }
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final void a(long j2) {
            if (a4.f12288c && a() >= 10) {
                while ((j2 & (-128)) != 0) {
                    byte[] bArr = this.f12290d;
                    int i2 = this.f12292f;
                    this.f12292f = i2 + 1;
                    o7.a(bArr, i2, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                byte[] bArr2 = this.f12290d;
                int i3 = this.f12292f;
                this.f12292f = i3 + 1;
                o7.a(bArr2, i3, (byte) j2);
                return;
            }
            while ((j2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f12290d;
                    int i4 = this.f12292f;
                    this.f12292f = i4 + 1;
                    bArr3[i4] = (byte) ((((int) j2) & 127) | 128);
                    j2 >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new a(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f12292f), Integer.valueOf(this.f12291e), 1), e2);
                }
            }
            byte[] bArr4 = this.f12290d;
            int i5 = this.f12292f;
            this.f12292f = i5 + 1;
            bArr4[i5] = (byte) j2;
        }

        public final void b(String str) {
            int i2 = this.f12292f;
            try {
                int g2 = a4.g(str.length() * 3);
                int g3 = a4.g(str.length());
                if (g3 == g2) {
                    this.f12292f = i2 + g3;
                    int a2 = r7.a(str, this.f12290d, this.f12292f, a());
                    this.f12292f = i2;
                    b((a2 - i2) - g3);
                    this.f12292f = a2;
                    return;
                }
                b(r7.a(str));
                this.f12292f = r7.a(str, this.f12290d, this.f12292f, a());
            } catch (u7 e2) {
                this.f12292f = i2;
                a(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new a(e3);
            }
        }

        @Override // com.google.android.gms.internal.vision.k3
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.vision.a4
        public final int a() {
            return this.f12291e - this.f12292f;
        }
    }

    private a4() {
    }

    public static a4 a(byte[] bArr) {
        return new b(bArr, 0, bArr.length);
    }

    public static int b(double d2) {
        return 8;
    }

    public static int b(float f2) {
        return 4;
    }

    public static int b(boolean z) {
        return 1;
    }

    private static long d(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    public static int e(int i2, long j2) {
        return e(i2) + f(j2);
    }

    public static int f(int i2, int i3) {
        return e(i2) + f(i3);
    }

    public static int f(long j2) {
        int i2;
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (j2 < 0) {
            return 10;
        }
        if (((-34359738368L) & j2) != 0) {
            i2 = 6;
            j2 >>>= 28;
        } else {
            i2 = 2;
        }
        if (((-2097152) & j2) != 0) {
            i2 += 2;
            j2 >>>= 14;
        }
        return (j2 & (-16384)) != 0 ? i2 + 1 : i2;
    }

    public static int g(int i2) {
        if ((i2 & (-128)) == 0) {
            return 1;
        }
        if ((i2 & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i2) == 0) {
            return 3;
        }
        return (i2 & (-268435456)) == 0 ? 4 : 5;
    }

    public static int g(int i2, int i3) {
        return e(i2) + g(i3);
    }

    public static int h(int i2, int i3) {
        return e(i2) + g(l(i3));
    }

    public static int h(long j2) {
        return 8;
    }

    public static int i(int i2) {
        return 4;
    }

    public static int i(int i2, int i3) {
        return e(i2) + 4;
    }

    public static int i(long j2) {
        return 8;
    }

    public static int j(int i2) {
        return 4;
    }

    public static int j(int i2, int i3) {
        return e(i2) + 4;
    }

    public static int k(int i2, int i3) {
        return e(i2) + f(i3);
    }

    private static int l(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    @Deprecated
    public static int m(int i2) {
        return g(i2);
    }

    public abstract int a();

    public abstract void a(byte b2);

    public abstract void a(int i2);

    public abstract void a(int i2, int i3);

    public abstract void a(int i2, long j2);

    public abstract void a(int i2, d6 d6Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(int i2, d6 d6Var, r6 r6Var);

    public abstract void a(int i2, j3 j3Var);

    public abstract void a(int i2, String str);

    public abstract void a(int i2, boolean z);

    public abstract void a(long j2);

    public abstract void b(int i2);

    public abstract void b(int i2, int i3);

    public final void b(int i2, long j2) {
        a(i2, d(j2));
    }

    public abstract void b(int i2, j3 j3Var);

    public final void c(int i2) {
        b(l(i2));
    }

    public abstract void c(int i2, int i3);

    public abstract void c(int i2, long j2);

    public abstract void c(long j2);

    public abstract void d(int i2);

    public final void d(int i2, int i3) {
        c(i2, l(i3));
    }

    public abstract void e(int i2, int i3);

    public static int c(int i2, j3 j3Var) {
        int e2 = e(i2);
        int size = j3Var.size();
        return e2 + g(size) + size;
    }

    public static int d(int i2, long j2) {
        return e(i2) + f(j2);
    }

    public static int e(int i2) {
        return g(i2 << 3);
    }

    public static int f(int i2, long j2) {
        return e(i2) + f(d(j2));
    }

    public static int g(int i2, long j2) {
        return e(i2) + 8;
    }

    public final void b(long j2) {
        a(d(j2));
    }

    public static int b(int i2, float f2) {
        return e(i2) + 4;
    }

    public static int e(long j2) {
        return f(j2);
    }

    public static int g(long j2) {
        return f(d(j2));
    }

    public static int h(int i2, long j2) {
        return e(i2) + 8;
    }

    public static int k(int i2) {
        return f(i2);
    }

    public final void a(int i2, float f2) {
        e(i2, Float.floatToRawIntBits(f2));
    }

    public static int b(int i2, double d2) {
        return e(i2) + 8;
    }

    public static int d(int i2, j3 j3Var) {
        return (e(1) << 1) + g(2, i2) + c(3, j3Var);
    }

    public static int f(int i2) {
        if (i2 >= 0) {
            return g(i2);
        }
        return 10;
    }

    public static int h(int i2) {
        return g(l(i2));
    }

    public final void a(int i2, double d2) {
        c(i2, Double.doubleToRawLongBits(d2));
    }

    public static int b(int i2, boolean z) {
        return e(i2) + 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int c(int i2, d6 d6Var, r6 r6Var) {
        int e2 = e(i2) << 1;
        y2 y2Var = (y2) d6Var;
        int f2 = y2Var.f();
        if (f2 == -1) {
            f2 = r6Var.a(y2Var);
            y2Var.a(f2);
        }
        return e2 + f2;
    }

    public final void a(float f2) {
        d(Float.floatToRawIntBits(f2));
    }

    public static int b(int i2, String str) {
        return e(i2) + a(str);
    }

    public final void a(double d2) {
        c(Double.doubleToRawLongBits(d2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, d6 d6Var, r6 r6Var) {
        return e(i2) + a(d6Var, r6Var);
    }

    public final void a(boolean z) {
        a(z ? (byte) 1 : (byte) 0);
    }

    public static int a(int i2, i5 i5Var) {
        int e2 = e(i2);
        int b2 = i5Var.b();
        return e2 + g(b2) + b2;
    }

    public static int b(int i2, d6 d6Var) {
        return (e(1) << 1) + g(2, i2) + e(3) + a(d6Var);
    }

    public static int a(String str) {
        int length;
        try {
            length = r7.a(str);
        } catch (u7 unused) {
            length = str.getBytes(t4.f12540a).length;
        }
        return g(length) + length;
    }

    public static int b(int i2, i5 i5Var) {
        return (e(1) << 1) + g(2, i2) + a(3, i5Var);
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        return g(length) + length;
    }

    public static int a(i5 i5Var) {
        int b2 = i5Var.b();
        return g(b2) + b2;
    }

    public final void b() {
        if (a() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public static int a(j3 j3Var) {
        int size = j3Var.size();
        return g(size) + size;
    }

    @Deprecated
    public static int b(d6 d6Var) {
        return d6Var.d();
    }

    public static int a(d6 d6Var) {
        int d2 = d6Var.d();
        return g(d2) + d2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(d6 d6Var, r6 r6Var) {
        y2 y2Var = (y2) d6Var;
        int f2 = y2Var.f();
        if (f2 == -1) {
            f2 = r6Var.a(y2Var);
            y2Var.a(f2);
        }
        return g(f2) + f2;
    }

    final void a(String str, u7 u7Var) {
        f12287b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) u7Var);
        byte[] bytes = str.getBytes(t4.f12540a);
        try {
            b(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (a e2) {
            throw e2;
        } catch (IndexOutOfBoundsException e3) {
            throw new a(e3);
        }
    }
}
