package j;

import com.alipay.mobile.security.faceauth.api.AntDetector;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import javax.annotation.Nullable;

/* compiled from: Buffer.java */
/* loaded from: classes2.dex */
public final class c implements e, d, Cloneable, ByteChannel {

    /* renamed from: g, reason: collision with root package name */
    private static final byte[] f19638g = {48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 97, 98, 99, 100, 101, 102};

    /* renamed from: e, reason: collision with root package name */
    @Nullable
    q f19639e;

    /* renamed from: f, reason: collision with root package name */
    long f19640f;

    public final f A() {
        long j2 = this.f19640f;
        if (j2 <= 2147483647L) {
            return b((int) j2);
        }
        throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.f19640f);
    }

    @Override // j.e, j.d
    public c a() {
        return this;
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d a(f fVar) {
        a(fVar);
        return this;
    }

    @Override // j.d
    public c b() {
        return this;
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d b() {
        b();
        return this;
    }

    @Override // j.e
    public f c(long j2) {
        return new f(e(j2));
    }

    @Override // j.u, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // j.e
    public boolean d() {
        return this.f19640f == 0;
    }

    @Override // j.e
    public String e() {
        return d(Long.MAX_VALUE);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        long j2 = this.f19640f;
        if (j2 != cVar.f19640f) {
            return false;
        }
        long j3 = 0;
        if (j2 == 0) {
            return true;
        }
        q qVar = this.f19639e;
        q qVar2 = cVar.f19639e;
        int i2 = qVar.f19674b;
        int i3 = qVar2.f19674b;
        while (j3 < this.f19640f) {
            long min = Math.min(qVar.f19675c - i2, qVar2.f19675c - i3);
            int i4 = i3;
            int i5 = i2;
            int i6 = 0;
            while (i6 < min) {
                int i7 = i5 + 1;
                int i8 = i4 + 1;
                if (qVar.f19673a[i5] != qVar2.f19673a[i4]) {
                    return false;
                }
                i6++;
                i5 = i7;
                i4 = i8;
            }
            if (i5 == qVar.f19675c) {
                qVar = qVar.f19678f;
                i2 = qVar.f19674b;
            } else {
                i2 = i5;
            }
            if (i4 == qVar2.f19675c) {
                qVar2 = qVar2.f19678f;
                i3 = qVar2.f19674b;
            } else {
                i3 = i4;
            }
            j3 += min;
        }
        return true;
    }

    @Override // j.e
    public void f(long j2) {
        if (this.f19640f < j2) {
            throw new EOFException();
        }
    }

    @Override // j.d, j.t, java.io.Flushable
    public void flush() {
    }

    public final byte g(long j2) {
        int i2;
        w.a(this.f19640f, j2, 1L);
        long j3 = this.f19640f;
        if (j3 - j2 > j2) {
            q qVar = this.f19639e;
            while (true) {
                int i3 = qVar.f19675c;
                int i4 = qVar.f19674b;
                long j4 = i3 - i4;
                if (j2 < j4) {
                    return qVar.f19673a[i4 + ((int) j2)];
                }
                j2 -= j4;
                qVar = qVar.f19678f;
            }
        } else {
            long j5 = j2 - j3;
            q qVar2 = this.f19639e;
            do {
                qVar2 = qVar2.f19679g;
                int i5 = qVar2.f19675c;
                i2 = qVar2.f19674b;
                j5 += i5 - i2;
            } while (j5 < 0);
            return qVar2.f19673a[i2 + ((int) j5)];
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:33:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00a3 A[EDGE_INSN: B:41:0x00a3->B:38:0x00a3 BREAK  A[LOOP:0: B:4:0x000b->B:40:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x009b  */
    @Override // j.e
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long h() {
        /*
            r15 = this;
            long r0 = r15.f19640f
            r2 = 0
            int r4 = (r0 > r2 ? 1 : (r0 == r2 ? 0 : -1))
            if (r4 == 0) goto Laa
            r0 = 0
            r4 = r2
            r1 = 0
        Lb:
            j.q r6 = r15.f19639e
            byte[] r7 = r6.f19673a
            int r8 = r6.f19674b
            int r9 = r6.f19675c
        L13:
            if (r8 >= r9) goto L8f
            r10 = r7[r8]
            r11 = 48
            if (r10 < r11) goto L22
            r11 = 57
            if (r10 > r11) goto L22
            int r11 = r10 + (-48)
            goto L3a
        L22:
            r11 = 97
            if (r10 < r11) goto L2f
            r11 = 102(0x66, float:1.43E-43)
            if (r10 > r11) goto L2f
            int r11 = r10 + (-97)
        L2c:
            int r11 = r11 + 10
            goto L3a
        L2f:
            r11 = 65
            if (r10 < r11) goto L70
            r11 = 70
            if (r10 > r11) goto L70
            int r11 = r10 + (-65)
            goto L2c
        L3a:
            r12 = -1152921504606846976(0xf000000000000000, double:-3.105036184601418E231)
            long r12 = r12 & r4
            int r14 = (r12 > r2 ? 1 : (r12 == r2 ? 0 : -1))
            if (r14 != 0) goto L4a
            r10 = 4
            long r4 = r4 << r10
            long r10 = (long) r11
            long r4 = r4 | r10
            int r8 = r8 + 1
            int r1 = r1 + 1
            goto L13
        L4a:
            j.c r0 = new j.c
            r0.<init>()
            r0.a(r4)
            r0.writeByte(r10)
            java.lang.NumberFormatException r1 = new java.lang.NumberFormatException
            java.lang.StringBuilder r2 = new java.lang.StringBuilder
            r2.<init>()
            java.lang.String r3 = "Number too large: "
            r2.append(r3)
            java.lang.String r0 = r0.y()
            r2.append(r0)
            java.lang.String r0 = r2.toString()
            r1.<init>(r0)
            throw r1
        L70:
            if (r1 == 0) goto L74
            r0 = 1
            goto L8f
        L74:
            java.lang.NumberFormatException r0 = new java.lang.NumberFormatException
            java.lang.StringBuilder r1 = new java.lang.StringBuilder
            r1.<init>()
            java.lang.String r2 = "Expected leading [0-9a-fA-F] character but was 0x"
            r1.append(r2)
            java.lang.String r2 = java.lang.Integer.toHexString(r10)
            r1.append(r2)
            java.lang.String r1 = r1.toString()
            r0.<init>(r1)
            throw r0
        L8f:
            if (r8 != r9) goto L9b
            j.q r7 = r6.b()
            r15.f19639e = r7
            j.r.a(r6)
            goto L9d
        L9b:
            r6.f19674b = r8
        L9d:
            if (r0 != 0) goto La3
            j.q r6 = r15.f19639e
            if (r6 != 0) goto Lb
        La3:
            long r2 = r15.f19640f
            long r0 = (long) r1
            long r2 = r2 - r0
            r15.f19640f = r2
            return r4
        Laa:
            java.lang.IllegalStateException r0 = new java.lang.IllegalStateException
            java.lang.String r1 = "size == 0"
            r0.<init>(r1)
            goto Lb3
        Lb2:
            throw r0
        Lb3:
            goto Lb2
        */
        throw new UnsupportedOperationException("Method not decompiled: j.c.h():long");
    }

    public int hashCode() {
        q qVar = this.f19639e;
        if (qVar == null) {
            return 0;
        }
        int i2 = 1;
        do {
            int i3 = qVar.f19675c;
            for (int i4 = qVar.f19674b; i4 < i3; i4++) {
                i2 = (i2 * 31) + qVar.f19673a[i4];
            }
            qVar = qVar.f19678f;
        } while (qVar != this.f19639e);
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String i(long j2) {
        if (j2 > 0) {
            long j3 = j2 - 1;
            if (g(j3) == 13) {
                String h2 = h(j3);
                skip(2L);
                return h2;
            }
        }
        String h3 = h(j2);
        skip(1L);
        return h3;
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return true;
    }

    public final void n() {
        try {
            skip(this.f19640f);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        q qVar = this.f19639e;
        if (qVar == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), qVar.f19675c - qVar.f19674b);
        byteBuffer.put(qVar.f19673a, qVar.f19674b, min);
        qVar.f19674b += min;
        this.f19640f -= min;
        if (qVar.f19674b == qVar.f19675c) {
            this.f19639e = qVar.b();
            r.a(qVar);
        }
        return min;
    }

    @Override // j.e
    public byte readByte() {
        long j2 = this.f19640f;
        if (j2 != 0) {
            q qVar = this.f19639e;
            int i2 = qVar.f19674b;
            int i3 = qVar.f19675c;
            int i4 = i2 + 1;
            byte b2 = qVar.f19673a[i2];
            this.f19640f = j2 - 1;
            if (i4 == i3) {
                this.f19639e = qVar.b();
                r.a(qVar);
            } else {
                qVar.f19674b = i4;
            }
            return b2;
        }
        throw new IllegalStateException("size == 0");
    }

    @Override // j.e
    public void readFully(byte[] bArr) {
        int i2 = 0;
        while (i2 < bArr.length) {
            int a2 = a(bArr, i2, bArr.length - i2);
            if (a2 == -1) {
                throw new EOFException();
            }
            i2 += a2;
        }
    }

    @Override // j.e
    public int readInt() {
        long j2 = this.f19640f;
        if (j2 >= 4) {
            q qVar = this.f19639e;
            int i2 = qVar.f19674b;
            int i3 = qVar.f19675c;
            if (i3 - i2 < 4) {
                return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
            }
            byte[] bArr = qVar.f19673a;
            int i4 = i2 + 1;
            int i5 = i4 + 1;
            int i6 = ((bArr[i2] & 255) << 24) | ((bArr[i4] & 255) << 16);
            int i7 = i5 + 1;
            int i8 = i6 | ((bArr[i5] & 255) << 8);
            int i9 = i7 + 1;
            int i10 = i8 | (bArr[i7] & 255);
            this.f19640f = j2 - 4;
            if (i9 == i3) {
                this.f19639e = qVar.b();
                r.a(qVar);
            } else {
                qVar.f19674b = i9;
            }
            return i10;
        }
        throw new IllegalStateException("size < 4: " + this.f19640f);
    }

    @Override // j.e
    public short readShort() {
        long j2 = this.f19640f;
        if (j2 >= 2) {
            q qVar = this.f19639e;
            int i2 = qVar.f19674b;
            int i3 = qVar.f19675c;
            if (i3 - i2 < 2) {
                return (short) (((readByte() & 255) << 8) | (readByte() & 255));
            }
            byte[] bArr = qVar.f19673a;
            int i4 = i2 + 1;
            int i5 = i4 + 1;
            int i6 = ((bArr[i2] & 255) << 8) | (bArr[i4] & 255);
            this.f19640f = j2 - 2;
            if (i5 == i3) {
                this.f19639e = qVar.b();
                r.a(qVar);
            } else {
                qVar.f19674b = i5;
            }
            return (short) i6;
        }
        throw new IllegalStateException("size < 2: " + this.f19640f);
    }

    @Override // j.e
    public void skip(long j2) {
        while (j2 > 0) {
            if (this.f19639e != null) {
                int min = (int) Math.min(j2, r0.f19675c - r0.f19674b);
                long j3 = min;
                this.f19640f -= j3;
                j2 -= j3;
                q qVar = this.f19639e;
                qVar.f19674b += min;
                if (qVar.f19674b == qVar.f19675c) {
                    this.f19639e = qVar.b();
                    r.a(qVar);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // j.u
    public v timeout() {
        return v.f19682d;
    }

    public String toString() {
        return A().toString();
    }

    public final long w() {
        long j2 = this.f19640f;
        if (j2 == 0) {
            return 0L;
        }
        q qVar = this.f19639e.f19679g;
        return (qVar.f19675c >= 8192 || !qVar.f19677e) ? j2 : j2 - (r3 - qVar.f19674b);
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d write(byte[] bArr) {
        write(bArr);
        return this;
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d writeByte(int i2) {
        writeByte(i2);
        return this;
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d writeInt(int i2) {
        writeInt(i2);
        return this;
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d writeShort(int i2) {
        writeShort(i2);
        return this;
    }

    public f x() {
        return new f(c());
    }

    public String y() {
        try {
            return a(this.f19640f, w.f19686a);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public final long z() {
        return this.f19640f;
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d a(long j2) {
        a(j2);
        return this;
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d b(long j2) {
        b(j2);
        return this;
    }

    @Override // j.e
    public byte[] c() {
        try {
            return e(this.f19640f);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    /* renamed from: clone, reason: merged with bridge method [inline-methods] */
    public c m10clone() {
        c cVar = new c();
        if (this.f19640f == 0) {
            return cVar;
        }
        cVar.f19639e = this.f19639e.c();
        q qVar = cVar.f19639e;
        qVar.f19679g = qVar;
        qVar.f19678f = qVar;
        q qVar2 = this.f19639e;
        while (true) {
            qVar2 = qVar2.f19678f;
            if (qVar2 != this.f19639e) {
                cVar.f19639e.f19679g.a(qVar2.c());
            } else {
                cVar.f19640f = this.f19640f;
                return cVar;
            }
        }
    }

    @Override // j.e
    public String d(long j2) {
        if (j2 >= 0) {
            long j3 = j2 != Long.MAX_VALUE ? j2 + 1 : Long.MAX_VALUE;
            long a2 = a((byte) 10, 0L, j3);
            if (a2 != -1) {
                return i(a2);
            }
            if (j3 < z() && g(j3 - 1) == 13 && g(j3) == 10) {
                return i(j3);
            }
            c cVar = new c();
            a(cVar, 0L, Math.min(32L, z()));
            throw new EOFException("\\n not found: limit=" + Math.min(z(), j2) + " content=" + cVar.x().hex() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j2);
    }

    @Override // j.e
    public byte[] e(long j2) {
        w.a(this.f19640f, 0L, j2);
        if (j2 <= 2147483647L) {
            byte[] bArr = new byte[(int) j2];
            readFully(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j2);
    }

    @Override // j.e
    public int f() {
        return w.a(readInt());
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d write(byte[] bArr, int i2, int i3) {
        write(bArr, i2, i3);
        return this;
    }

    @Override // j.d
    public c writeByte(int i2) {
        q c2 = c(1);
        byte[] bArr = c2.f19673a;
        int i3 = c2.f19675c;
        c2.f19675c = i3 + 1;
        bArr[i3] = (byte) i2;
        this.f19640f++;
        return this;
    }

    @Override // j.d
    public c writeInt(int i2) {
        q c2 = c(4);
        byte[] bArr = c2.f19673a;
        int i3 = c2.f19675c;
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 24) & 255);
        int i5 = i4 + 1;
        bArr[i4] = (byte) ((i2 >>> 16) & 255);
        int i6 = i5 + 1;
        bArr[i5] = (byte) ((i2 >>> 8) & 255);
        bArr[i6] = (byte) (i2 & 255);
        c2.f19675c = i6 + 1;
        this.f19640f += 4;
        return this;
    }

    @Override // j.d
    public c writeShort(int i2) {
        q c2 = c(2);
        byte[] bArr = c2.f19673a;
        int i3 = c2.f19675c;
        int i4 = i3 + 1;
        bArr[i3] = (byte) ((i2 >>> 8) & 255);
        bArr[i4] = (byte) (i2 & 255);
        c2.f19675c = i4 + 1;
        this.f19640f += 2;
        return this;
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d a(int i2) {
        a(i2);
        return this;
    }

    @Override // j.d
    public c b(long j2) {
        if (j2 == 0) {
            writeByte(48);
            return this;
        }
        boolean z = false;
        int i2 = 1;
        if (j2 < 0) {
            j2 = -j2;
            if (j2 < 0) {
                a("-9223372036854775808");
                return this;
            }
            z = true;
        }
        if (j2 >= 100000000) {
            i2 = j2 < 1000000000000L ? j2 < 10000000000L ? j2 < 1000000000 ? 9 : 10 : j2 < 100000000000L ? 11 : 12 : j2 < 1000000000000000L ? j2 < 10000000000000L ? 13 : j2 < 100000000000000L ? 14 : 15 : j2 < 100000000000000000L ? j2 < 10000000000000000L ? 16 : 17 : j2 < 1000000000000000000L ? 18 : 19;
        } else if (j2 >= 10000) {
            i2 = j2 < 1000000 ? j2 < 100000 ? 5 : 6 : j2 < 10000000 ? 7 : 8;
        } else if (j2 >= 100) {
            i2 = j2 < 1000 ? 3 : 4;
        } else if (j2 >= 10) {
            i2 = 2;
        }
        if (z) {
            i2++;
        }
        q c2 = c(i2);
        byte[] bArr = c2.f19673a;
        int i3 = c2.f19675c + i2;
        while (j2 != 0) {
            i3--;
            bArr[i3] = f19638g[(int) (j2 % 10)];
            j2 /= 10;
        }
        if (z) {
            bArr[i3 - 1] = 45;
        }
        c2.f19675c += i2;
        this.f19640f += i2;
        return this;
    }

    @Override // j.d
    public c write(byte[] bArr) {
        if (bArr != null) {
            write(bArr, 0, bArr.length);
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // j.d
    public /* bridge */ /* synthetic */ d a(String str) {
        a(str);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public q c(int i2) {
        if (i2 >= 1 && i2 <= 8192) {
            q qVar = this.f19639e;
            if (qVar == null) {
                this.f19639e = r.a();
                q qVar2 = this.f19639e;
                qVar2.f19679g = qVar2;
                qVar2.f19678f = qVar2;
                return qVar2;
            }
            q qVar3 = qVar.f19679g;
            if (qVar3.f19675c + i2 <= 8192 && qVar3.f19677e) {
                return qVar3;
            }
            q a2 = r.a();
            qVar3.a(a2);
            return a2;
        }
        throw new IllegalArgumentException();
    }

    public final c a(c cVar, long j2, long j3) {
        if (cVar != null) {
            w.a(this.f19640f, j2, j3);
            if (j3 == 0) {
                return this;
            }
            cVar.f19640f += j3;
            q qVar = this.f19639e;
            while (true) {
                int i2 = qVar.f19675c;
                int i3 = qVar.f19674b;
                if (j2 < i2 - i3) {
                    break;
                }
                j2 -= i2 - i3;
                qVar = qVar.f19678f;
            }
            while (j3 > 0) {
                q c2 = qVar.c();
                c2.f19674b = (int) (c2.f19674b + j2);
                c2.f19675c = Math.min(c2.f19674b + ((int) j3), c2.f19675c);
                q qVar2 = cVar.f19639e;
                if (qVar2 == null) {
                    c2.f19679g = c2;
                    c2.f19678f = c2;
                    cVar.f19639e = c2;
                } else {
                    qVar2.f19679g.a(c2);
                }
                j3 -= c2.f19675c - c2.f19674b;
                qVar = qVar.f19678f;
                j2 = 0;
            }
            return this;
        }
        throw new IllegalArgumentException("out == null");
    }

    @Override // j.d
    public c write(byte[] bArr, int i2, int i3) {
        if (bArr != null) {
            long j2 = i3;
            w.a(bArr.length, i2, j2);
            int i4 = i3 + i2;
            while (i2 < i4) {
                q c2 = c(1);
                int min = Math.min(i4 - i2, 8192 - c2.f19675c);
                System.arraycopy(bArr, i2, c2.f19673a, c2.f19675c, min);
                i2 += min;
                c2.f19675c += min;
            }
            this.f19640f += j2;
            return this;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // j.e
    public short g() {
        return w.a(readShort());
    }

    public c d(int i2) {
        if (i2 < 128) {
            writeByte(i2);
        } else if (i2 < 2048) {
            writeByte((i2 >> 6) | 192);
            writeByte((i2 & 63) | 128);
        } else if (i2 < 65536) {
            if (i2 >= 55296 && i2 <= 57343) {
                writeByte(63);
            } else {
                writeByte((i2 >> 12) | 224);
                writeByte(((i2 >> 6) & 63) | 128);
                writeByte((i2 & 63) | 128);
            }
        } else if (i2 <= 1114111) {
            writeByte((i2 >> 18) | 240);
            writeByte(((i2 >> 12) & 63) | 128);
            writeByte(((i2 >> 6) & 63) | 128);
            writeByte((i2 & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(i2));
        }
        return this;
    }

    @Override // java.nio.channels.WritableByteChannel
    public int write(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            int remaining = byteBuffer.remaining();
            int i2 = remaining;
            while (i2 > 0) {
                q c2 = c(1);
                int min = Math.min(i2, 8192 - c2.f19675c);
                byteBuffer.get(c2.f19673a, c2.f19675c, min);
                i2 -= min;
                c2.f19675c += min;
            }
            this.f19640f += remaining;
            return remaining;
        }
        throw new IllegalArgumentException("source == null");
    }

    @Override // j.u
    public long b(c cVar, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (j2 >= 0) {
            long j3 = this.f19640f;
            if (j3 == 0) {
                return -1L;
            }
            if (j2 > j3) {
                j2 = j3;
            }
            cVar.a(this, j2);
            return j2;
        }
        throw new IllegalArgumentException("byteCount < 0: " + j2);
    }

    public String h(long j2) {
        return a(j2, w.f19686a);
    }

    @Override // j.e
    public String a(Charset charset) {
        try {
            return a(this.f19640f, charset);
        } catch (EOFException e2) {
            throw new AssertionError(e2);
        }
    }

    public final f b(int i2) {
        if (i2 == 0) {
            return f.EMPTY;
        }
        return new s(this, i2);
    }

    public String a(long j2, Charset charset) {
        w.a(this.f19640f, 0L, j2);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (j2 > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + j2);
        }
        if (j2 == 0) {
            return "";
        }
        q qVar = this.f19639e;
        int i2 = qVar.f19674b;
        if (i2 + j2 > qVar.f19675c) {
            return new String(e(j2), charset);
        }
        String str = new String(qVar.f19673a, i2, (int) j2, charset);
        qVar.f19674b = (int) (qVar.f19674b + j2);
        this.f19640f -= j2;
        if (qVar.f19674b == qVar.f19675c) {
            this.f19639e = qVar.b();
            r.a(qVar);
        }
        return str;
    }

    public int a(byte[] bArr, int i2, int i3) {
        w.a(bArr.length, i2, i3);
        q qVar = this.f19639e;
        if (qVar == null) {
            return -1;
        }
        int min = Math.min(i3, qVar.f19675c - qVar.f19674b);
        System.arraycopy(qVar.f19673a, qVar.f19674b, bArr, i2, min);
        qVar.f19674b += min;
        this.f19640f -= min;
        if (qVar.f19674b == qVar.f19675c) {
            this.f19639e = qVar.b();
            r.a(qVar);
        }
        return min;
    }

    @Override // j.d
    public c a(f fVar) {
        if (fVar != null) {
            fVar.write(this);
            return this;
        }
        throw new IllegalArgumentException("byteString == null");
    }

    @Override // j.d
    public c a(String str) {
        a(str, 0, str.length());
        return this;
    }

    public c a(String str, int i2, int i3) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + i2);
        }
        if (i3 >= i2) {
            if (i3 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
            }
            while (i2 < i3) {
                char charAt = str.charAt(i2);
                if (charAt < 128) {
                    q c2 = c(1);
                    byte[] bArr = c2.f19673a;
                    int i4 = c2.f19675c - i2;
                    int min = Math.min(i3, 8192 - i4);
                    int i5 = i2 + 1;
                    bArr[i2 + i4] = (byte) charAt;
                    while (i5 < min) {
                        char charAt2 = str.charAt(i5);
                        if (charAt2 >= 128) {
                            break;
                        }
                        bArr[i5 + i4] = (byte) charAt2;
                        i5++;
                    }
                    int i6 = c2.f19675c;
                    int i7 = (i4 + i5) - i6;
                    c2.f19675c = i6 + i7;
                    this.f19640f += i7;
                    i2 = i5;
                } else {
                    if (charAt < 2048) {
                        writeByte((charAt >> 6) | 192);
                        writeByte((charAt & '?') | 128);
                    } else if (charAt >= 55296 && charAt <= 57343) {
                        int i8 = i2 + 1;
                        char charAt3 = i8 < i3 ? str.charAt(i8) : (char) 0;
                        if (charAt <= 56319 && charAt3 >= 56320 && charAt3 <= 57343) {
                            int i9 = (((charAt & 10239) << 10) | (9215 & charAt3)) + AntDetector.ACTION_ID_SAMPLE;
                            writeByte((i9 >> 18) | 240);
                            writeByte(((i9 >> 12) & 63) | 128);
                            writeByte(((i9 >> 6) & 63) | 128);
                            writeByte((i9 & 63) | 128);
                            i2 += 2;
                        } else {
                            writeByte(63);
                            i2 = i8;
                        }
                    } else {
                        writeByte((charAt >> '\f') | 224);
                        writeByte(((charAt >> 6) & 63) | 128);
                        writeByte((charAt & '?') | 128);
                    }
                    i2++;
                }
            }
            return this;
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
    }

    public c a(String str, int i2, int i3, Charset charset) {
        if (str == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (i2 < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + i2);
        }
        if (i3 >= i2) {
            if (i3 > str.length()) {
                throw new IllegalArgumentException("endIndex > string.length: " + i3 + " > " + str.length());
            }
            if (charset != null) {
                if (charset.equals(w.f19686a)) {
                    a(str, i2, i3);
                    return this;
                }
                byte[] bytes = str.substring(i2, i3).getBytes(charset);
                write(bytes, 0, bytes.length);
                return this;
            }
            throw new IllegalArgumentException("charset == null");
        }
        throw new IllegalArgumentException("endIndex < beginIndex: " + i3 + " < " + i2);
    }

    @Override // j.d
    public long a(u uVar) {
        if (uVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        long j2 = 0;
        while (true) {
            long b2 = uVar.b(this, 8192L);
            if (b2 == -1) {
                return j2;
            }
            j2 += b2;
        }
    }

    @Override // j.d
    public c a(int i2) {
        writeInt(w.a(i2));
        return this;
    }

    @Override // j.d
    public c a(long j2) {
        if (j2 == 0) {
            writeByte(48);
            return this;
        }
        int numberOfTrailingZeros = (Long.numberOfTrailingZeros(Long.highestOneBit(j2)) / 4) + 1;
        q c2 = c(numberOfTrailingZeros);
        byte[] bArr = c2.f19673a;
        int i2 = c2.f19675c;
        for (int i3 = (i2 + numberOfTrailingZeros) - 1; i3 >= i2; i3--) {
            bArr[i3] = f19638g[(int) (15 & j2)];
            j2 >>>= 4;
        }
        c2.f19675c += numberOfTrailingZeros;
        this.f19640f += numberOfTrailingZeros;
        return this;
    }

    @Override // j.t
    public void a(c cVar, long j2) {
        if (cVar == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (cVar != this) {
            w.a(cVar.f19640f, 0L, j2);
            while (j2 > 0) {
                q qVar = cVar.f19639e;
                if (j2 < qVar.f19675c - qVar.f19674b) {
                    q qVar2 = this.f19639e;
                    q qVar3 = qVar2 != null ? qVar2.f19679g : null;
                    if (qVar3 != null && qVar3.f19677e) {
                        if ((qVar3.f19675c + j2) - (qVar3.f19676d ? 0 : qVar3.f19674b) <= 8192) {
                            cVar.f19639e.a(qVar3, (int) j2);
                            cVar.f19640f -= j2;
                            this.f19640f += j2;
                            return;
                        }
                    }
                    cVar.f19639e = cVar.f19639e.a((int) j2);
                }
                q qVar4 = cVar.f19639e;
                long j3 = qVar4.f19675c - qVar4.f19674b;
                cVar.f19639e = qVar4.b();
                q qVar5 = this.f19639e;
                if (qVar5 == null) {
                    this.f19639e = qVar4;
                    q qVar6 = this.f19639e;
                    qVar6.f19679g = qVar6;
                    qVar6.f19678f = qVar6;
                } else {
                    qVar5.f19679g.a(qVar4);
                    qVar4.a();
                }
                cVar.f19640f -= j3;
                this.f19640f += j3;
                j2 -= j3;
            }
            return;
        }
        throw new IllegalArgumentException("source == this");
    }

    @Override // j.e
    public long a(byte b2) {
        return a(b2, 0L, Long.MAX_VALUE);
    }

    public long a(byte b2, long j2, long j3) {
        q qVar;
        long j4 = 0;
        if (j2 >= 0 && j3 >= j2) {
            long j5 = this.f19640f;
            if (j3 <= j5) {
                j5 = j3;
            }
            if (j2 == j5 || (qVar = this.f19639e) == null) {
                return -1L;
            }
            long j6 = this.f19640f;
            if (j6 - j2 >= j2) {
                while (true) {
                    j6 = j4;
                    j4 = (qVar.f19675c - qVar.f19674b) + j6;
                    if (j4 >= j2) {
                        break;
                    }
                    qVar = qVar.f19678f;
                }
            } else {
                while (j6 > j2) {
                    qVar = qVar.f19679g;
                    j6 -= qVar.f19675c - qVar.f19674b;
                }
            }
            long j7 = j2;
            while (j6 < j5) {
                byte[] bArr = qVar.f19673a;
                int min = (int) Math.min(qVar.f19675c, (qVar.f19674b + j5) - j6);
                for (int i2 = (int) ((qVar.f19674b + j7) - j6); i2 < min; i2++) {
                    if (bArr[i2] == b2) {
                        return (i2 - qVar.f19674b) + j6;
                    }
                }
                j7 = (qVar.f19675c - qVar.f19674b) + j6;
                qVar = qVar.f19678f;
                j6 = j7;
            }
            return -1L;
        }
        throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.f19640f), Long.valueOf(j2), Long.valueOf(j3)));
    }

    @Override // j.e
    public boolean a(long j2, f fVar) {
        return a(j2, fVar, 0, fVar.size());
    }

    public boolean a(long j2, f fVar, int i2, int i3) {
        if (j2 < 0 || i2 < 0 || i3 < 0 || this.f19640f - j2 < i3 || fVar.size() - i2 < i3) {
            return false;
        }
        for (int i4 = 0; i4 < i3; i4++) {
            if (g(i4 + j2) != fVar.getByte(i2 + i4)) {
                return false;
            }
        }
        return true;
    }
}
