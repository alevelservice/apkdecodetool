package com.google.android.gms.internal.clearcut;

import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* loaded from: classes.dex */
public final class n4 {

    /* renamed from: a, reason: collision with root package name */
    private final ByteBuffer f11503a;

    /* renamed from: b, reason: collision with root package name */
    private k0 f11504b;

    /* renamed from: c, reason: collision with root package name */
    private int f11505c;

    private n4(ByteBuffer byteBuffer) {
        this.f11503a = byteBuffer;
        this.f11503a.order(ByteOrder.LITTLE_ENDIAN);
    }

    private n4(byte[] bArr, int i2, int i3) {
        this(ByteBuffer.wrap(bArr, i2, i3));
    }

    private static int a(CharSequence charSequence) {
        int length = charSequence.length();
        int i2 = 0;
        int i3 = 0;
        while (i3 < length && charSequence.charAt(i3) < 128) {
            i3++;
        }
        int i4 = length;
        while (true) {
            if (i3 >= length) {
                break;
            }
            char charAt = charSequence.charAt(i3);
            if (charAt < 2048) {
                i4 += (127 - charAt) >>> 31;
                i3++;
            } else {
                int length2 = charSequence.length();
                while (i3 < length2) {
                    char charAt2 = charSequence.charAt(i3);
                    if (charAt2 < 2048) {
                        i2 += (127 - charAt2) >>> 31;
                    } else {
                        i2 += 2;
                        if (55296 <= charAt2 && charAt2 <= 57343) {
                            if (Character.codePointAt(charSequence, i3) < 65536) {
                                StringBuilder sb = new StringBuilder(39);
                                sb.append("Unpaired surrogate at index ");
                                sb.append(i3);
                                throw new IllegalArgumentException(sb.toString());
                            }
                            i3++;
                        }
                    }
                    i3++;
                }
                i4 += i2;
            }
        }
        if (i4 >= length) {
            return i4;
        }
        long j2 = i4 + 4294967296L;
        StringBuilder sb2 = new StringBuilder(54);
        sb2.append("UTF-8 length does not fit in int: ");
        sb2.append(j2);
        throw new IllegalArgumentException(sb2.toString());
    }

    public static int a(String str) {
        int a2 = a((CharSequence) str);
        return e(a2) + a2;
    }

    public static n4 a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static n4 a(byte[] bArr, int i2, int i3) {
        return new n4(bArr, 0, i3);
    }

