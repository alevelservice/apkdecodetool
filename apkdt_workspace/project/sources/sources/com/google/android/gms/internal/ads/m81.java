package com.google.android.gms.internal.ads;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public abstract class m81 extends u71 {

    /* renamed from: b, reason: collision with root package name */
    private static final Logger f8048b = Logger.getLogger(m81.class.getName());

    /* renamed from: c, reason: collision with root package name */
    private static final boolean f8049c = bc1.a();

    /* renamed from: a, reason: collision with root package name */
    n81 f8050a;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class a extends b {

        /* renamed from: h, reason: collision with root package name */
        private final ByteBuffer f8051h;

        /* renamed from: i, reason: collision with root package name */
        private int f8052i;

        a(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f8051h = byteBuffer;
            this.f8052i = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.ads.m81.b, com.google.android.gms.internal.ads.m81
        public final void a() {
            this.f8051h.position(this.f8052i + e());
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    static class b extends m81 {

        /* renamed from: d, reason: collision with root package name */
        private final byte[] f8053d;

        /* renamed from: e, reason: collision with root package name */
        private final int f8054e;

        /* renamed from: f, reason: collision with root package name */
        private final int f8055f;

        /* renamed from: g, reason: collision with root package name */
        private int f8056g;

        b(byte[] bArr, int i2, int i3) {
            super();
            if (bArr != null) {
                int i4 = i2 + i3;
                if ((i2 | i3 | (bArr.length - i4)) >= 0) {
                    this.f8053d = bArr;
                    this.f8054e = i2;
                    this.f8056g = i2;
                    this.f8055f = i4;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.android.gms.internal.ads.m81
        public void a() {
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, int i3) {
            e(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2, int i3) {
            e(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void c(int i2, long j2) {
            e(i2, 1);
            c(j2);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void d(int i2, int i3) {
            e(i2, 5);
            d(i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void e(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        public final int e() {
            return this.f8056g - this.f8054e;
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, long j2) {
            e(i2, 0);
            a(j2);
        }

        public final void b(t71 t71Var) {
            b(t71Var.size());
            t71Var.zza(this);
        }

        public final void c(oa1 oa1Var) {
            b(oa1Var.d());
            oa1Var.a(this);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void d(int i2) {
            try {
                byte[] bArr = this.f8053d;
                int i3 = this.f8056g;
                this.f8056g = i3 + 1;
                bArr[i3] = (byte) i2;
                byte[] bArr2 = this.f8053d;
                int i4 = this.f8056g;
                this.f8056g = i4 + 1;
                bArr2[i4] = (byte) (i2 >> 8);
                byte[] bArr3 = this.f8053d;
                int i5 = this.f8056g;
                this.f8056g = i5 + 1;
                bArr3[i5] = (byte) (i2 >> 16);
                byte[] bArr4 = this.f8053d;
                int i6 = this.f8056g;
                this.f8056g = i6 + 1;
                bArr4[i6] = (byte) (i2 >>> 24);
            } catch (IndexOutOfBoundsException e2) {
                throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8056g), Integer.valueOf(this.f8055f), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, boolean z) {
            e(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2, oa1 oa1Var) {
            e(1, 3);
            b(2, i2);
            a(3, oa1Var);
            e(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void c(long j2) {
            try {
                byte[] bArr = this.f8053d;
                int i2 = this.f8056g;
                this.f8056g = i2 + 1;
                bArr[i2] = (byte) j2;
                byte[] bArr2 = this.f8053d;
                int i3 = this.f8056g;
                this.f8056g = i3 + 1;
                bArr2[i3] = (byte) (j2 >> 8);
                byte[] bArr3 = this.f8053d;
                int i4 = this.f8056g;
                this.f8056g = i4 + 1;
                bArr3[i4] = (byte) (j2 >> 16);
                byte[] bArr4 = this.f8053d;
                int i5 = this.f8056g;
                this.f8056g = i5 + 1;
                bArr4[i5] = (byte) (j2 >> 24);
                byte[] bArr5 = this.f8053d;
                int i6 = this.f8056g;
                this.f8056g = i6 + 1;
                bArr5[i6] = (byte) (j2 >> 32);
                byte[] bArr6 = this.f8053d;
                int i7 = this.f8056g;
                this.f8056g = i7 + 1;
                bArr6[i7] = (byte) (j2 >> 40);
                byte[] bArr7 = this.f8053d;
                int i8 = this.f8056g;
                this.f8056g = i8 + 1;
                bArr7[i8] = (byte) (j2 >> 48);
                byte[] bArr8 = this.f8053d;
                int i9 = this.f8056g;
                this.f8056g = i9 + 1;
                bArr8[i9] = (byte) (j2 >> 56);
            } catch (IndexOutOfBoundsException e2) {
                throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8056g), Integer.valueOf(this.f8055f), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, String str) {
            e(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, t71 t71Var) {
            e(i2, 2);
            b(t71Var);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2, t71 t71Var) {
            e(1, 3);
            b(2, i2);
            a(3, t71Var);
            e(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, oa1 oa1Var) {
            e(i2, 2);
            c(oa1Var);
        }

        @Override // com.google.android.gms.internal.ads.m81
        final void a(int i2, oa1 oa1Var, db1 db1Var) {
            e(i2, 2);
            m71 m71Var = (m71) oa1Var;
            int g2 = m71Var.g();
            if (g2 == -1) {
                g2 = db1Var.f(m71Var);
                m71Var.a(g2);
            }
            b(g2);
            db1Var.a((db1) oa1Var, (tc1) this.f8050a);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2) {
            if (!m81.f8049c || q71.a() || b() < 5) {
                while ((i2 & (-128)) != 0) {
                    try {
                        byte[] bArr = this.f8053d;
                        int i3 = this.f8056g;
                        this.f8056g = i3 + 1;
                        bArr[i3] = (byte) ((i2 & 127) | 128);
                        i2 >>>= 7;
                    } catch (IndexOutOfBoundsException e2) {
                        throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8056g), Integer.valueOf(this.f8055f), 1), e2);
                    }
                }
                byte[] bArr2 = this.f8053d;
                int i4 = this.f8056g;
                this.f8056g = i4 + 1;
                bArr2[i4] = (byte) i2;
                return;
            }
            if ((i2 & (-128)) == 0) {
                byte[] bArr3 = this.f8053d;
                int i5 = this.f8056g;
                this.f8056g = i5 + 1;
                bc1.a(bArr3, i5, (byte) i2);
                return;
            }
            byte[] bArr4 = this.f8053d;
            int i6 = this.f8056g;
            this.f8056g = i6 + 1;
            bc1.a(bArr4, i6, (byte) (i2 | 128));
            int i7 = i2 >>> 7;
            if ((i7 & (-128)) == 0) {
                byte[] bArr5 = this.f8053d;
                int i8 = this.f8056g;
                this.f8056g = i8 + 1;
                bc1.a(bArr5, i8, (byte) i7);
                return;
            }
            byte[] bArr6 = this.f8053d;
            int i9 = this.f8056g;
            this.f8056g = i9 + 1;
            bc1.a(bArr6, i9, (byte) (i7 | 128));
            int i10 = i7 >>> 7;
            if ((i10 & (-128)) == 0) {
                byte[] bArr7 = this.f8053d;
                int i11 = this.f8056g;
                this.f8056g = i11 + 1;
                bc1.a(bArr7, i11, (byte) i10);
                return;
            }
            byte[] bArr8 = this.f8053d;
            int i12 = this.f8056g;
            this.f8056g = i12 + 1;
            bc1.a(bArr8, i12, (byte) (i10 | 128));
            int i13 = i10 >>> 7;
            if ((i13 & (-128)) == 0) {
                byte[] bArr9 = this.f8053d;
                int i14 = this.f8056g;
                this.f8056g = i14 + 1;
                bc1.a(bArr9, i14, (byte) i13);
                return;
            }
            byte[] bArr10 = this.f8053d;
            int i15 = this.f8056g;
            this.f8056g = i15 + 1;
            bc1.a(bArr10, i15, (byte) (i13 | 128));
            byte[] bArr11 = this.f8053d;
            int i16 = this.f8056g;
            this.f8056g = i16 + 1;
            bc1.a(bArr11, i16, (byte) (i13 >>> 7));
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(byte b2) {
            try {
                byte[] bArr = this.f8053d;
                int i2 = this.f8056g;
                this.f8056g = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8056g), Integer.valueOf(this.f8055f), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(long j2) {
            if (m81.f8049c && b() >= 10) {
                while ((j2 & (-128)) != 0) {
                    byte[] bArr = this.f8053d;
                    int i2 = this.f8056g;
                    this.f8056g = i2 + 1;
                    bc1.a(bArr, i2, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                byte[] bArr2 = this.f8053d;
                int i3 = this.f8056g;
                this.f8056g = i3 + 1;
                bc1.a(bArr2, i3, (byte) j2);
                return;
            }
            while ((j2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f8053d;
                    int i4 = this.f8056g;
                    this.f8056g = i4 + 1;
                    bArr3[i4] = (byte) ((((int) j2) & 127) | 128);
                    j2 >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8056g), Integer.valueOf(this.f8055f), 1), e2);
                }
            }
            byte[] bArr4 = this.f8053d;
            int i5 = this.f8056g;
            this.f8056g = i5 + 1;
            bArr4[i5] = (byte) j2;
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(byte[] bArr, int i2, int i3) {
            try {
                System.arraycopy(bArr, i2, this.f8053d, this.f8056g, i3);
                this.f8056g += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new d(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f8056g), Integer.valueOf(this.f8055f), Integer.valueOf(i3)), e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.u71
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        public final void b(String str) {
            int i2 = this.f8056g;
            try {
                int g2 = m81.g(str.length() * 3);
                int g3 = m81.g(str.length());
                if (g3 == g2) {
                    this.f8056g = i2 + g3;
                    int a2 = fc1.a(str, this.f8053d, this.f8056g, b());
                    this.f8056g = i2;
                    b((a2 - i2) - g3);
                    this.f8056g = a2;
                    return;
                }
                b(fc1.a(str));
                this.f8056g = fc1.a(str, this.f8053d, this.f8056g, b());
            } catch (ic1 e2) {
                this.f8056g = i2;
                a(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new d(e3);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final int b() {
            return this.f8055f - this.f8056g;
        }
    }

    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    public static class d extends IOException {
        d() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        d(java.lang.String r3) {
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
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.m81.d.<init>(java.lang.String):void");
        }

        d(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        d(java.lang.String r3, java.lang.Throwable r4) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.m81.d.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    private m81() {
    }

    public static m81 a(byte[] bArr) {
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

    public static int d(int i2, long j2) {
        return e(i2) + e(j2);
    }

    public static int e(int i2, long j2) {
        return e(i2) + e(j2);
    }

    public static int e(long j2) {
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

    public static int f(int i2, int i3) {
        return e(i2) + f(i3);
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

    public static int g(long j2) {
        return 8;
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

    private static long i(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
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

    public abstract void a();

    public abstract void a(byte b2);

    public abstract void a(int i2);

    public abstract void a(int i2, int i3);

    public abstract void a(int i2, long j2);

    public abstract void a(int i2, oa1 oa1Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(int i2, oa1 oa1Var, db1 db1Var);

    public abstract void a(int i2, t71 t71Var);

    public abstract void a(int i2, String str);

    public abstract void a(int i2, boolean z);

    public abstract void a(long j2);

    public abstract int b();

    public abstract void b(int i2);

    public abstract void b(int i2, int i3);

    public final void b(int i2, long j2) {
        a(i2, i(j2));
    }

    public abstract void b(int i2, oa1 oa1Var);

    public abstract void b(int i2, t71 t71Var);

    public abstract void b(byte[] bArr, int i2, int i3);

    public final void c(int i2, int i3) {
        b(i2, l(i3));
    }

    public abstract void c(int i2, long j2);

    public abstract void c(long j2);

    public abstract void d(int i2);

    public abstract void d(int i2, int i3);

    public abstract void e(int i2, int i3);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class c extends m81 {

        /* renamed from: d, reason: collision with root package name */
        private final ByteBuffer f8057d;

        /* renamed from: e, reason: collision with root package name */
        private final ByteBuffer f8058e;

        c(ByteBuffer byteBuffer) {
            super();
            this.f8057d = byteBuffer;
            this.f8058e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, int i3) {
            e(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2, int i3) {
            e(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void c(int i2, long j2) {
            e(i2, 1);
            c(j2);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void d(int i2, int i3) {
            e(i2, 5);
            d(i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void e(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, long j2) {
            e(i2, 0);
            a(j2);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2, oa1 oa1Var) {
            e(1, 3);
            b(2, i2);
            a(3, oa1Var);
            e(1, 4);
        }

        public final void c(oa1 oa1Var) {
            b(oa1Var.d());
            oa1Var.a(this);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void d(int i2) {
            try {
                this.f8058e.putInt(i2);
            } catch (BufferOverflowException e2) {
                throw new d(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, boolean z) {
            e(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void c(long j2) {
            try {
                this.f8058e.putLong(j2);
            } catch (BufferOverflowException e2) {
                throw new d(e2);
            }
        }

        private final void c(String str) {
            try {
                fc1.a(str, this.f8058e);
            } catch (IndexOutOfBoundsException e2) {
                throw new d(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, String str) {
            e(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2, t71 t71Var) {
            e(1, 3);
            b(2, i2);
            a(3, t71Var);
            e(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, t71 t71Var) {
            e(i2, 2);
            b(t71Var);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, oa1 oa1Var) {
            e(i2, 2);
            c(oa1Var);
        }

        final void b(oa1 oa1Var, db1 db1Var) {
            m71 m71Var = (m71) oa1Var;
            int g2 = m71Var.g();
            if (g2 == -1) {
                g2 = db1Var.f(m71Var);
                m71Var.a(g2);
            }
            b(g2);
            db1Var.a((db1) oa1Var, (tc1) this.f8050a);
        }

        @Override // com.google.android.gms.internal.ads.m81
        final void a(int i2, oa1 oa1Var, db1 db1Var) {
            e(i2, 2);
            b(oa1Var, db1Var);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(byte b2) {
            try {
                this.f8058e.put(b2);
            } catch (BufferOverflowException e2) {
                throw new d(e2);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        public final void b(t71 t71Var) {
            b(t71Var.size());
            t71Var.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(long j2) {
            while (((-128) & j2) != 0) {
                try {
                    this.f8058e.put((byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                } catch (BufferOverflowException e2) {
                    throw new d(e2);
                }
            }
            this.f8058e.put((byte) j2);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2) {
            while ((i2 & (-128)) != 0) {
                try {
                    this.f8058e.put((byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                } catch (BufferOverflowException e2) {
                    throw new d(e2);
                }
            }
            this.f8058e.put((byte) i2);
        }

        @Override // com.google.android.gms.internal.ads.u71
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(byte[] bArr, int i2, int i3) {
            try {
                this.f8058e.put(bArr, i2, i3);
            } catch (IndexOutOfBoundsException e2) {
                throw new d(e2);
            } catch (BufferOverflowException e3) {
                throw new d(e3);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a() {
            this.f8057d.position(this.f8058e.position());
        }

        public final void b(String str) {
            int position = this.f8058e.position();
            try {
                int g2 = m81.g(str.length() * 3);
                int g3 = m81.g(str.length());
                if (g3 == g2) {
                    int position2 = this.f8058e.position() + g3;
                    this.f8058e.position(position2);
                    c(str);
                    int position3 = this.f8058e.position();
                    this.f8058e.position(position);
                    b(position3 - position2);
                    this.f8058e.position(position3);
                    return;
                }
                b(fc1.a(str));
                c(str);
            } catch (ic1 e2) {
                this.f8058e.position(position);
                a(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new d(e3);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final int b() {
            return this.f8058e.remaining();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
    /* loaded from: classes.dex */
    public static final class e extends m81 {

        /* renamed from: d, reason: collision with root package name */
        private final ByteBuffer f8059d;

        /* renamed from: e, reason: collision with root package name */
        private final ByteBuffer f8060e;

        /* renamed from: f, reason: collision with root package name */
        private final long f8061f;

        /* renamed from: g, reason: collision with root package name */
        private final long f8062g;

        /* renamed from: h, reason: collision with root package name */
        private final long f8063h;

        /* renamed from: i, reason: collision with root package name */
        private final long f8064i;

        /* renamed from: j, reason: collision with root package name */
        private long f8065j;

        e(ByteBuffer byteBuffer) {
            super();
            this.f8059d = byteBuffer;
            this.f8060e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f8061f = bc1.a(byteBuffer);
            this.f8062g = this.f8061f + byteBuffer.position();
            this.f8063h = this.f8061f + byteBuffer.limit();
            this.f8064i = this.f8063h - 10;
            this.f8065j = this.f8062g;
        }

        private final void i(long j2) {
            this.f8060e.position((int) (j2 - this.f8061f));
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, int i3) {
            e(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2, int i3) {
            e(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void c(int i2, long j2) {
            e(i2, 1);
            c(j2);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void d(int i2, int i3) {
            e(i2, 5);
            d(i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void e(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, long j2) {
            e(i2, 0);
            a(j2);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2, oa1 oa1Var) {
            e(1, 3);
            b(2, i2);
            a(3, oa1Var);
            e(1, 4);
        }

        public final void c(oa1 oa1Var) {
            b(oa1Var.d());
            oa1Var.a(this);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void d(int i2) {
            this.f8060e.putInt((int) (this.f8065j - this.f8061f), i2);
            this.f8065j += 4;
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, boolean z) {
            e(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void c(long j2) {
            this.f8060e.putLong((int) (this.f8065j - this.f8061f), j2);
            this.f8065j += 8;
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, String str) {
            e(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2, t71 t71Var) {
            e(1, 3);
            b(2, i2);
            a(3, t71Var);
            e(1, 4);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, t71 t71Var) {
            e(i2, 2);
            b(t71Var);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2, oa1 oa1Var) {
            e(i2, 2);
            c(oa1Var);
        }

        final void b(oa1 oa1Var, db1 db1Var) {
            m71 m71Var = (m71) oa1Var;
            int g2 = m71Var.g();
            if (g2 == -1) {
                g2 = db1Var.f(m71Var);
                m71Var.a(g2);
            }
            b(g2);
            db1Var.a((db1) oa1Var, (tc1) this.f8050a);
        }

        @Override // com.google.android.gms.internal.ads.m81
        final void a(int i2, oa1 oa1Var, db1 db1Var) {
            e(i2, 2);
            b(oa1Var, db1Var);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(byte b2) {
            long j2 = this.f8065j;
            if (j2 < this.f8063h) {
                this.f8065j = 1 + j2;
                bc1.a(j2, b2);
                return;
            }
            throw new d(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j2), Long.valueOf(this.f8063h), 1));
        }

        public final void b(t71 t71Var) {
            b(t71Var.size());
            t71Var.zza(this);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(int i2) {
            if (this.f8065j <= this.f8064i) {
                while ((i2 & (-128)) != 0) {
                    long j2 = this.f8065j;
                    this.f8065j = j2 + 1;
                    bc1.a(j2, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
                long j3 = this.f8065j;
                this.f8065j = 1 + j3;
                bc1.a(j3, (byte) i2);
                return;
            }
            while (true) {
                long j4 = this.f8065j;
                if (j4 >= this.f8063h) {
                    throw new d(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j4), Long.valueOf(this.f8063h), 1));
                }
                if ((i2 & (-128)) == 0) {
                    this.f8065j = 1 + j4;
                    bc1.a(j4, (byte) i2);
                    return;
                } else {
                    this.f8065j = j4 + 1;
                    bc1.a(j4, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a(long j2) {
            if (this.f8065j <= this.f8064i) {
                while ((j2 & (-128)) != 0) {
                    long j3 = this.f8065j;
                    this.f8065j = j3 + 1;
                    bc1.a(j3, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                long j4 = this.f8065j;
                this.f8065j = 1 + j4;
                bc1.a(j4, (byte) j2);
                return;
            }
            while (true) {
                long j5 = this.f8065j;
                if (j5 >= this.f8063h) {
                    throw new d(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j5), Long.valueOf(this.f8063h), 1));
                }
                if ((j2 & (-128)) == 0) {
                    this.f8065j = 1 + j5;
                    bc1.a(j5, (byte) j2);
                    return;
                } else {
                    this.f8065j = j5 + 1;
                    bc1.a(j5, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void b(byte[] bArr, int i2, int i3) {
            if (bArr != null && i2 >= 0 && i3 >= 0 && bArr.length - i3 >= i2) {
                long j2 = i3;
                long j3 = this.f8063h - j2;
                long j4 = this.f8065j;
                if (j3 >= j4) {
                    bc1.a(bArr, i2, j4, j2);
                    this.f8065j += j2;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException(HummerConstants.VALUE);
            }
            throw new d(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f8065j), Long.valueOf(this.f8063h), Integer.valueOf(i3)));
        }

        @Override // com.google.android.gms.internal.ads.u71
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final void a() {
            this.f8059d.position((int) (this.f8065j - this.f8061f));
        }

        public final void b(String str) {
            long j2 = this.f8065j;
            try {
                int g2 = m81.g(str.length() * 3);
                int g3 = m81.g(str.length());
                if (g3 == g2) {
                    int i2 = ((int) (this.f8065j - this.f8061f)) + g3;
                    this.f8060e.position(i2);
                    fc1.a(str, this.f8060e);
                    int position = this.f8060e.position() - i2;
                    b(position);
                    this.f8065j += position;
                    return;
                }
                int a2 = fc1.a(str);
                b(a2);
                i(this.f8065j);
                fc1.a(str, this.f8060e);
                this.f8065j += a2;
            } catch (ic1 e2) {
                this.f8065j = j2;
                i(this.f8065j);
                a(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new d(e3);
            } catch (IndexOutOfBoundsException e4) {
                throw new d(e4);
            }
        }

        @Override // com.google.android.gms.internal.ads.m81
        public final int b() {
            return (int) (this.f8063h - this.f8065j);
        }
    }

    public static int e(int i2) {
        return g(i2 << 3);
    }

    public static int f(int i2, long j2) {
        return e(i2) + e(i(j2));
    }

    public static int g(int i2, long j2) {
        return e(i2) + 8;
    }

    public final void b(long j2) {
        a(i(j2));
    }

    public final void c(int i2) {
        b(l(i2));
    }

    public static m81 a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new a(byteBuffer);
        }
        if (byteBuffer.isDirect() && !byteBuffer.isReadOnly()) {
            if (bc1.b()) {
                return new e(byteBuffer);
            }
            return new c(byteBuffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    public static int b(int i2, float f2) {
        return e(i2) + 4;
    }

    public static int c(int i2, t71 t71Var) {
        int e2 = e(i2);
        int size = t71Var.size();
        return e2 + g(size) + size;
    }

    public static int d(int i2, oa1 oa1Var) {
        return (e(1) << 1) + g(2, i2) + c(3, oa1Var);
    }

    public static int h(int i2, long j2) {
        return e(i2) + 8;
    }

    public static int k(int i2) {
        return f(i2);
    }

    public static int b(int i2, double d2) {
        return e(i2) + 8;
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

    public static int b(int i2, boolean z) {
        return e(i2) + 1;
    }

    public static int f(long j2) {
        return e(i(j2));
    }

    public static int b(int i2, String str) {
        return e(i2) + a(str);
    }

    public static int c(int i2, oa1 oa1Var) {
        return e(i2) + a(oa1Var);
    }

    public static int d(int i2, t71 t71Var) {
        return (e(1) << 1) + g(2, i2) + c(3, t71Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, oa1 oa1Var, db1 db1Var) {
        return e(i2) + a(oa1Var, db1Var);
    }

    public final void c() {
        if (b() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    public static int b(int i2, t91 t91Var) {
        return (e(1) << 1) + g(2, i2) + a(3, t91Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int c(int i2, oa1 oa1Var, db1 db1Var) {
        int e2 = e(i2) << 1;
        m71 m71Var = (m71) oa1Var;
        int g2 = m71Var.g();
        if (g2 == -1) {
            g2 = db1Var.f(m71Var);
            m71Var.a(g2);
        }
        return e2 + g2;
    }

    public static int d(long j2) {
        return e(j2);
    }

    public final void a(int i2, float f2) {
        d(i2, Float.floatToRawIntBits(f2));
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        return g(length) + length;
    }

    public final void a(int i2, double d2) {
        c(i2, Double.doubleToRawLongBits(d2));
    }

    public final void a(float f2) {
        d(Float.floatToRawIntBits(f2));
    }

    @Deprecated
    public static int b(oa1 oa1Var) {
        return oa1Var.d();
    }

    public final void a(double d2) {
        c(Double.doubleToRawLongBits(d2));
    }

    public final void a(boolean z) {
        a(z ? (byte) 1 : (byte) 0);
    }

    public static int a(int i2, t91 t91Var) {
        int e2 = e(i2);
        int b2 = t91Var.b();
        return e2 + g(b2) + b2;
    }

    public static int a(String str) {
        int length;
        try {
            length = fc1.a(str);
        } catch (ic1 unused) {
            length = str.getBytes(f91.f6596a).length;
        }
        return g(length) + length;
    }

    public static int a(t91 t91Var) {
        int b2 = t91Var.b();
        return g(b2) + b2;
    }

    public static int a(t71 t71Var) {
        int size = t71Var.size();
        return g(size) + size;
    }

    public static int a(oa1 oa1Var) {
        int d2 = oa1Var.d();
        return g(d2) + d2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(oa1 oa1Var, db1 db1Var) {
        m71 m71Var = (m71) oa1Var;
        int g2 = m71Var.g();
        if (g2 == -1) {
            g2 = db1Var.f(m71Var);
            m71Var.a(g2);
        }
        return g(g2) + g2;
    }

    final void a(String str, ic1 ic1Var) {
        f8048b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) ic1Var);
        byte[] bytes = str.getBytes(f91.f6596a);
        try {
            b(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (d e2) {
            throw e2;
        } catch (IndexOutOfBoundsException e3) {
            throw new d(e3);
        }
    }
}
