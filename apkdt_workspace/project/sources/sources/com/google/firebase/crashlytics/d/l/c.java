package com.google.firebase.crashlytics.d.l;

import java.io.Flushable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* compiled from: CodedOutputStream.java */
/* loaded from: classes.dex */
public final class c implements Flushable {

    /* renamed from: e, reason: collision with root package name */
    private final byte[] f14645e;

    /* renamed from: f, reason: collision with root package name */
    private final int f14646f;

    /* renamed from: g, reason: collision with root package name */
    private int f14647g = 0;

    /* renamed from: h, reason: collision with root package name */
    private final OutputStream f14648h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: CodedOutputStream.java */
    /* loaded from: classes.dex */
    public static class a extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        a() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    private c(OutputStream outputStream, byte[] bArr) {
        this.f14648h = outputStream;
        this.f14645e = bArr;
        this.f14646f = bArr.length;
    }

    public static c a(OutputStream outputStream) {
        return a(outputStream, 4096);
    }

    public static int b(float f2) {
        return 4;
    }

    public static int b(boolean z) {
        return 1;
    }

    public static int e(int i2, int i3) {
        return m(i2) + i(i3);
    }

    public static int e(long j2) {
        if (((-128) & j2) == 0) {
            return 1;
        }
        if (((-16384) & j2) == 0) {
            return 2;
        }
        if (((-2097152) & j2) == 0) {
            return 3;
        }
        if (((-268435456) & j2) == 0) {
            return 4;
        }
        if (((-34359738368L) & j2) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j2) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j2) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j2) == 0) {
            return 8;
        }
        return (j2 & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    public static int f(int i2, int i3) {
        return m(i2) + l(i3);
    }

    public static int i(int i2) {
        return j(i2);
    }

    public static int j(int i2) {
        if (i2 >= 0) {
            return k(i2);
        }
        return 10;
    }

    public static int k(int i2) {
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

    public static int l(int i2) {
        return k(o(i2));
    }

    public static int m(int i2) {
        return k(e.a(i2, 0));
    }

    public static int n(int i2) {
        return k(i2);
    }

    public static int o(int i2) {
        return (i2 >> 31) ^ (i2 << 1);
    }

    public void b(int i2, int i3) {
        c(i2, 0);
        g(i3);
    }

    public void c(int i2) {
        if (i2 >= 0) {
            f(i2);
        } else {
            c(i2);
        }
    }

    public void d(int i2, int i3) {
        c(i2, 0);
        h(i3);
    }

    @Override // java.io.Flushable
    public void flush() {
        if (this.f14648h != null) {
            c();
        }
    }

    public void g(int i2) {
        f(o(i2));
    }

    public void h(int i2) {
        f(i2);
    }

    public static c a(OutputStream outputStream, int i2) {
        return new c(outputStream, new byte[i2]);
    }

    public static int f(long j2) {
        return e(j2);
    }

    public static int g(int i2, int i3) {
        return m(i2) + n(i3);
    }

    public void e(int i2) {
        d(i2 & 255);
        d((i2 >> 8) & 255);
        d((i2 >> 16) & 255);
        d((i2 >> 24) & 255);
    }

    public static int c(com.google.firebase.crashlytics.d.l.a aVar) {
        return k(aVar.b()) + aVar.b();
    }

    public void a(int i2, float f2) {
        c(i2, 5);
        a(f2);
    }

    public void b(int i2) {
        c(i2);
    }

    public void d(long j2) {
        c(j2);
    }

    public void f(int i2) {
        while ((i2 & (-128)) != 0) {
            d((i2 & 127) | 128);
            i2 >>>= 7;
        }
        d(i2);
    }

    public static int b(int i2, float f2) {
        return m(i2) + b(f2);
    }

    private void c() {
        OutputStream outputStream = this.f14648h;
        if (outputStream != null) {
            outputStream.write(this.f14645e, 0, this.f14647g);
            this.f14647g = 0;
            return;
        }
        throw new a();
    }

    public void d(int i2) {
        a((byte) i2);
    }

    public static int b(int i2, long j2) {
        return m(i2) + f(j2);
    }

    public void a(int i2, long j2) {
        c(i2, 0);
        d(j2);
    }

    public static int b(int i2, boolean z) {
        return m(i2) + b(z);
    }

    public static int b(int i2, com.google.firebase.crashlytics.d.l.a aVar) {
        return m(i2) + c(aVar);
    }

    public void a(int i2, boolean z) {
        c(i2, 0);
        a(z);
    }

    public void b(com.google.firebase.crashlytics.d.l.a aVar) {
        a(aVar, 0, aVar.b());
    }

    public void c(int i2, int i3) {
        f(e.a(i2, i3));
    }

    public void a(int i2, com.google.firebase.crashlytics.d.l.a aVar) {
        c(i2, 2);
        a(aVar);
    }

    public void c(long j2) {
        while (((-128) & j2) != 0) {
            d((((int) j2) & 127) | 128);
            j2 >>>= 7;
        }
        d((int) j2);
    }

    public void a(int i2, int i3) {
        c(i2, 0);
        b(i3);
    }

    public void a(float f2) {
        e(Float.floatToRawIntBits(f2));
    }

    public void a(boolean z) {
        d(z ? 1 : 0);
    }

    public void a(com.google.firebase.crashlytics.d.l.a aVar) {
        f(aVar.b());
        b(aVar);
    }

    public void a(byte b2) {
        if (this.f14647g == this.f14646f) {
            c();
        }
        byte[] bArr = this.f14645e;
        int i2 = this.f14647g;
        this.f14647g = i2 + 1;
        bArr[i2] = b2;
    }

    public void a(byte[] bArr) {
        a(bArr, 0, bArr.length);
    }

    public void a(byte[] bArr, int i2, int i3) {
        int i4 = this.f14646f;
        int i5 = this.f14647g;
        if (i4 - i5 >= i3) {
            System.arraycopy(bArr, i2, this.f14645e, i5, i3);
            this.f14647g += i3;
            return;
        }
        int i6 = i4 - i5;
        System.arraycopy(bArr, i2, this.f14645e, i5, i6);
        int i7 = i2 + i6;
        int i8 = i3 - i6;
        this.f14647g = this.f14646f;
        c();
        if (i8 <= this.f14646f) {
            System.arraycopy(bArr, i7, this.f14645e, 0, i8);
            this.f14647g = i8;
        } else {
            this.f14648h.write(bArr, i7, i8);
        }
    }

    public void a(com.google.firebase.crashlytics.d.l.a aVar, int i2, int i3) {
        int i4 = this.f14646f;
        int i5 = this.f14647g;
        if (i4 - i5 >= i3) {
            aVar.a(this.f14645e, i2, i5, i3);
            this.f14647g += i3;
            return;
        }
        int i6 = i4 - i5;
        aVar.a(this.f14645e, i2, i5, i6);
        int i7 = i2 + i6;
        int i8 = i3 - i6;
        this.f14647g = this.f14646f;
        c();
        if (i8 <= this.f14646f) {
            aVar.a(this.f14645e, i7, 0, i8);
            this.f14647g = i8;
            return;
        }
        InputStream a2 = aVar.a();
        long j2 = i7;
        if (j2 != a2.skip(j2)) {
            throw new IllegalStateException("Skip failed.");
        }
        while (i8 > 0) {
            int min = Math.min(i8, this.f14646f);
            int read = a2.read(this.f14645e, 0, min);
            if (read == min) {
                this.f14648h.write(this.f14645e, 0, read);
                i8 -= read;
            } else {
                throw new IllegalStateException("Read failed.");
            }
        }
    }
}