    private final void a(int i2) {
        byte b2 = (byte) i2;
        if (!this.f11503a.hasRemaining()) {
            throw new o4(this.f11503a.position(), this.f11503a.limit());
        }
        this.f11503a.put(b2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r8v26 */
    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i2;
        int i3;
        char charAt;
        int i4;
        if (byteBuffer.isReadOnly()) {
            throw new ReadOnlyBufferException();
        }
        int i5 = 0;
        if (!byteBuffer.hasArray()) {
            int length = charSequence.length();
            while (i5 < length) {
                char charAt2 = charSequence.charAt(i5);
                char c2 = charAt2;
                if (charAt2 >= 128) {
                    if (charAt2 < 2048) {
                        i4 = (charAt2 >>> 6) | 960;
                    } else {
                        if (charAt2 >= 55296 && 57343 >= charAt2) {
                            int i6 = i5 + 1;
                            if (i6 != charSequence.length()) {
                                char charAt3 = charSequence.charAt(i6);
                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                    byteBuffer.put((byte) ((codePoint >>> 18) | 240));
                                    byteBuffer.put((byte) (((codePoint >>> 12) & 63) | 128));
                                    byteBuffer.put((byte) (((codePoint >>> 6) & 63) | 128));
                                    byteBuffer.put((byte) ((codePoint & 63) | 128));
                                    i5 = i6;
                                    i5++;
                                } else {
                                    i5 = i6;
                                }
                            }
                            StringBuilder sb = new StringBuilder(39);
                            sb.append("Unpaired surrogate at index ");
                            sb.append(i5 - 1);
                            throw new IllegalArgumentException(sb.toString());
                        }
                        byteBuffer.put((byte) ((charAt2 >>> '\f') | 480));
                        i4 = ((charAt2 >>> 6) & 63) | 128;
                    }
                    byteBuffer.put((byte) i4);
                    c2 = (charAt2 & '?') | 128;
                }
                byteBuffer.put((byte) c2);
                i5++;
            }
            return;
        }
        try {
            byte[] array = byteBuffer.array();
            int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
            int remaining = byteBuffer.remaining();
            int length2 = charSequence.length();
            int i7 = remaining + arrayOffset;
            while (i5 < length2) {
                int i8 = i5 + arrayOffset;
                if (i8 >= i7 || (charAt = charSequence.charAt(i5)) >= 128) {
                    break;
                }
                array[i8] = (byte) charAt;
                i5++;
            }
            if (i5 == length2) {
                i2 = arrayOffset + length2;
            } else {
                i2 = arrayOffset + i5;
                while (i5 < length2) {
                    char charAt4 = charSequence.charAt(i5);
                    if (charAt4 >= 128 || i2 >= i7) {
                        if (charAt4 < 2048 && i2 <= i7 - 2) {
                            int i9 = i2 + 1;
                            array[i2] = (byte) ((charAt4 >>> 6) | 960);
                            i2 = i9 + 1;
                            array[i9] = (byte) ((charAt4 & '?') | 128);
                        } else {
                            if ((charAt4 >= 55296 && 57343 >= charAt4) || i2 > i7 - 3) {
                                if (i2 > i7 - 4) {
                                    StringBuilder sb2 = new StringBuilder(37);
                                    sb2.append("Failed writing ");
                                    sb2.append(charAt4);
                                    sb2.append(" at index ");
                                    sb2.append(i2);
                                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                                }
                                int i10 = i5 + 1;
                                if (i10 != charSequence.length()) {
                                    char charAt5 = charSequence.charAt(i10);
                                    if (Character.isSurrogatePair(charAt4, charAt5)) {
                                        int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                                        int i11 = i2 + 1;
                                        array[i2] = (byte) ((codePoint2 >>> 18) | 240);
                                        int i12 = i11 + 1;
                                        array[i11] = (byte) (((codePoint2 >>> 12) & 63) | 128);
                                        int i13 = i12 + 1;
                                        array[i12] = (byte) (((codePoint2 >>> 6) & 63) | 128);
                                        i2 = i13 + 1;
                                        array[i13] = (byte) ((codePoint2 & 63) | 128);
                                        i5 = i10;
                                    } else {
                                        i5 = i10;
                                    }
                                }
                                StringBuilder sb3 = new StringBuilder(39);
                                sb3.append("Unpaired surrogate at index ");
                                sb3.append(i5 - 1);
                                throw new IllegalArgumentException(sb3.toString());
                            }
                            int i14 = i2 + 1;
                            array[i2] = (byte) ((charAt4 >>> '\f') | 480);
                            int i15 = i14 + 1;
                            array[i14] = (byte) (((charAt4 >>> 6) & 63) | 128);
                            i3 = i15 + 1;
                            array[i15] = (byte) ((charAt4 & '?') | 128);
                        }
                        i5++;
                    } else {
                        i3 = i2 + 1;
                        array[i2] = (byte) charAt4;
                    }
                    i2 = i3;
                    i5++;
                }
            }
            byteBuffer.position(i2 - byteBuffer.arrayOffset());
        } catch (ArrayIndexOutOfBoundsException e2) {
            BufferOverflowException bufferOverflowException = new BufferOverflowException();
            bufferOverflowException.initCause(e2);
            throw bufferOverflowException;
        }
    }

    public static int b(int i2, long j2) {
        return c(i2) + c(j2);
    }

