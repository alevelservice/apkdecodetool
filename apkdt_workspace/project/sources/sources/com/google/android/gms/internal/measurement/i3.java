package com.google.android.gms.internal.measurement;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class i3 extends q2 {

    /* renamed from: b, reason: collision with root package name */
    private static final Logger f11900b = Logger.getLogger(i3.class.getName());

    /* renamed from: c, reason: collision with root package name */
    private static final boolean f11901c = x6.a();

    /* renamed from: a, reason: collision with root package name */
    l3 f11902a;

    /* loaded from: classes.dex */
    static class a extends i3 {

        /* renamed from: d, reason: collision with root package name */
        private final byte[] f11903d;

        /* renamed from: e, reason: collision with root package name */
        private final int f11904e;

        /* renamed from: f, reason: collision with root package name */
        private final int f11905f;

        /* renamed from: g, reason: collision with root package name */
        private int f11906g;

        a(byte[] bArr, int i2, int i3) {
            super();
            if (bArr != null) {
                int i4 = i2 + i3;
                if ((i2 | i3 | (bArr.length - i4)) >= 0) {
                    this.f11903d = bArr;
                    this.f11904e = i2;
                    this.f11906g = i2;
                    this.f11905f = i4;
                    return;
                }
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            throw new NullPointerException("buffer");
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public void a() {
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void d(int i2) {
            try {
                byte[] bArr = this.f11903d;
                int i3 = this.f11906g;
                this.f11906g = i3 + 1;
                bArr[i3] = (byte) i2;
                byte[] bArr2 = this.f11903d;
                int i4 = this.f11906g;
                this.f11906g = i4 + 1;
                bArr2[i4] = (byte) (i2 >> 8);
                byte[] bArr3 = this.f11903d;
                int i5 = this.f11906g;
                this.f11906g = i5 + 1;
                bArr3[i5] = (byte) (i2 >> 16);
                byte[] bArr4 = this.f11903d;
                int i6 = this.f11906g;
                this.f11906g = i6 + 1;
                bArr4[i6] = (byte) (i2 >>> 24);
            } catch (IndexOutOfBoundsException e2) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11906g), Integer.valueOf(this.f11905f), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        public final void b(t2 t2Var) {
            b(t2Var.size());
            t2Var.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        public final int e() {
            return this.f11906g - this.f11904e;
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2, k5 k5Var) {
            a(1, 3);
            c(2, i2);
            a(3, k5Var);
            a(1, 4);
        }

        public final void c(k5 k5Var) {
            b(k5Var.b());
            k5Var.a(this);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void c(long j2) {
            try {
                byte[] bArr = this.f11903d;
                int i2 = this.f11906g;
                this.f11906g = i2 + 1;
                bArr[i2] = (byte) j2;
                byte[] bArr2 = this.f11903d;
                int i3 = this.f11906g;
                this.f11906g = i3 + 1;
                bArr2[i3] = (byte) (j2 >> 8);
                byte[] bArr3 = this.f11903d;
                int i4 = this.f11906g;
                this.f11906g = i4 + 1;
                bArr3[i4] = (byte) (j2 >> 16);
                byte[] bArr4 = this.f11903d;
                int i5 = this.f11906g;
                this.f11906g = i5 + 1;
                bArr4[i5] = (byte) (j2 >> 24);
                byte[] bArr5 = this.f11903d;
                int i6 = this.f11906g;
                this.f11906g = i6 + 1;
                bArr5[i6] = (byte) (j2 >> 32);
                byte[] bArr6 = this.f11903d;
                int i7 = this.f11906g;
                this.f11906g = i7 + 1;
                bArr6[i7] = (byte) (j2 >> 40);
                byte[] bArr7 = this.f11903d;
                int i8 = this.f11906g;
                this.f11906g = i8 + 1;
                bArr7[i8] = (byte) (j2 >> 48);
                byte[] bArr8 = this.f11903d;
                int i9 = this.f11906g;
                this.f11906g = i9 + 1;
                bArr8[i9] = (byte) (j2 >> 56);
            } catch (IndexOutOfBoundsException e2) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11906g), Integer.valueOf(this.f11905f), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, t2 t2Var) {
            a(i2, 2);
            b(t2Var);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2, t2 t2Var) {
            a(1, 3);
            c(2, i2);
            a(3, t2Var);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, k5 k5Var) {
            a(i2, 2);
            c(k5Var);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        final void a(int i2, k5 k5Var, y5 y5Var) {
            a(i2, 2);
            j2 j2Var = (j2) k5Var;
            int f2 = j2Var.f();
            if (f2 == -1) {
                f2 = y5Var.b(j2Var);
                j2Var.a(f2);
            }
            b(f2);
            y5Var.a((y5) k5Var, (p7) this.f11902a);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2) {
            if (!i3.f11901c || m2.a() || b() < 5) {
                while ((i2 & (-128)) != 0) {
                    try {
                        byte[] bArr = this.f11903d;
                        int i3 = this.f11906g;
                        this.f11906g = i3 + 1;
                        bArr[i3] = (byte) ((i2 & 127) | 128);
                        i2 >>>= 7;
                    } catch (IndexOutOfBoundsException e2) {
                        throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11906g), Integer.valueOf(this.f11905f), 1), e2);
                    }
                }
                byte[] bArr2 = this.f11903d;
                int i4 = this.f11906g;
                this.f11906g = i4 + 1;
                bArr2[i4] = (byte) i2;
                return;
            }
            if ((i2 & (-128)) == 0) {
                byte[] bArr3 = this.f11903d;
                int i5 = this.f11906g;
                this.f11906g = i5 + 1;
                x6.a(bArr3, i5, (byte) i2);
                return;
            }
            byte[] bArr4 = this.f11903d;
            int i6 = this.f11906g;
            this.f11906g = i6 + 1;
            x6.a(bArr4, i6, (byte) (i2 | 128));
            int i7 = i2 >>> 7;
            if ((i7 & (-128)) == 0) {
                byte[] bArr5 = this.f11903d;
                int i8 = this.f11906g;
                this.f11906g = i8 + 1;
                x6.a(bArr5, i8, (byte) i7);
                return;
            }
            byte[] bArr6 = this.f11903d;
            int i9 = this.f11906g;
            this.f11906g = i9 + 1;
            x6.a(bArr6, i9, (byte) (i7 | 128));
            int i10 = i7 >>> 7;
            if ((i10 & (-128)) == 0) {
                byte[] bArr7 = this.f11903d;
                int i11 = this.f11906g;
                this.f11906g = i11 + 1;
                x6.a(bArr7, i11, (byte) i10);
                return;
            }
            byte[] bArr8 = this.f11903d;
            int i12 = this.f11906g;
            this.f11906g = i12 + 1;
            x6.a(bArr8, i12, (byte) (i10 | 128));
            int i13 = i10 >>> 7;
            if ((i13 & (-128)) == 0) {
                byte[] bArr9 = this.f11903d;
                int i14 = this.f11906g;
                this.f11906g = i14 + 1;
                x6.a(bArr9, i14, (byte) i13);
                return;
            }
            byte[] bArr10 = this.f11903d;
            int i15 = this.f11906g;
            this.f11906g = i15 + 1;
            x6.a(bArr10, i15, (byte) (i13 | 128));
            byte[] bArr11 = this.f11903d;
            int i16 = this.f11906g;
            this.f11906g = i16 + 1;
            x6.a(bArr11, i16, (byte) (i13 >>> 7));
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(byte b2) {
            try {
                byte[] bArr = this.f11903d;
                int i2 = this.f11906g;
                this.f11906g = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11906g), Integer.valueOf(this.f11905f), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(long j2) {
            if (i3.f11901c && b() >= 10) {
                while ((j2 & (-128)) != 0) {
                    byte[] bArr = this.f11903d;
                    int i2 = this.f11906g;
                    this.f11906g = i2 + 1;
                    x6.a(bArr, i2, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                byte[] bArr2 = this.f11903d;
                int i3 = this.f11906g;
                this.f11906g = i3 + 1;
                x6.a(bArr2, i3, (byte) j2);
                return;
            }
            while ((j2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f11903d;
                    int i4 = this.f11906g;
                    this.f11906g = i4 + 1;
                    bArr3[i4] = (byte) ((((int) j2) & 127) | 128);
                    j2 >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11906g), Integer.valueOf(this.f11905f), 1), e2);
                }
            }
            byte[] bArr4 = this.f11903d;
            int i5 = this.f11906g;
            this.f11906g = i5 + 1;
            bArr4[i5] = (byte) j2;
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(byte[] bArr, int i2, int i3) {
            try {
                System.arraycopy(bArr, i2, this.f11903d, this.f11906g, i3);
                this.f11906g += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new b(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11906g), Integer.valueOf(this.f11905f), Integer.valueOf(i3)), e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.q2
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        public final void b(String str) {
            int i2 = this.f11906g;
            try {
                int g2 = i3.g(str.length() * 3);
                int g3 = i3.g(str.length());
                if (g3 == g2) {
                    this.f11906g = i2 + g3;
                    int a2 = a7.a(str, this.f11903d, this.f11906g, b());
                    this.f11906g = i2;
                    b((a2 - i2) - g3);
                    this.f11906g = a2;
                    return;
                }
                b(a7.a(str));
                this.f11906g = a7.a(str, this.f11903d, this.f11906g, b());
            } catch (e7 e2) {
                this.f11906g = i2;
                a(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new b(e3);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final int b() {
            return this.f11905f - this.f11906g;
        }
    }

    /* loaded from: classes.dex */
    public static class b extends IOException {
        b() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        b(java.lang.String r3) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.i3.b.<init>(java.lang.String):void");
        }

        b(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        b(java.lang.String r3, java.lang.Throwable r4) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.i3.b.<init>(java.lang.String, java.lang.Throwable):void");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class c extends a {

        /* renamed from: h, reason: collision with root package name */
        private final ByteBuffer f11907h;

        /* renamed from: i, reason: collision with root package name */
        private int f11908i;

        c(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f11907h = byteBuffer;
            this.f11908i = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.measurement.i3.a, com.google.android.gms.internal.measurement.i3
        public final void a() {
            this.f11907h.position(this.f11908i + e());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends i3 {

        /* renamed from: d, reason: collision with root package name */
        private final ByteBuffer f11909d;

        /* renamed from: e, reason: collision with root package name */
        private final ByteBuffer f11910e;

        /* renamed from: f, reason: collision with root package name */
        private final long f11911f;

        /* renamed from: g, reason: collision with root package name */
        private final long f11912g;

        /* renamed from: h, reason: collision with root package name */
        private final long f11913h;

        /* renamed from: i, reason: collision with root package name */
        private final long f11914i;

        /* renamed from: j, reason: collision with root package name */
        private long f11915j;

        d(ByteBuffer byteBuffer) {
            super();
            this.f11909d = byteBuffer;
            this.f11910e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f11911f = x6.a(byteBuffer);
            this.f11912g = this.f11911f + byteBuffer.position();
            this.f11913h = this.f11911f + byteBuffer.limit();
            this.f11914i = this.f11913h - 10;
            this.f11915j = this.f11912g;
        }

        private final void i(long j2) {
            this.f11910e.position((int) (j2 - this.f11911f));
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void d(int i2) {
            this.f11910e.putInt((int) (this.f11915j - this.f11911f), i2);
            this.f11915j += 4;
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2, k5 k5Var) {
            a(1, 3);
            c(2, i2);
            a(3, k5Var);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        public final void c(k5 k5Var) {
            b(k5Var.b());
            k5Var.a(this);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2, t2 t2Var) {
            a(1, 3);
            c(2, i2);
            a(3, t2Var);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void c(long j2) {
            this.f11910e.putLong((int) (this.f11915j - this.f11911f), j2);
            this.f11915j += 8;
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, t2 t2Var) {
            a(i2, 2);
            b(t2Var);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, k5 k5Var) {
            a(i2, 2);
            c(k5Var);
        }

        final void b(k5 k5Var, y5 y5Var) {
            j2 j2Var = (j2) k5Var;
            int f2 = j2Var.f();
            if (f2 == -1) {
                f2 = y5Var.b(j2Var);
                j2Var.a(f2);
            }
            b(f2);
            y5Var.a((y5) k5Var, (p7) this.f11902a);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        final void a(int i2, k5 k5Var, y5 y5Var) {
            a(i2, 2);
            b(k5Var, y5Var);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(byte b2) {
            long j2 = this.f11915j;
            if (j2 < this.f11913h) {
                this.f11915j = 1 + j2;
                x6.a(j2, b2);
                return;
            }
            throw new b(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j2), Long.valueOf(this.f11913h), 1));
        }

        public final void b(t2 t2Var) {
            b(t2Var.size());
            t2Var.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2) {
            if (this.f11915j <= this.f11914i) {
                while ((i2 & (-128)) != 0) {
                    long j2 = this.f11915j;
                    this.f11915j = j2 + 1;
                    x6.a(j2, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
                long j3 = this.f11915j;
                this.f11915j = 1 + j3;
                x6.a(j3, (byte) i2);
                return;
            }
            while (true) {
                long j4 = this.f11915j;
                if (j4 >= this.f11913h) {
                    throw new b(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j4), Long.valueOf(this.f11913h), 1));
                }
                if ((i2 & (-128)) == 0) {
                    this.f11915j = 1 + j4;
                    x6.a(j4, (byte) i2);
                    return;
                } else {
                    this.f11915j = j4 + 1;
                    x6.a(j4, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(long j2) {
            if (this.f11915j <= this.f11914i) {
                while ((j2 & (-128)) != 0) {
                    long j3 = this.f11915j;
                    this.f11915j = j3 + 1;
                    x6.a(j3, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                long j4 = this.f11915j;
                this.f11915j = 1 + j4;
                x6.a(j4, (byte) j2);
                return;
            }
            while (true) {
                long j5 = this.f11915j;
                if (j5 >= this.f11913h) {
                    throw new b(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j5), Long.valueOf(this.f11913h), 1));
                }
                if ((j2 & (-128)) == 0) {
                    this.f11915j = 1 + j5;
                    x6.a(j5, (byte) j2);
                    return;
                } else {
                    this.f11915j = j5 + 1;
                    x6.a(j5, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(byte[] bArr, int i2, int i3) {
            if (bArr != null && i2 >= 0 && i3 >= 0 && bArr.length - i3 >= i2) {
                long j2 = i3;
                long j3 = this.f11913h - j2;
                long j4 = this.f11915j;
                if (j3 >= j4) {
                    x6.a(bArr, i2, j4, j2);
                    this.f11915j += j2;
                    return;
                }
            }
            if (bArr == null) {
                throw new NullPointerException(HummerConstants.VALUE);
            }
            throw new b(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f11915j), Long.valueOf(this.f11913h), Integer.valueOf(i3)));
        }

        @Override // com.google.android.gms.internal.measurement.q2
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a() {
            this.f11909d.position((int) (this.f11915j - this.f11911f));
        }

        public final void b(String str) {
            long j2 = this.f11915j;
            try {
                int g2 = i3.g(str.length() * 3);
                int g3 = i3.g(str.length());
                if (g3 == g2) {
                    int i2 = ((int) (this.f11915j - this.f11911f)) + g3;
                    this.f11910e.position(i2);
                    a7.a(str, this.f11910e);
                    int position = this.f11910e.position() - i2;
                    b(position);
                    this.f11915j += position;
                    return;
                }
                int a2 = a7.a(str);
                b(a2);
                i(this.f11915j);
                a7.a(str, this.f11910e);
                this.f11915j += a2;
            } catch (e7 e2) {
                this.f11915j = j2;
                i(this.f11915j);
                a(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new b(e3);
            } catch (IndexOutOfBoundsException e4) {
                throw new b(e4);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final int b() {
            return (int) (this.f11913h - this.f11915j);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e extends i3 {

        /* renamed from: d, reason: collision with root package name */
        private final ByteBuffer f11916d;

        /* renamed from: e, reason: collision with root package name */
        private final ByteBuffer f11917e;

        e(ByteBuffer byteBuffer) {
            super();
            this.f11916d = byteBuffer;
            this.f11917e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void d(int i2) {
            try {
                this.f11917e.putInt(i2);
            } catch (BufferOverflowException e2) {
                throw new b(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2, k5 k5Var) {
            a(1, 3);
            c(2, i2);
            a(3, k5Var);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        public final void c(k5 k5Var) {
            b(k5Var.b());
            k5Var.a(this);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2, t2 t2Var) {
            a(1, 3);
            c(2, i2);
            a(3, t2Var);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void c(long j2) {
            try {
                this.f11917e.putLong(j2);
            } catch (BufferOverflowException e2) {
                throw new b(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, t2 t2Var) {
            a(i2, 2);
            b(t2Var);
        }

        private final void c(String str) {
            try {
                a7.a(str, this.f11917e);
            } catch (IndexOutOfBoundsException e2) {
                throw new b(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2, k5 k5Var) {
            a(i2, 2);
            c(k5Var);
        }

        final void b(k5 k5Var, y5 y5Var) {
            j2 j2Var = (j2) k5Var;
            int f2 = j2Var.f();
            if (f2 == -1) {
                f2 = y5Var.b(j2Var);
                j2Var.a(f2);
            }
            b(f2);
            y5Var.a((y5) k5Var, (p7) this.f11902a);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        final void a(int i2, k5 k5Var, y5 y5Var) {
            a(i2, 2);
            b(k5Var, y5Var);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(byte b2) {
            try {
                this.f11917e.put(b2);
            } catch (BufferOverflowException e2) {
                throw new b(e2);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        public final void b(t2 t2Var) {
            b(t2Var.size());
            t2Var.zza(this);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a(long j2) {
            while (((-128) & j2) != 0) {
                try {
                    this.f11917e.put((byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                } catch (BufferOverflowException e2) {
                    throw new b(e2);
                }
            }
            this.f11917e.put((byte) j2);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(int i2) {
            while ((i2 & (-128)) != 0) {
                try {
                    this.f11917e.put((byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                } catch (BufferOverflowException e2) {
                    throw new b(e2);
                }
            }
            this.f11917e.put((byte) i2);
        }

        @Override // com.google.android.gms.internal.measurement.q2
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void a() {
            this.f11916d.position(this.f11917e.position());
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final void b(byte[] bArr, int i2, int i3) {
            try {
                this.f11917e.put(bArr, i2, i3);
            } catch (IndexOutOfBoundsException e2) {
                throw new b(e2);
            } catch (BufferOverflowException e3) {
                throw new b(e3);
            }
        }

        public final void b(String str) {
            int position = this.f11917e.position();
            try {
                int g2 = i3.g(str.length() * 3);
                int g3 = i3.g(str.length());
                if (g3 == g2) {
                    int position2 = this.f11917e.position() + g3;
                    this.f11917e.position(position2);
                    c(str);
                    int position3 = this.f11917e.position();
                    this.f11917e.position(position);
                    b(position3 - position2);
                    this.f11917e.position(position3);
                    return;
                }
                b(a7.a(str));
                c(str);
            } catch (e7 e2) {
                this.f11917e.position(position);
                a(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new b(e3);
            }
        }

        @Override // com.google.android.gms.internal.measurement.i3
        public final int b() {
            return this.f11917e.remaining();
        }
    }

    private i3() {
    }

    public static i3 a(byte[] bArr) {
        return new a(bArr, 0, bArr.length);
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

    public abstract void a(int i2, k5 k5Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(int i2, k5 k5Var, y5 y5Var);

    public abstract void a(int i2, t2 t2Var);

    public abstract void a(int i2, String str);

    public abstract void a(int i2, boolean z);

    public abstract void a(long j2);

    public abstract int b();

    public abstract void b(int i2);

    public abstract void b(int i2, int i3);

    public final void b(int i2, long j2) {
        a(i2, i(j2));
    }

    public abstract void b(int i2, k5 k5Var);

    public abstract void b(int i2, t2 t2Var);

    public abstract void b(byte[] bArr, int i2, int i3);

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

    public static int c(int i2, t2 t2Var) {
        int e2 = e(i2);
        int size = t2Var.size();
        return e2 + g(size) + size;
    }

    public static int d(int i2, long j2) {
        return e(i2) + e(j2);
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

    public static i3 a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new c(byteBuffer);
        }
        if (byteBuffer.isDirect() && !byteBuffer.isReadOnly()) {
            if (x6.b()) {
                return new d(byteBuffer);
            }
            return new e(byteBuffer);
        }
        throw new IllegalArgumentException("ByteBuffer is read-only");
    }

    public static int b(int i2, float f2) {
        return e(i2) + 4;
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

    public static int d(int i2, k5 k5Var) {
        return (e(1) << 1) + g(2, i2) + c(3, k5Var);
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

    public static int c(int i2, k5 k5Var) {
        return e(i2) + a(k5Var);
    }

    public static int f(long j2) {
        return e(i(j2));
    }

    public static int b(int i2, String str) {
        return e(i2) + a(str);
    }

    public final void c() {
        if (b() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, k5 k5Var, y5 y5Var) {
        return e(i2) + a(k5Var, y5Var);
    }

    public static int d(int i2, t2 t2Var) {
        return (e(1) << 1) + g(2, i2) + c(3, t2Var);
    }

    public static int b(int i2, q4 q4Var) {
        return (e(1) << 1) + g(2, i2) + a(3, q4Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int c(int i2, k5 k5Var, y5 y5Var) {
        int e2 = e(i2) << 1;
        j2 j2Var = (j2) k5Var;
        int f2 = j2Var.f();
        if (f2 == -1) {
            f2 = y5Var.b(j2Var);
            j2Var.a(f2);
        }
        return e2 + f2;
    }

    public static int d(long j2) {
        return e(j2);
    }

    public final void a(int i2, float f2) {
        e(i2, Float.floatToRawIntBits(f2));
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
    public static int b(k5 k5Var) {
        return k5Var.b();
    }

    public final void a(double d2) {
        c(Double.doubleToRawLongBits(d2));
    }

    public final void a(boolean z) {
        a(z ? (byte) 1 : (byte) 0);
    }

    public static int a(int i2, q4 q4Var) {
        int e2 = e(i2);
        int b2 = q4Var.b();
        return e2 + g(b2) + b2;
    }

    public static int a(String str) {
        int length;
        try {
            length = a7.a(str);
        } catch (e7 unused) {
            length = str.getBytes(c4.f11799a).length;
        }
        return g(length) + length;
    }

    public static int a(q4 q4Var) {
        int b2 = q4Var.b();
        return g(b2) + b2;
    }

    public static int a(t2 t2Var) {
        int size = t2Var.size();
        return g(size) + size;
    }

    public static int a(k5 k5Var) {
        int b2 = k5Var.b();
        return g(b2) + b2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(k5 k5Var, y5 y5Var) {
        j2 j2Var = (j2) k5Var;
        int f2 = j2Var.f();
        if (f2 == -1) {
            f2 = y5Var.b(j2Var);
            j2Var.a(f2);
        }
        return g(f2) + f2;
    }

    final void a(String str, e7 e7Var) {
        f11900b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e7Var);
        byte[] bytes = str.getBytes(c4.f11799a);
        try {
            b(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (b e2) {
            throw e2;
        } catch (IndexOutOfBoundsException e3) {
            throw new b(e3);
        }
    }
}
