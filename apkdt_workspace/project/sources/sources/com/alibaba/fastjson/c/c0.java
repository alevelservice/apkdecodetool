package com.alibaba.fastjson.c;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.io.Writer;

/* compiled from: SerializeWriter.java */
/* loaded from: classes.dex */
public final class c0 extends Writer {

    /* renamed from: i, reason: collision with root package name */
    private static final ThreadLocal<char[]> f3228i = new ThreadLocal<>();

    /* renamed from: j, reason: collision with root package name */
    static final int[] f3229j = {9, 99, 999, k.b.a.u.l.MAX_VALUE_OF_ERA, 99999, 999999, 9999999, 99999999, k.b.a.o.MAX_VALUE, Integer.MAX_VALUE};

    /* renamed from: k, reason: collision with root package name */
    static final char[] f3230k = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};

    /* renamed from: l, reason: collision with root package name */
    static final char[] f3231l = {'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
    static final char[] m = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    static final byte[] n = new byte[161];
    static final byte[] o = new byte[161];
    static final char[] p = new char[93];
    public static final char[] q;

    /* renamed from: e, reason: collision with root package name */
    protected char[] f3232e;

    /* renamed from: f, reason: collision with root package name */
    protected int f3233f;

    /* renamed from: g, reason: collision with root package name */
    protected int f3234g;

    /* renamed from: h, reason: collision with root package name */
    protected final Writer f3235h;

    static {
        byte[] bArr = n;
        bArr[0] = 4;
        bArr[1] = 4;
        bArr[2] = 4;
        bArr[3] = 4;
        bArr[4] = 4;
        bArr[5] = 4;
        bArr[6] = 4;
        bArr[7] = 4;
        bArr[8] = 1;
        bArr[9] = 1;
        bArr[10] = 1;
        bArr[11] = 4;
        bArr[12] = 1;
        bArr[13] = 1;
        bArr[34] = 1;
        bArr[92] = 1;
        byte[] bArr2 = o;
        bArr2[0] = 4;
        bArr2[1] = 4;
        bArr2[2] = 4;
        bArr2[3] = 4;
        bArr2[4] = 4;
        bArr2[5] = 4;
        bArr2[6] = 4;
        bArr2[7] = 4;
        bArr2[8] = 1;
        bArr2[9] = 1;
        bArr2[10] = 1;
        bArr2[11] = 4;
        bArr2[12] = 1;
        bArr2[13] = 1;
        bArr2[92] = 1;
        bArr2[39] = 1;
        for (int i2 = 14; i2 <= 31; i2++) {
            n[i2] = 4;
            o[i2] = 4;
        }
        for (int i3 = 127; i3 < 160; i3++) {
            n[i3] = 4;
            o[i3] = 4;
        }
        char[] cArr = p;
        cArr[0] = '0';
        cArr[1] = '1';
        cArr[2] = '2';
        cArr[3] = '3';
        cArr[4] = '4';
        cArr[5] = '5';
        cArr[6] = '6';
        cArr[7] = '7';
        cArr[8] = 'b';
        cArr[9] = 't';
        cArr[10] = 'n';
        cArr[11] = 'v';
        cArr[12] = 'f';
        cArr[13] = 'r';
        cArr[34] = '\"';
        cArr[39] = '\'';
        cArr[47] = '/';
        cArr[92] = '\\';
        q = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public c0(Writer writer, int i2, b[] bVarArr) {
        this.f3235h = writer;
        this.f3232e = f3228i.get();
        if (this.f3232e != null) {
            f3228i.set(null);
        }
        if (this.f3232e == null) {
            this.f3232e = new char[1024];
        }
        for (b bVar : bVarArr) {
            i2 |= bVar.mask;
        }
        this.f3234g = i2;
    }

    private void e(String str) {
        int length = str.length();
        boolean z = true;
        int i2 = this.f3233f + length + 1;
        if (i2 > this.f3232e.length) {
            if (this.f3235h != null) {
                if (length == 0) {
                    write(34);
                    write(34);
                    write(58);
                    return;
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z = false;
                        break;
                    }
                    char charAt = str.charAt(i3);
                    byte[] bArr = n;
                    if (charAt < bArr.length && bArr[charAt] != 0) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (z) {
                    write(34);
                }
                for (int i4 = 0; i4 < length; i4++) {
                    char charAt2 = str.charAt(i4);
                    byte[] bArr2 = n;
                    if (charAt2 < bArr2.length && bArr2[charAt2] != 0) {
                        write(92);
                        write(p[charAt2]);
                    } else {
                        write(charAt2);
                    }
                }
                if (z) {
                    write(34);
                }
                write(58);
                return;
            }
            c(i2);
        }
        if (length == 0) {
            int i5 = this.f3233f;
            if (i5 + 3 > this.f3232e.length) {
                c(i5 + 3);
            }
            char[] cArr = this.f3232e;
            int i6 = this.f3233f;
            this.f3233f = i6 + 1;
            cArr[i6] = '\"';
            int i7 = this.f3233f;
            this.f3233f = i7 + 1;
            cArr[i7] = '\"';
            int i8 = this.f3233f;
            this.f3233f = i8 + 1;
            cArr[i8] = ':';
            return;
        }
        int i9 = this.f3233f;
        int i10 = i9 + length;
        str.getChars(0, length, this.f3232e, i9);
        this.f3233f = i2;
        int i11 = i9;
        boolean z2 = false;
        while (i11 < i10) {
            char[] cArr2 = this.f3232e;
            char c2 = cArr2[i11];
            byte[] bArr3 = n;
            if (c2 < bArr3.length && bArr3[c2] != 0) {
                if (!z2) {
                    i2 += 3;
                    if (i2 > cArr2.length) {
                        c(i2);
                    }
                    this.f3233f = i2;
                    char[] cArr3 = this.f3232e;
                    int i12 = i11 + 1;
                    System.arraycopy(cArr3, i12, cArr3, i11 + 3, (i10 - i11) - 1);
                    char[] cArr4 = this.f3232e;
                    System.arraycopy(cArr4, 0, cArr4, 1, i11);
                    char[] cArr5 = this.f3232e;
                    cArr5[i9] = '\"';
                    cArr5[i12] = '\\';
                    int i13 = i12 + 1;
                    cArr5[i13] = p[c2];
                    i10 += 2;
                    cArr5[this.f3233f - 2] = '\"';
                    i11 = i13;
                    z2 = true;
                } else {
                    i2++;
                    if (i2 > cArr2.length) {
                        c(i2);
                    }
                    this.f3233f = i2;
                    char[] cArr6 = this.f3232e;
                    int i14 = i11 + 1;
                    System.arraycopy(cArr6, i14, cArr6, i11 + 2, i10 - i11);
                    char[] cArr7 = this.f3232e;
                    cArr7[i11] = '\\';
                    cArr7[i14] = p[c2];
                    i10++;
                    i11 = i14;
                }
            }
            i11++;
        }
        this.f3232e[this.f3233f - 1] = ':';
    }

    private void f(String str) {
        int length = str.length();
        boolean z = true;
        int i2 = this.f3233f + length + 1;
        if (i2 > this.f3232e.length) {
            if (this.f3235h != null) {
                if (length == 0) {
                    write(39);
                    write(39);
                    write(58);
                    return;
                }
                int i3 = 0;
                while (true) {
                    if (i3 >= length) {
                        z = false;
                        break;
                    }
                    char charAt = str.charAt(i3);
                    byte[] bArr = o;
                    if (charAt < bArr.length && bArr[charAt] != 0) {
                        break;
                    } else {
                        i3++;
                    }
                }
                if (z) {
                    write(39);
                }
                for (int i4 = 0; i4 < length; i4++) {
                    char charAt2 = str.charAt(i4);
                    byte[] bArr2 = o;
                    if (charAt2 < bArr2.length && bArr2[charAt2] != 0) {
                        write(92);
                        write(p[charAt2]);
                    } else {
                        write(charAt2);
                    }
                }
                if (z) {
                    write(39);
                }
                write(58);
                return;
            }
            c(i2);
        }
        if (length == 0) {
            int i5 = this.f3233f;
            if (i5 + 3 > this.f3232e.length) {
                c(i5 + 3);
            }
            char[] cArr = this.f3232e;
            int i6 = this.f3233f;
            this.f3233f = i6 + 1;
            cArr[i6] = '\'';
            int i7 = this.f3233f;
            this.f3233f = i7 + 1;
            cArr[i7] = '\'';
            int i8 = this.f3233f;
            this.f3233f = i8 + 1;
            cArr[i8] = ':';
            return;
        }
        int i9 = this.f3233f;
        int i10 = i9 + length;
        str.getChars(0, length, this.f3232e, i9);
        this.f3233f = i2;
        int i11 = i9;
        boolean z2 = false;
        while (i11 < i10) {
            char[] cArr2 = this.f3232e;
            char c2 = cArr2[i11];
            byte[] bArr3 = o;
            if (c2 < bArr3.length && bArr3[c2] != 0) {
                if (!z2) {
                    i2 += 3;
                    if (i2 > cArr2.length) {
                        c(i2);
                    }
                    this.f3233f = i2;
                    char[] cArr3 = this.f3232e;
                    int i12 = i11 + 1;
                    System.arraycopy(cArr3, i12, cArr3, i11 + 3, (i10 - i11) - 1);
                    char[] cArr4 = this.f3232e;
                    System.arraycopy(cArr4, 0, cArr4, 1, i11);
                    char[] cArr5 = this.f3232e;
                    cArr5[i9] = '\'';
                    cArr5[i12] = '\\';
                    int i13 = i12 + 1;
                    cArr5[i13] = p[c2];
                    i10 += 2;
                    cArr5[this.f3233f - 2] = '\'';
                    i11 = i13;
                    z2 = true;
                } else {
                    i2++;
                    if (i2 > cArr2.length) {
                        c(i2);
                    }
                    this.f3233f = i2;
                    char[] cArr6 = this.f3232e;
                    int i14 = i11 + 1;
                    System.arraycopy(cArr6, i14, cArr6, i11 + 2, i10 - i11);
                    char[] cArr7 = this.f3232e;
                    cArr7[i11] = '\\';
                    cArr7[i14] = p[c2];
                    i10++;
                    i11 = i14;
                }
            }
            i11++;
        }
        this.f3232e[i2 - 1] = ':';
    }

    public void a(b bVar, boolean z) {
        if (z) {
            this.f3234g = bVar.mask | this.f3234g;
        } else {
            this.f3234g = (bVar.mask ^ (-1)) & this.f3234g;
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* synthetic */ Writer append(char c2) {
        a(c2);
        return this;
    }

    public byte[] b(String str) {
        if (this.f3235h == null) {
            if (str == null) {
                str = "UTF-8";
            }
            try {
                return new String(this.f3232e, 0, this.f3233f).getBytes(str);
            } catch (UnsupportedEncodingException e2) {
                throw new com.alibaba.fastjson.f("toBytes error", e2);
            }
        }
        throw new UnsupportedOperationException("writer not null");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void c(int i2) {
        int length = ((this.f3232e.length * 3) / 2) + 1;
        if (length >= i2) {
            i2 = length;
        }
        char[] cArr = new char[i2];
        System.arraycopy(this.f3232e, 0, cArr, 0, this.f3233f);
        this.f3232e = cArr;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f3235h != null && this.f3233f > 0) {
            flush();
        }
        char[] cArr = this.f3232e;
        if (cArr.length <= 8192) {
            f3228i.set(cArr);
        }
        this.f3232e = null;
    }

    public void d(int i2) {
        if (i2 == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int i3 = 0;
        while ((i2 < 0 ? -i2 : i2) > f3229j[i3]) {
            i3++;
        }
        int i4 = i3 + 1;
        if (i2 < 0) {
            i4++;
        }
        int i5 = this.f3233f + i4;
        if (i5 > this.f3232e.length) {
            if (this.f3235h == null) {
                c(i5);
            } else {
                char[] cArr = new char[i4];
                a(i2, i4, cArr);
                write(cArr, 0, cArr.length);
                return;
            }
        }
        a(i2, i5, this.f3232e);
        this.f3233f = i5;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        Writer writer = this.f3235h;
        if (writer == null) {
            return;
        }
        try {
            writer.write(this.f3232e, 0, this.f3233f);
            this.f3235h.flush();
            this.f3233f = 0;
        } catch (IOException e2) {
            throw new com.alibaba.fastjson.f(e2.getMessage(), e2);
        }
    }

    public void h(long j2) {
        if (j2 == Long.MIN_VALUE) {
            write("-9223372036854775808");
            return;
        }
        long j3 = j2 < 0 ? -j2 : j2;
        int i2 = 1;
        long j4 = 10;
        while (true) {
            if (i2 >= 19) {
                i2 = 0;
                break;
            } else {
                if (j3 < j4) {
                    break;
                }
                j4 *= 10;
                i2++;
            }
        }
        if (i2 == 0) {
            i2 = 19;
        }
        if (j2 < 0) {
            i2++;
        }
        int i3 = this.f3233f + i2;
        if (i3 > this.f3232e.length) {
            if (this.f3235h == null) {
                c(i3);
            } else {
                char[] cArr = new char[i2];
                a(j2, i2, cArr);
                write(cArr, 0, cArr.length);
                return;
            }
        }
        a(j2, i3, this.f3232e);
        this.f3233f = i3;
    }

    public void i() {
        write("null");
    }

    public String toString() {
        return new String(this.f3232e, 0, this.f3233f);
    }

    @Override // java.io.Writer
    public void write(int i2) {
        int i3 = this.f3233f + 1;
        if (i3 > this.f3232e.length) {
            if (this.f3235h == null) {
                c(i3);
            } else {
                flush();
                i3 = 1;
            }
        }
        this.f3232e[this.f3233f] = (char) i2;
        this.f3233f = i3;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* synthetic */ Writer append(CharSequence charSequence) {
        a(charSequence);
        return this;
    }

    public boolean a(b bVar) {
        return (bVar.mask & this.f3234g) != 0;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* synthetic */ Writer append(CharSequence charSequence, int i2, int i3) {
        a(charSequence, i2, i3);
        return this;
    }

    public c0 a(CharSequence charSequence) {
        String charSequence2 = charSequence == null ? "null" : charSequence.toString();
        write(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* synthetic */ Appendable append(char c2) {
        a(c2);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* synthetic */ Appendable append(CharSequence charSequence) {
        a(charSequence);
        return this;
    }

    public void c(String str) {
        if ((this.f3234g & b.UseSingleQuotes.mask) != 0) {
            d(str);
        } else {
            a(str, (char) 0, true);
        }
    }

    public c0 a(CharSequence charSequence, int i2, int i3) {
        if (charSequence == null) {
            charSequence = "null";
        }
        String charSequence2 = charSequence.subSequence(i2, i3).toString();
        write(charSequence2, 0, charSequence2.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public /* synthetic */ Appendable append(CharSequence charSequence, int i2, int i3) {
        a(charSequence, i2, i3);
        return this;
    }

    public c0 a(char c2) {
        write(c2);
        return this;
    }

    @Override // java.io.Writer
    public void write(char[] cArr, int i2, int i3) {
        int i4;
        if (i2 < 0 || i2 > cArr.length || i3 < 0 || (i4 = i2 + i3) > cArr.length || i4 < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (i3 == 0) {
            return;
        }
        int i5 = this.f3233f + i3;
        if (i5 > this.f3232e.length) {
            if (this.f3235h == null) {
                c(i5);
            }
            do {
                char[] cArr2 = this.f3232e;
                int length = cArr2.length;
                int i6 = this.f3233f;
                int i7 = length - i6;
                System.arraycopy(cArr, i2, cArr2, i6, i7);
                this.f3233f = this.f3232e.length;
                flush();
                i3 -= i7;
                i2 += i7;
            } while (i3 > this.f3232e.length);
            i5 = i3;
        }
        System.arraycopy(cArr, i2, this.f3232e, this.f3233f, i3);
        this.f3233f = i5;
    }

    public void a(byte[] bArr) {
        int length = bArr.length;
        boolean z = (this.f3234g & b.UseSingleQuotes.mask) != 0;
        char c2 = z ? '\'' : '\"';
        if (length == 0) {
            write(z ? "''" : "\"\"");
            return;
        }
        char[] cArr = com.alibaba.fastjson.a.f.y;
        int i2 = (length / 3) * 3;
        int i3 = length - 1;
        int i4 = this.f3233f;
        int i5 = (((i3 / 3) + 1) << 2) + i4 + 2;
        if (i5 > this.f3232e.length) {
            if (this.f3235h != null) {
                write(c2);
                int i6 = 0;
                while (i6 < i2) {
                    int i7 = i6 + 1;
                    int i8 = i7 + 1;
                    int i9 = ((bArr[i6] & 255) << 16) | ((bArr[i7] & 255) << 8) | (bArr[i8] & 255);
                    write(cArr[(i9 >>> 18) & 63]);
                    write(cArr[(i9 >>> 12) & 63]);
                    write(cArr[(i9 >>> 6) & 63]);
                    write(cArr[i9 & 63]);
                    i6 = i8 + 1;
                }
                int i10 = length - i2;
                if (i10 > 0) {
                    int i11 = ((bArr[i2] & 255) << 10) | (i10 == 2 ? (bArr[i3] & 255) << 2 : 0);
                    write(cArr[i11 >> 12]);
                    write(cArr[(i11 >>> 6) & 63]);
                    write(i10 == 2 ? cArr[i11 & 63] : '=');
                    write(61);
                }
                write(c2);
                return;
            }
            c(i5);
        }
        this.f3233f = i5;
        int i12 = i4 + 1;
        this.f3232e[i4] = c2;
        int i13 = 0;
        while (i13 < i2) {
            int i14 = i13 + 1;
            int i15 = i14 + 1;
            int i16 = ((bArr[i13] & 255) << 16) | ((bArr[i14] & 255) << 8);
            int i17 = i15 + 1;
            int i18 = i16 | (bArr[i15] & 255);
            char[] cArr2 = this.f3232e;
            int i19 = i12 + 1;
            cArr2[i12] = cArr[(i18 >>> 18) & 63];
            int i20 = i19 + 1;
            cArr2[i19] = cArr[(i18 >>> 12) & 63];
            int i21 = i20 + 1;
            cArr2[i20] = cArr[(i18 >>> 6) & 63];
            i12 = i21 + 1;
            cArr2[i21] = cArr[i18 & 63];
            i13 = i17;
        }
        int i22 = length - i2;
        if (i22 > 0) {
            int i23 = ((bArr[i2] & 255) << 10) | (i22 == 2 ? (bArr[i3] & 255) << 2 : 0);
            char[] cArr3 = this.f3232e;
            cArr3[i5 - 5] = cArr[i23 >> 12];
            cArr3[i5 - 4] = cArr[(i23 >>> 6) & 63];
            cArr3[i5 - 3] = i22 == 2 ? cArr[i23 & 63] : '=';
            this.f3232e[i5 - 2] = '=';
        }
        this.f3232e[i5 - 1] = c2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void d(String str) {
        int i2 = 0;
        if (str == null) {
            int i3 = this.f3233f + 4;
            if (i3 > this.f3232e.length) {
                c(i3);
            }
            "null".getChars(0, 4, this.f3232e, this.f3233f);
            this.f3233f = i3;
            return;
        }
        int length = str.length();
        int i4 = this.f3233f + length + 2;
        if (i4 > this.f3232e.length) {
            if (this.f3235h != null) {
                write(39);
                while (i2 < str.length()) {
                    char charAt = str.charAt(i2);
                    if (charAt > '\r' && charAt != '\\' && charAt != '\'' && (charAt != '/' || (this.f3234g & b.WriteSlashAsSpecial.mask) == 0)) {
                        write(charAt);
                    } else {
                        write(92);
                        write(p[charAt]);
                    }
                    i2++;
                }
                write(39);
                return;
            }
            c(i4);
        }
        int i5 = this.f3233f;
        int i6 = i5 + 1;
        int i7 = i6 + length;
        char[] cArr = this.f3232e;
        cArr[i5] = '\'';
        str.getChars(0, length, cArr, i6);
        this.f3233f = i4;
        int i8 = -1;
        char c2 = 0;
        for (int i9 = i6; i9 < i7; i9++) {
            char c3 = this.f3232e[i9];
            if (c3 <= '\r' || c3 == '\\' || c3 == '\'' || (c3 == '/' && (this.f3234g & b.WriteSlashAsSpecial.mask) != 0)) {
                i2++;
                i8 = i9;
                c2 = c3;
            }
        }
        int i10 = i4 + i2;
        if (i10 > this.f3232e.length) {
            c(i10);
        }
        this.f3233f = i10;
        if (i2 == 1) {
            char[] cArr2 = this.f3232e;
            int i11 = i8 + 1;
            System.arraycopy(cArr2, i11, cArr2, i8 + 2, (i7 - i8) - 1);
            char[] cArr3 = this.f3232e;
            cArr3[i8] = '\\';
            cArr3[i11] = p[c2];
        } else if (i2 > 1) {
            char[] cArr4 = this.f3232e;
            int i12 = i8 + 1;
            System.arraycopy(cArr4, i12, cArr4, i8 + 2, (i7 - i8) - 1);
            char[] cArr5 = this.f3232e;
            cArr5[i8] = '\\';
            cArr5[i12] = p[c2];
            int i13 = i7 + 1;
            for (int i14 = i12 - 2; i14 >= i6; i14--) {
                char c4 = this.f3232e[i14];
                if (c4 <= '\r' || c4 == '\\' || c4 == '\'' || (c4 == '/' && (this.f3234g & b.WriteSlashAsSpecial.mask) != 0)) {
                    char[] cArr6 = this.f3232e;
                    int i15 = i14 + 1;
                    System.arraycopy(cArr6, i15, cArr6, i14 + 2, (i13 - i14) - 1);
                    char[] cArr7 = this.f3232e;
                    cArr7[i14] = '\\';
                    cArr7[i15] = p[c4];
                    i13++;
                }
            }
        }
        this.f3232e[this.f3233f - 1] = '\'';
    }

    @Override // java.io.Writer
    public void write(String str, int i2, int i3) {
        int i4;
        int i5 = this.f3233f + i3;
        if (i5 > this.f3232e.length) {
            if (this.f3235h == null) {
                c(i5);
            } else {
                while (true) {
                    char[] cArr = this.f3232e;
                    int length = cArr.length;
                    int i6 = this.f3233f;
                    int i7 = length - i6;
                    i4 = i2 + i7;
                    str.getChars(i2, i4, cArr, i6);
                    this.f3233f = this.f3232e.length;
                    flush();
                    i3 -= i7;
                    if (i3 <= this.f3232e.length) {
                        break;
                    } else {
                        i2 = i4;
                    }
                }
                i5 = i3;
                i2 = i4;
            }
        }
        str.getChars(i2, i3 + i2, this.f3232e, this.f3233f);
        this.f3233f = i5;
    }

    @Override // java.io.Writer
    public void write(String str) {
        if (str == null) {
            i();
        } else {
            write(str, 0, str.length());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0093, code lost:
    
        if (r14 == (-1)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x0095, code lost:
    
        r15 = r3;
        r14 = r4;
        r16 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x00e5, code lost:
    
        if (r14 == (-1)) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00c1, code lost:
    
        if ((com.alibaba.fastjson.c.b.WriteSlashAsSpecial.mask & r17.f3234g) != 0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00c9, code lost:
    
        if (r3 != '\\') goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00d2, code lost:
    
        if (r3 != '\"') goto L55;
     */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00d7  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x00e8 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void a(java.lang.String r18, char r19, boolean r20) {
        /*
            Method dump skipped, instructions count: 589
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.alibaba.fastjson.c.c0.a(java.lang.String, char, boolean):void");
    }

    public void a(boolean z) {
        write(z ? "true" : "false");
    }

    public void a(String str, boolean z) {
        int i2 = this.f3234g;
        if ((b.UseSingleQuotes.mask & i2) != 0) {
            if ((b.QuoteFieldNames.mask & i2) != 0) {
                d(str);
                write(58);
                return;
            } else {
                f(str);
                return;
            }
        }
        if ((i2 & b.QuoteFieldNames.mask) != 0) {
            a(str, ':', z);
        } else {
            e(str);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void a(long j2, int i2, char[] cArr) {
        char c2;
        if (j2 < 0) {
            c2 = '-';
            j2 = -j2;
        } else {
            c2 = 0;
        }
        while (j2 > 2147483647L) {
            long j3 = j2 / 100;
            int i3 = (int) (j2 - (((j3 << 6) + (j3 << 5)) + (j3 << 2)));
            int i4 = i2 - 1;
            cArr[i4] = m[i3];
            i2 = i4 - 1;
            cArr[i2] = f3231l[i3];
            j2 = j3;
        }
        int i5 = (int) j2;
        while (i5 >= 65536) {
            int i6 = i5 / 100;
            int i7 = i5 - (((i6 << 6) + (i6 << 5)) + (i6 << 2));
            int i8 = i2 - 1;
            cArr[i8] = m[i7];
            i2 = i8 - 1;
            cArr[i2] = f3231l[i7];
            i5 = i6;
        }
        while (true) {
            int i9 = (52429 * i5) >>> 19;
            i2--;
            cArr[i2] = f3230k[i5 - ((i9 << 3) + (i9 << 1))];
            if (i9 == 0) {
                break;
            } else {
                i5 = i9;
            }
        }
        if (c2 != 0) {
            cArr[i2 - 1] = c2;
        }
    }
}