    public static int b(int i2, u4 u4Var) {
        int c2 = c(i2);
        int a2 = u4Var.a();
        return c2 + e(a2) + a2;
    }

    public static int b(int i2, String str) {
        return c(i2) + a(str);
    }

    public static int b(int i2, byte[] bArr) {
        return c(i2) + b(bArr);
    }

    public static int b(byte[] bArr) {
        return e(bArr.length) + bArr.length;
    }

    public static long b(long j2) {
        return (j2 >> 63) ^ (j2 << 1);
    }

    private final void b(int i2) {
        while ((i2 & (-128)) != 0) {
            a((i2 & 127) | 128);
            i2 >>>= 7;
        }
        a(i2);
    }

    public static int c(int i2) {
        return e(i2 << 3);
    }

    public static int c(long j2) {
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

    public static int d(int i2) {
        if (i2 >= 0) {
            return e(i2);
        }
        return 10;
    }

    private static int e(int i2) {
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

    public final void a() {
        if (this.f11503a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.f11503a.remaining())));
        }
    }

    public final void a(int i2, int i3) {
        b((i2 << 3) | i3);
    }

    public final void a(int i2, long j2) {
        a(i2, 0);
        a(j2);
    }

    public final void a(int i2, i2 i2Var) {
        if (this.f11504b != null) {
            if (this.f11505c != this.f11503a.position()) {
                this.f11504b.b(this.f11503a.array(), this.f11505c, this.f11503a.position() - this.f11505c);
            }
            k0 k0Var = this.f11504b;
            k0Var.a(i2, i2Var);
            k0Var.a();
            this.f11505c = this.f11503a.position();
        }
        this.f11504b = k0.a(this.f11503a);
        this.f11505c = this.f11503a.position();
        k0 k0Var2 = this.f11504b;
        k0Var2.a(i2, i2Var);
        k0Var2.a();
        this.f11505c = this.f11503a.position();
    }

    public final void a(int i2, u4 u4Var) {
        a(i2, 2);
        if (u4Var.f11575e < 0) {
            u4Var.a();
        }
        b(u4Var.f11575e);
        u4Var.a(this);
    }

    public final void a(int i2, String str) {
        a(i2, 2);
        try {
            int e2 = e(str.length());
            if (e2 != e(str.length() * 3)) {
                b(a((CharSequence) str));
                a(str, this.f11503a);
                return;
            }
            int position = this.f11503a.position();
            if (this.f11503a.remaining() < e2) {
                throw new o4(position + e2, this.f11503a.limit());
            }
            this.f11503a.position(position + e2);
            a(str, this.f11503a);
            int position2 = this.f11503a.position();
            this.f11503a.position(position);
            b((position2 - position) - e2);
            this.f11503a.position(position2);
        } catch (BufferOverflowException e3) {
            o4 o4Var = new o4(this.f11503a.position(), this.f11503a.limit());
            o4Var.initCause(e3);
            throw o4Var;
        }
    }

    public final void a(int i2, boolean z) {
        a(25, 0);
        byte b2 = z ? (byte) 1 : (byte) 0;
        if (!this.f11503a.hasRemaining()) {
            throw new o4(this.f11503a.position(), this.f11503a.limit());
        }
        this.f11503a.put(b2);
    }

    public final void a(int i2, byte[] bArr) {
        a(i2, 2);
        b(bArr.length);
        int length = bArr.length;
        if (this.f11503a.remaining() < length) {
            throw new o4(this.f11503a.position(), this.f11503a.limit());
        }
        this.f11503a.put(bArr, 0, length);
    }

    public final void a(long j2) {
        while (((-128) & j2) != 0) {
            a((((int) j2) & 127) | 128);
            j2 >>>= 7;
        }
        a((int) j2);
    }

    public final void b(int i2, int i3) {
        a(i2, 0);
        if (i3 >= 0) {
            b(i3);
        } else {
            a(i3);
        }
    }
}
