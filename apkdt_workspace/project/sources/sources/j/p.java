package j;

import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: RealBufferedSource.java */
/* loaded from: classes2.dex */
public final class p implements e {

    /* renamed from: e, reason: collision with root package name */
    public final c f19670e = new c();

    /* renamed from: f, reason: collision with root package name */
    public final u f19671f;

    /* renamed from: g, reason: collision with root package name */
    boolean f19672g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public p(u uVar) {
        if (uVar != null) {
            this.f19671f = uVar;
            return;
        }
        throw new NullPointerException("source == null");
    }

    @Override // j.e, j.d
    public c a() {
        return this.f19670e;
    }

    @Override // j.u
    public long b(c cVar, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j2 >= 0) {
            if (!this.f19672g) {
                c cVar2 = this.f19670e;
                if (cVar2.f19640f == 0 && this.f19671f.b(cVar2, 8192L) == -1) {
                    return -1L;
                }
                return this.f19670e.b(cVar, Math.min(j2, this.f19670e.f19640f));
            }
            throw new IllegalStateException("closed");
        }
        throw new IllegalArgumentException("byteCount < 0: " + j2);
    }

    @Override // j.e
    public f c(long j2) {
        f(j2);
        return this.f19670e.c(j2);
    }

    @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f19672g) {
            return;
        }
        this.f19672g = true;
        this.f19671f.close();
        this.f19670e.n();
    }

    @Override // j.e
    public boolean d() {
        if (this.f19672g) {
            throw new IllegalStateException("closed");
        }
        return this.f19670e.d() && this.f19671f.b(this.f19670e, 8192L) == -1;
    }

    @Override // j.e
    public byte[] e(long j2) {
        f(j2);
        return this.f19670e.e(j2);
    }

    @Override // j.e
    public void f(long j2) {
        if (!a(j2)) {
            throw new EOFException();
        }
    }

    @Override // j.e
    public short g() {
        f(2L);
        return this.f19670e.g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0032, code lost:
    
        if (r1 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0049, code lost:
    
        throw new java.lang.NumberFormatException(java.lang.String.format("Expected leading [0-9a-fA-F] character but was %#x", java.lang.Byte.valueOf(r3)));
     */
    @Override // j.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long h() {
        /*
            r6 = this;
            r0 = 1
            r6.f(r0)
            r0 = 0
            r1 = 0
        L7:
            int r2 = r1 + 1
            long r3 = (long) r2
            boolean r3 = r6.a(r3)
            if (r3 == 0) goto L4a
            j.c r3 = r6.f19670e
            long r4 = (long) r1
            byte r3 = r3.g(r4)
            r4 = 48
            if (r3 < r4) goto L1f
            r4 = 57
            if (r3 <= r4) goto L30
        L1f:
            r4 = 97
            if (r3 < r4) goto L27
            r4 = 102(0x66, float:1.43E-43)
            if (r3 <= r4) goto L30
        L27:
            r4 = 65
            if (r3 < r4) goto L32
            r4 = 70
            if (r3 <= r4) goto L30
            goto L32
        L30:
            r1 = r2
            goto L7
        L32:
            if (r1 == 0) goto L35
            goto L4a
        L35:
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            r2 = 1
            java.lang.Object[] r2 = new java.lang.Object[r2]
            java.lang.Byte r3 = java.lang.Byte.valueOf(r3)
            r2[r0] = r3
            java.lang.String r0 = "Expected leading [0-9a-fA-F] character but was %#x"
            java.lang.String r0 = java.lang.String.format(r0, r2)
            r1.<init>(r0)
            throw r1
        L4a:
            j.c r0 = r6.f19670e
            long r0 = r0.h()
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: j.p.h():long");
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f19672g;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        c cVar = this.f19670e;
        if (cVar.f19640f == 0 && this.f19671f.b(cVar, 8192L) == -1) {
            return -1;
        }
        return this.f19670e.read(byteBuffer);
    }

    @Override // j.e
    public byte readByte() {
        f(1L);
        return this.f19670e.readByte();
    }

    @Override // j.e
    public void readFully(byte[] bArr) {
        try {
            f(bArr.length);
            this.f19670e.readFully(bArr);
        } catch (EOFException e2) {
            int i2 = 0;
            while (true) {
                c cVar = this.f19670e;
                long j2 = cVar.f19640f;
                if (j2 <= 0) {
                    throw e2;
                }
                int a2 = cVar.a(bArr, i2, (int) j2);
                if (a2 == -1) {
                    throw new AssertionError();
                }
                i2 += a2;
            }
        }
    }

    @Override // j.e
    public int readInt() {
        f(4L);
        return this.f19670e.readInt();
    }

    @Override // j.e
    public short readShort() {
        f(2L);
        return this.f19670e.readShort();
    }

    @Override // j.e
    public void skip(long j2) {
        if (this.f19672g) {
            throw new IllegalStateException("closed");
        }
        while (j2 > 0) {
            c cVar = this.f19670e;
            if (cVar.f19640f == 0 && this.f19671f.b(cVar, 8192L) == -1) {
                throw new EOFException();
            }
            long min = Math.min(j2, this.f19670e.z());
            this.f19670e.skip(min);
            j2 -= min;
        }
    }

    @Override // j.u
    public v timeout() {
        return this.f19671f.timeout();
    }

    public String toString() {
        return "buffer(" + this.f19671f + ")";
    }

    public boolean a(long j2) {
        c cVar;
        if (j2 >= 0) {
            if (this.f19672g) {
                throw new IllegalStateException("closed");
            }
            do {
                cVar = this.f19670e;
                if (cVar.f19640f >= j2) {
                    return true;
                }
            } while (this.f19671f.b(cVar, 8192L) != -1);
            return false;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j2);
    }

    @Override // j.e
    public int f() {
        f(4L);
        return this.f19670e.f();
    }

    @Override // j.e
    public byte[] c() {
        this.f19670e.a(this.f19671f);
        return this.f19670e.c();
    }

    @Override // j.e
    public String e() {
        return d(Long.MAX_VALUE);
    }

    @Override // j.e
    public String d(long j2) {
        if (j2 >= 0) {
            long j3 = j2 == Long.MAX_VALUE ? Long.MAX_VALUE : j2 + 1;
            long a2 = a((byte) 10, 0L, j3);
            if (a2 != -1) {
                return this.f19670e.i(a2);
            }
            if (j3 < Long.MAX_VALUE && a(j3) && this.f19670e.g(j3 - 1) == 13 && a(1 + j3) && this.f19670e.g(j3) == 10) {
                return this.f19670e.i(j3);
            }
            c cVar = new c();
            c cVar2 = this.f19670e;
            cVar2.a(cVar, 0L, Math.min(32L, cVar2.z()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f19670e.z(), j2) + " content=" + cVar.x().hex() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j2);
    }

    @Override // j.e
    public String a(Charset charset) {
        if (charset != null) {
            this.f19670e.a(this.f19671f);
            return this.f19670e.a(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // j.e
    public long a(byte b2) {
        return a(b2, 0L, Long.MAX_VALUE);
    }

    public long a(byte b2, long j2, long j3) {
        if (this.f19672g) {
            throw new IllegalStateException("closed");
        }
        if (j2 < 0 || j3 < j2) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j2), Long.valueOf(j3)));
        }
        while (j2 < j3) {
            long a2 = this.f19670e.a(b2, j2, j3);
            if (a2 == -1) {
                c cVar = this.f19670e;
                long j4 = cVar.f19640f;
                if (j4 >= j3 || this.f19671f.b(cVar, 8192L) == -1) {
                    break;
                }
                j2 = Math.max(j2, j4);
            } else {
                return a2;
            }
        }
        return -1L;
    }

    @Override // j.e
    public boolean a(long j2, f fVar) {
        return a(j2, fVar, 0, fVar.size());
    }

    public boolean a(long j2, f fVar, int i2, int i3) {
        if (!this.f19672g) {
            if (j2 < 0 || i2 < 0 || i3 < 0 || fVar.size() - i2 < i3) {
                return false;
            }
            for (int i4 = 0; i4 < i3; i4++) {
                long j3 = i4 + j2;
                if (!a(1 + j3) || this.f19670e.g(j3) != fVar.getByte(i2 + i4)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }
}
