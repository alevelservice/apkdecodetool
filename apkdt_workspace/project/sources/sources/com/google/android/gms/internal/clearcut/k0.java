package com.google.android.gms.internal.clearcut;

import com.ap.zoloz.hummer.biz.HummerConstants;
import java.io.IOException;
import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.logging.Level;
import java.util.logging.Logger;

/* loaded from: classes.dex */
public abstract class k0 extends x {

    /* renamed from: b, reason: collision with root package name */
    private static final Logger f11454b = Logger.getLogger(k0.class.getName());

    /* renamed from: c, reason: collision with root package name */
    private static final boolean f11455c = y3.b();

    /* renamed from: a, reason: collision with root package name */
    m0 f11456a;

    /* loaded from: classes.dex */
    static class a extends k0 {

        /* renamed from: d, reason: collision with root package name */
        private final byte[] f11457d;

        /* renamed from: e, reason: collision with root package name */
        private final int f11458e;

        /* renamed from: f, reason: collision with root package name */
        private final int f11459f;

        /* renamed from: g, reason: collision with root package name */
        private int f11460g;

        a(byte[] bArr, int i2, int i3) {
            super();
            if (bArr == null) {
                throw new NullPointerException("buffer");
            }
            int i4 = i2 + i3;
            if ((i2 | i3 | (bArr.length - i4)) < 0) {
                throw new IllegalArgumentException(String.format("Array range is invalid. Buffer.length=%d, offset=%d, length=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
            }
            this.f11457d = bArr;
            this.f11458e = i2;
            this.f11460g = i2;
            this.f11459f = i4;
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public void a() {
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(byte b2) {
            try {
                byte[] bArr = this.f11457d;
                int i2 = this.f11460g;
                this.f11460g = i2 + 1;
                bArr[i2] = b2;
            } catch (IndexOutOfBoundsException e2) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11460g), Integer.valueOf(this.f11459f), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, i2 i2Var) {
            a(i2, 2);
            c(i2Var);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        final void a(int i2, i2 i2Var, z2 z2Var) {
            a(i2, 2);
            p pVar = (p) i2Var;
            int f2 = pVar.f();
            if (f2 == -1) {
                f2 = z2Var.d(pVar);
                pVar.a(f2);
            }
            b(f2);
            z2Var.a((z2) i2Var, (m4) this.f11456a);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, y yVar) {
            a(i2, 2);
            b(yVar);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(long j2) {
            if (k0.f11455c && b() >= 10) {
                while ((j2 & (-128)) != 0) {
                    byte[] bArr = this.f11457d;
                    int i2 = this.f11460g;
                    this.f11460g = i2 + 1;
                    y3.a(bArr, i2, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
                byte[] bArr2 = this.f11457d;
                int i3 = this.f11460g;
                this.f11460g = i3 + 1;
                y3.a(bArr2, i3, (byte) j2);
                return;
            }
            while ((j2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f11457d;
                    int i4 = this.f11460g;
                    this.f11460g = i4 + 1;
                    bArr3[i4] = (byte) ((((int) j2) & 127) | 128);
                    j2 >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11460g), Integer.valueOf(this.f11459f), 1), e2);
                }
            }
            byte[] bArr4 = this.f11457d;
            int i5 = this.f11460g;
            this.f11460g = i5 + 1;
            bArr4[i5] = (byte) j2;
        }

        @Override // com.google.android.gms.internal.clearcut.x
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final int b() {
            return this.f11459f - this.f11460g;
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2) {
            if (k0.f11455c && b() >= 10) {
                while ((i2 & (-128)) != 0) {
                    byte[] bArr = this.f11457d;
                    int i3 = this.f11460g;
                    this.f11460g = i3 + 1;
                    y3.a(bArr, i3, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
                byte[] bArr2 = this.f11457d;
                int i4 = this.f11460g;
                this.f11460g = i4 + 1;
                y3.a(bArr2, i4, (byte) i2);
                return;
            }
            while ((i2 & (-128)) != 0) {
                try {
                    byte[] bArr3 = this.f11457d;
                    int i5 = this.f11460g;
                    this.f11460g = i5 + 1;
                    bArr3[i5] = (byte) ((i2 & 127) | 128);
                    i2 >>>= 7;
                } catch (IndexOutOfBoundsException e2) {
                    throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11460g), Integer.valueOf(this.f11459f), 1), e2);
                }
            }
            byte[] bArr4 = this.f11457d;
            int i6 = this.f11460g;
            this.f11460g = i6 + 1;
            bArr4[i6] = (byte) i2;
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2, i2 i2Var) {
            a(1, 3);
            c(2, i2);
            a(3, i2Var);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2, y yVar) {
            a(1, 3);
            c(2, i2);
            a(3, yVar);
            a(1, 4);
        }

        public final void b(y yVar) {
            b(yVar.size());
            yVar.zza(this);
        }

        public final void b(String str) {
            int i2 = this.f11460g;
            try {
                int g2 = k0.g(str.length() * 3);
                int g3 = k0.g(str.length());
                if (g3 != g2) {
                    b(a4.a(str));
                    this.f11460g = a4.a(str, this.f11457d, this.f11460g, b());
                    return;
                }
                this.f11460g = i2 + g3;
                int a2 = a4.a(str, this.f11457d, this.f11460g, b());
                this.f11460g = i2;
                b((a2 - i2) - g3);
                this.f11460g = a2;
            } catch (d4 e2) {
                this.f11460g = i2;
                a(str, e2);
            } catch (IndexOutOfBoundsException e3) {
                throw new c(e3);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(byte[] bArr, int i2, int i3) {
            try {
                System.arraycopy(bArr, i2, this.f11457d, this.f11460g, i3);
                this.f11460g += i3;
            } catch (IndexOutOfBoundsException e2) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11460g), Integer.valueOf(this.f11459f), Integer.valueOf(i3)), e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void c(long j2) {
            try {
                byte[] bArr = this.f11457d;
                int i2 = this.f11460g;
                this.f11460g = i2 + 1;
                bArr[i2] = (byte) j2;
                byte[] bArr2 = this.f11457d;
                int i3 = this.f11460g;
                this.f11460g = i3 + 1;
                bArr2[i3] = (byte) (j2 >> 8);
                byte[] bArr3 = this.f11457d;
                int i4 = this.f11460g;
                this.f11460g = i4 + 1;
                bArr3[i4] = (byte) (j2 >> 16);
                byte[] bArr4 = this.f11457d;
                int i5 = this.f11460g;
                this.f11460g = i5 + 1;
                bArr4[i5] = (byte) (j2 >> 24);
                byte[] bArr5 = this.f11457d;
                int i6 = this.f11460g;
                this.f11460g = i6 + 1;
                bArr5[i6] = (byte) (j2 >> 32);
                byte[] bArr6 = this.f11457d;
                int i7 = this.f11460g;
                this.f11460g = i7 + 1;
                bArr6[i7] = (byte) (j2 >> 40);
                byte[] bArr7 = this.f11457d;
                int i8 = this.f11460g;
                this.f11460g = i8 + 1;
                bArr7[i8] = (byte) (j2 >> 48);
                byte[] bArr8 = this.f11457d;
                int i9 = this.f11460g;
                this.f11460g = i9 + 1;
                bArr8[i9] = (byte) (j2 >> 56);
            } catch (IndexOutOfBoundsException e2) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11460g), Integer.valueOf(this.f11459f), 1), e2);
            }
        }

        public final void c(i2 i2Var) {
            b(i2Var.e());
            i2Var.a(this);
        }

        public final int d() {
            return this.f11460g - this.f11458e;
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void d(int i2) {
            try {
                byte[] bArr = this.f11457d;
                int i3 = this.f11460g;
                this.f11460g = i3 + 1;
                bArr[i3] = (byte) i2;
                byte[] bArr2 = this.f11457d;
                int i4 = this.f11460g;
                this.f11460g = i4 + 1;
                bArr2[i4] = (byte) (i2 >> 8);
                byte[] bArr3 = this.f11457d;
                int i5 = this.f11460g;
                this.f11460g = i5 + 1;
                bArr3[i5] = (byte) (i2 >> 16);
                byte[] bArr4 = this.f11457d;
                int i6 = this.f11460g;
                this.f11460g = i6 + 1;
                bArr4[i6] = i2 >> 24;
            } catch (IndexOutOfBoundsException e2) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Integer.valueOf(this.f11460g), Integer.valueOf(this.f11459f), 1), e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class b extends a {

        /* renamed from: h, reason: collision with root package name */
        private final ByteBuffer f11461h;

        /* renamed from: i, reason: collision with root package name */
        private int f11462i;

        b(ByteBuffer byteBuffer) {
            super(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            this.f11461h = byteBuffer;
            this.f11462i = byteBuffer.position();
        }

        @Override // com.google.android.gms.internal.clearcut.k0.a, com.google.android.gms.internal.clearcut.k0
        public final void a() {
            this.f11461h.position(this.f11462i + d());
        }
    }

    /* loaded from: classes.dex */
    public static class c extends IOException {
        c() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        c(java.lang.String r3) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.k0.c.<init>(java.lang.String):void");
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        c(java.lang.String r3, java.lang.Throwable r4) {
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
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.k0.c.<init>(java.lang.String, java.lang.Throwable):void");
        }

        c(Throwable th) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class d extends k0 {

        /* renamed from: d, reason: collision with root package name */
        private final ByteBuffer f11463d;

        /* renamed from: e, reason: collision with root package name */
        private final ByteBuffer f11464e;

        d(ByteBuffer byteBuffer) {
            super();
            this.f11463d = byteBuffer;
            this.f11464e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            byteBuffer.position();
        }

        private final void c(String str) {
            try {
                a4.a(str, this.f11464e);
            } catch (IndexOutOfBoundsException e2) {
                throw new c(e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a() {
            this.f11463d.position(this.f11464e.position());
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(byte b2) {
            try {
                this.f11464e.put(b2);
            } catch (BufferOverflowException e2) {
                throw new c(e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, i2 i2Var) {
            a(i2, 2);
            c(i2Var);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        final void a(int i2, i2 i2Var, z2 z2Var) {
            a(i2, 2);
            b(i2Var, z2Var);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, y yVar) {
            a(i2, 2);
            b(yVar);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(long j2) {
            while (((-128) & j2) != 0) {
                try {
                    this.f11464e.put((byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                } catch (BufferOverflowException e2) {
                    throw new c(e2);
                }
            }
            this.f11464e.put((byte) j2);
        }

        @Override // com.google.android.gms.internal.clearcut.x
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final int b() {
            return this.f11464e.remaining();
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2) {
            while ((i2 & (-128)) != 0) {
                try {
                    this.f11464e.put((byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                } catch (BufferOverflowException e2) {
                    throw new c(e2);
                }
            }
            this.f11464e.put((byte) i2);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2, i2 i2Var) {
            a(1, 3);
            c(2, i2);
            a(3, i2Var);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2, y yVar) {
            a(1, 3);
            c(2, i2);
            a(3, yVar);
            a(1, 4);
        }

        final void b(i2 i2Var, z2 z2Var) {
            p pVar = (p) i2Var;
            int f2 = pVar.f();
            if (f2 == -1) {
                f2 = z2Var.d(pVar);
                pVar.a(f2);
            }
            b(f2);
            z2Var.a((z2) i2Var, (m4) this.f11456a);
        }

        public final void b(y yVar) {
            b(yVar.size());
            yVar.zza(this);
        }

        public final void b(String str) {
            int position = this.f11464e.position();
            try {
                int g2 = k0.g(str.length() * 3);
                int g3 = k0.g(str.length());
                if (g3 != g2) {
                    b(a4.a(str));
                    c(str);
                    return;
                }
                int position2 = this.f11464e.position() + g3;
                this.f11464e.position(position2);
                c(str);
                int position3 = this.f11464e.position();
                this.f11464e.position(position);
                b(position3 - position2);
                this.f11464e.position(position3);
            } catch (d4 e2) {
                this.f11464e.position(position);
                a(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new c(e3);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(byte[] bArr, int i2, int i3) {
            try {
                this.f11464e.put(bArr, i2, i3);
            } catch (IndexOutOfBoundsException e2) {
                throw new c(e2);
            } catch (BufferOverflowException e3) {
                throw new c(e3);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void c(long j2) {
            try {
                this.f11464e.putLong(j2);
            } catch (BufferOverflowException e2) {
                throw new c(e2);
            }
        }

        public final void c(i2 i2Var) {
            b(i2Var.e());
            i2Var.a(this);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void d(int i2) {
            try {
                this.f11464e.putInt(i2);
            } catch (BufferOverflowException e2) {
                throw new c(e2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static final class e extends k0 {

        /* renamed from: d, reason: collision with root package name */
        private final ByteBuffer f11465d;

        /* renamed from: e, reason: collision with root package name */
        private final ByteBuffer f11466e;

        /* renamed from: f, reason: collision with root package name */
        private final long f11467f;

        /* renamed from: g, reason: collision with root package name */
        private final long f11468g;

        /* renamed from: h, reason: collision with root package name */
        private final long f11469h;

        /* renamed from: i, reason: collision with root package name */
        private final long f11470i;

        /* renamed from: j, reason: collision with root package name */
        private long f11471j;

        e(ByteBuffer byteBuffer) {
            super();
            this.f11465d = byteBuffer;
            this.f11466e = byteBuffer.duplicate().order(ByteOrder.LITTLE_ENDIAN);
            this.f11467f = y3.a(byteBuffer);
            this.f11468g = this.f11467f + byteBuffer.position();
            this.f11469h = this.f11467f + byteBuffer.limit();
            this.f11470i = this.f11469h - 10;
            this.f11471j = this.f11468g;
        }

        private final void i(long j2) {
            this.f11466e.position((int) (j2 - this.f11467f));
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a() {
            this.f11465d.position((int) (this.f11471j - this.f11467f));
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(byte b2) {
            long j2 = this.f11471j;
            if (j2 >= this.f11469h) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j2), Long.valueOf(this.f11469h), 1));
            }
            this.f11471j = 1 + j2;
            y3.a(j2, b2);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2) {
            if (i2 >= 0) {
                b(i2);
            } else {
                a(i2);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, int i3) {
            b((i2 << 3) | i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, long j2) {
            a(i2, 0);
            a(j2);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, i2 i2Var) {
            a(i2, 2);
            c(i2Var);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        final void a(int i2, i2 i2Var, z2 z2Var) {
            a(i2, 2);
            b(i2Var, z2Var);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, y yVar) {
            a(i2, 2);
            b(yVar);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, String str) {
            a(i2, 2);
            b(str);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(int i2, boolean z) {
            a(i2, 0);
            a(z ? (byte) 1 : (byte) 0);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void a(long j2) {
            long j3;
            if (this.f11471j <= this.f11470i) {
                while (true) {
                    long j4 = j2 & (-128);
                    j3 = this.f11471j;
                    if (j4 == 0) {
                        break;
                    }
                    this.f11471j = j3 + 1;
                    y3.a(j3, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
            } else {
                while (true) {
                    j3 = this.f11471j;
                    if (j3 >= this.f11469h) {
                        throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j3), Long.valueOf(this.f11469h), 1));
                    }
                    if ((j2 & (-128)) == 0) {
                        break;
                    }
                    this.f11471j = j3 + 1;
                    y3.a(j3, (byte) ((((int) j2) & 127) | 128));
                    j2 >>>= 7;
                }
            }
            this.f11471j = 1 + j3;
            y3.a(j3, (byte) j2);
        }

        @Override // com.google.android.gms.internal.clearcut.x
        public final void a(byte[] bArr, int i2, int i3) {
            b(bArr, i2, i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final int b() {
            return (int) (this.f11469h - this.f11471j);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2) {
            long j2;
            if (this.f11471j <= this.f11470i) {
                while ((i2 & (-128)) != 0) {
                    long j3 = this.f11471j;
                    this.f11471j = j3 + 1;
                    y3.a(j3, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
                j2 = this.f11471j;
            } else {
                while (true) {
                    j2 = this.f11471j;
                    if (j2 >= this.f11469h) {
                        throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(j2), Long.valueOf(this.f11469h), 1));
                    }
                    if ((i2 & (-128)) == 0) {
                        break;
                    }
                    this.f11471j = j2 + 1;
                    y3.a(j2, (byte) ((i2 & 127) | 128));
                    i2 >>>= 7;
                }
            }
            this.f11471j = 1 + j2;
            y3.a(j2, (byte) i2);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2, int i3) {
            a(i2, 0);
            a(i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2, i2 i2Var) {
            a(1, 3);
            c(2, i2);
            a(3, i2Var);
            a(1, 4);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(int i2, y yVar) {
            a(1, 3);
            c(2, i2);
            a(3, yVar);
            a(1, 4);
        }

        final void b(i2 i2Var, z2 z2Var) {
            p pVar = (p) i2Var;
            int f2 = pVar.f();
            if (f2 == -1) {
                f2 = z2Var.d(pVar);
                pVar.a(f2);
            }
            b(f2);
            z2Var.a((z2) i2Var, (m4) this.f11456a);
        }

        public final void b(y yVar) {
            b(yVar.size());
            yVar.zza(this);
        }

        public final void b(String str) {
            long j2 = this.f11471j;
            try {
                int g2 = k0.g(str.length() * 3);
                int g3 = k0.g(str.length());
                if (g3 != g2) {
                    int a2 = a4.a(str);
                    b(a2);
                    i(this.f11471j);
                    a4.a(str, this.f11466e);
                    this.f11471j += a2;
                    return;
                }
                int i2 = ((int) (this.f11471j - this.f11467f)) + g3;
                this.f11466e.position(i2);
                a4.a(str, this.f11466e);
                int position = this.f11466e.position() - i2;
                b(position);
                this.f11471j += position;
            } catch (d4 e2) {
                this.f11471j = j2;
                i(this.f11471j);
                a(str, e2);
            } catch (IllegalArgumentException e3) {
                throw new c(e3);
            } catch (IndexOutOfBoundsException e4) {
                throw new c(e4);
            }
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void b(byte[] bArr, int i2, int i3) {
            if (bArr != null && i2 >= 0 && i3 >= 0 && bArr.length - i3 >= i2) {
                long j2 = i3;
                long j3 = this.f11469h - j2;
                long j4 = this.f11471j;
                if (j3 >= j4) {
                    y3.a(bArr, i2, j4, j2);
                    this.f11471j += j2;
                    return;
                }
            }
            if (bArr != null) {
                throw new c(String.format("Pos: %d, limit: %d, len: %d", Long.valueOf(this.f11471j), Long.valueOf(this.f11469h), Integer.valueOf(i3)));
            }
            throw new NullPointerException(HummerConstants.VALUE);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void c(int i2, int i3) {
            a(i2, 0);
            b(i3);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void c(int i2, long j2) {
            a(i2, 1);
            c(j2);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void c(long j2) {
            this.f11466e.putLong((int) (this.f11471j - this.f11467f), j2);
            this.f11471j += 8;
        }

        public final void c(i2 i2Var) {
            b(i2Var.e());
            i2Var.a(this);
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void d(int i2) {
            this.f11466e.putInt((int) (this.f11471j - this.f11467f), i2);
            this.f11471j += 4;
        }

        @Override // com.google.android.gms.internal.clearcut.k0
        public final void e(int i2, int i3) {
            a(i2, 5);
            d(i3);
        }
    }

    private k0() {
    }

    public static int a(int i2, q1 q1Var) {
        int e2 = e(i2);
        int a2 = q1Var.a();
        return e2 + g(a2) + a2;
    }

    public static int a(i2 i2Var) {
        int e2 = i2Var.e();
        return g(e2) + e2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(i2 i2Var, z2 z2Var) {
        p pVar = (p) i2Var;
        int f2 = pVar.f();
        if (f2 == -1) {
            f2 = z2Var.d(pVar);
            pVar.a(f2);
        }
        return g(f2) + f2;
    }

    public static int a(q1 q1Var) {
        int a2 = q1Var.a();
        return g(a2) + a2;
    }

    public static int a(y yVar) {
        int size = yVar.size();
        return g(size) + size;
    }

    public static int a(String str) {
        int length;
        try {
            length = a4.a(str);
        } catch (d4 unused) {
            length = str.getBytes(f1.f11419a).length;
        }
        return g(length) + length;
    }

    public static k0 a(ByteBuffer byteBuffer) {
        if (byteBuffer.hasArray()) {
            return new b(byteBuffer);
        }
        if (!byteBuffer.isDirect() || byteBuffer.isReadOnly()) {
            throw new IllegalArgumentException("ByteBuffer is read-only");
        }
        return y3.c() ? new e(byteBuffer) : new d(byteBuffer);
    }

    public static k0 a(byte[] bArr) {
        return new a(bArr, 0, bArr.length);
    }

    public static int b(double d2) {
        return 8;
    }

    public static int b(float f2) {
        return 4;
    }

    public static int b(int i2, double d2) {
        return e(i2) + 8;
    }

    public static int b(int i2, float f2) {
        return e(i2) + 4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(int i2, i2 i2Var, z2 z2Var) {
        return e(i2) + a(i2Var, z2Var);
    }

    public static int b(int i2, q1 q1Var) {
        return (e(1) << 1) + g(2, i2) + a(3, q1Var);
    }

    public static int b(int i2, String str) {
        return e(i2) + a(str);
    }

    public static int b(int i2, boolean z) {
        return e(i2) + 1;
    }

    @Deprecated
    public static int b(i2 i2Var) {
        return i2Var.e();
    }

    public static int b(boolean z) {
        return 1;
    }

    public static int b(byte[] bArr) {
        int length = bArr.length;
        return g(length) + length;
    }

    public static int c(int i2, i2 i2Var) {
        return e(i2) + a(i2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Deprecated
    public static int c(int i2, i2 i2Var, z2 z2Var) {
        int e2 = e(i2) << 1;
        p pVar = (p) i2Var;
        int f2 = pVar.f();
        if (f2 == -1) {
            f2 = z2Var.d(pVar);
            pVar.a(f2);
        }
        return e2 + f2;
    }

    public static int c(int i2, y yVar) {
        int e2 = e(i2);
        int size = yVar.size();
        return e2 + g(size) + size;
    }

    public static int d(int i2, long j2) {
        return e(i2) + e(j2);
    }

    public static int d(int i2, i2 i2Var) {
        return (e(1) << 1) + g(2, i2) + c(3, i2Var);
    }

    public static int d(int i2, y yVar) {
        return (e(1) << 1) + g(2, i2) + c(3, yVar);
    }

    public static int d(long j2) {
        return e(j2);
    }

    public static int e(int i2) {
        return g(i2 << 3);
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

    public static int f(int i2) {
        if (i2 >= 0) {
            return g(i2);
        }
        return 10;
    }

    public static int f(int i2, int i3) {
        return e(i2) + f(i3);
    }

    public static int f(int i2, long j2) {
        return e(i2) + e(i(j2));
    }

    public static int f(long j2) {
        return e(i(j2));
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

    public static int g(int i2, long j2) {
        return e(i2) + 8;
    }

    public static int g(long j2) {
        return 8;
    }

    public static int h(int i2) {
        return g(l(i2));
    }

    public static int h(int i2, int i3) {
        return e(i2) + g(l(i3));
    }

    public static int h(int i2, long j2) {
        return e(i2) + 8;
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

    public static int k(int i2) {
        return f(i2);
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

    public final void a(double d2) {
        c(Double.doubleToRawLongBits(d2));
    }

    public final void a(float f2) {
        d(Float.floatToRawIntBits(f2));
    }

    public abstract void a(int i2);

    public final void a(int i2, double d2) {
        c(i2, Double.doubleToRawLongBits(d2));
    }

    public final void a(int i2, float f2) {
        e(i2, Float.floatToRawIntBits(f2));
    }

    public abstract void a(int i2, int i3);

    public abstract void a(int i2, long j2);

    public abstract void a(int i2, i2 i2Var);

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract void a(int i2, i2 i2Var, z2 z2Var);

    public abstract void a(int i2, y yVar);

    public abstract void a(int i2, String str);

    public abstract void a(int i2, boolean z);

    public abstract void a(long j2);

    final void a(String str, d4 d4Var) {
        f11454b.logp(Level.WARNING, "com.google.protobuf.CodedOutputStream", "inefficientWriteStringNoTag", "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) d4Var);
        byte[] bytes = str.getBytes(f1.f11419a);
        try {
            b(bytes.length);
            a(bytes, 0, bytes.length);
        } catch (c e2) {
            throw e2;
        } catch (IndexOutOfBoundsException e3) {
            throw new c(e3);
        }
    }

    public final void a(boolean z) {
        a(z ? (byte) 1 : (byte) 0);
    }

    public abstract int b();

    public abstract void b(int i2);

    public abstract void b(int i2, int i3);

    public final void b(int i2, long j2) {
        a(i2, i(j2));
    }

    public abstract void b(int i2, i2 i2Var);

    public abstract void b(int i2, y yVar);

    public final void b(long j2) {
        a(i(j2));
    }

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
}
