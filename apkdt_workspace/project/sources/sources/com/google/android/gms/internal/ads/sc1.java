package com.google.android.gms.internal.ads;

import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sc1 {

    /* renamed from: a, reason: collision with root package name */
    private final ByteBuffer f9310a;

    /* renamed from: b, reason: collision with root package name */
    private m81 f9311b;

    /* renamed from: c, reason: collision with root package name */
    private int f9312c;

    private sc1(byte[] bArr, int i2, int i3) {
        this(ByteBuffer.wrap(bArr, i2, i3));
    }

    public static sc1 a(byte[] bArr) {
        return a(bArr, 0, bArr.length);
    }

    public static int b(int i2, String str) {
        return a(i2) + a(str);
    }

    public static int c(int i2) {
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

    public static int c(int i2, int i3) {
        return a(i2) + b(i3);
    }

    private final void d(int i2) {
        byte b2 = (byte) i2;
        if (this.f9310a.hasRemaining()) {
            this.f9310a.put(b2);
            return;
        }
        throw new vc1(this.f9310a.position(), this.f9310a.limit());
    }

    private final void e(int i2) {
        while ((i2 & (-128)) != 0) {
            d((i2 & 127) | 128);
            i2 >>>= 7;
        }
        d(i2);
    }

    private sc1(ByteBuffer byteBuffer) {
        this.f9310a = byteBuffer;
        this.f9310a.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static sc1 a(byte[] bArr, int i2, int i3) {
        return new sc1(bArr, 0, i3);
    }

    public static int b(int i2, bd1 bd1Var) {
        int a2 = a(i2);
        int a3 = bd1Var.a();
        return a2 + c(a3) + a3;
    }

    public final void a(int i2, int i3) {
        b(i2, 0);
        if (i3 >= 0) {
            e(i3);
        } else {
            a(i3);
        }
    }

    public static int b(int i2) {
        if (i2 >= 0) {
            return c(i2);
        }
        return 10;
    }

    public final void a(int i2, String str) {
        b(i2, 2);
        try {
            int c2 = c(str.length());
            if (c2 == c(str.length() * 3)) {
                int position = this.f9310a.position();
                if (this.f9310a.remaining() >= c2) {
                    this.f9310a.position(position + c2);
                    a(str, this.f9310a);
                    int position2 = this.f9310a.position();
                    this.f9310a.position(position);
                    e((position2 - position) - c2);
                    this.f9310a.position(position2);
                    return;
                }
                throw new vc1(position + c2, this.f9310a.limit());
            }
            e(a((CharSequence) str));
            a(str, this.f9310a);
        } catch (BufferOverflowException e2) {
            vc1 vc1Var = new vc1(this.f9310a.position(), this.f9310a.limit());
            vc1Var.initCause(e2);
            throw vc1Var;
        }
    }

    public final void b(int i2, int i3) {
        e((i2 << 3) | i3);
    }

    public final void a(int i2, bd1 bd1Var) {
        b(i2, 2);
        if (bd1Var.f5767a < 0) {
            bd1Var.a();
        }
        e(bd1Var.f5767a);
        bd1Var.a(this);
    }

    public final void a(int i2, oa1 oa1Var) {
        if (this.f9311b == null) {
            this.f9311b = m81.a(this.f9310a);
            this.f9312c = this.f9310a.position();
        } else if (this.f9312c != this.f9310a.position()) {
            this.f9311b.b(this.f9310a.array(), this.f9312c, this.f9310a.position() - this.f9312c);
            this.f9312c = this.f9310a.position();
        }
        m81 m81Var = this.f9311b;
        m81Var.a(i2, oa1Var);
        m81Var.a();
        this.f9312c = this.f9310a.position();
    }

    public final void a(int i2, byte[] bArr) {
        b(3, 2);
        e(bArr.length);
        int length = bArr.length;
        if (this.f9310a.remaining() >= length) {
            this.f9310a.put(bArr, 0, length);
            return;
        }
        throw new vc1(this.f9310a.position(), this.f9310a.limit());
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

    private static void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        int i2;
        int i3;
        char charAt;
        if (!byteBuffer.isReadOnly()) {
            int i4 = 0;
            if (byteBuffer.hasArray()) {
                try {
                    byte[] array = byteBuffer.array();
                    int arrayOffset = byteBuffer.arrayOffset() + byteBuffer.position();
                    int remaining = byteBuffer.remaining();
                    int length = charSequence.length();
                    int i5 = remaining + arrayOffset;
                    while (i4 < length) {
                        int i6 = i4 + arrayOffset;
                        if (i6 >= i5 || (charAt = charSequence.charAt(i4)) >= 128) {
                            break;
                        }
                        array[i6] = (byte) charAt;
                        i4++;
                    }
                    if (i4 == length) {
                        i2 = arrayOffset + length;
                    } else {
                        i2 = arrayOffset + i4;
                        while (i4 < length) {
                            char charAt2 = charSequence.charAt(i4);
                            if (charAt2 >= 128 || i2 >= i5) {
                                if (charAt2 < 2048 && i2 <= i5 - 2) {
                                    int i7 = i2 + 1;
                                    array[i2] = (byte) ((charAt2 >>> 6) | 960);
                                    i2 = i7 + 1;
                                    array[i7] = (byte) ((charAt2 & '?') | 128);
                                } else {
                                    if ((charAt2 >= 55296 && 57343 >= charAt2) || i2 > i5 - 3) {
                                        if (i2 <= i5 - 4) {
                                            int i8 = i4 + 1;
                                            if (i8 != charSequence.length()) {
                                                char charAt3 = charSequence.charAt(i8);
                                                if (Character.isSurrogatePair(charAt2, charAt3)) {
                                                    int codePoint = Character.toCodePoint(charAt2, charAt3);
                                                    int i9 = i2 + 1;
                                                    array[i2] = (byte) ((codePoint >>> 18) | 240);
                                                    int i10 = i9 + 1;
                                                    array[i9] = (byte) (((codePoint >>> 12) & 63) | 128);
                                                    int i11 = i10 + 1;
                                                    array[i10] = (byte) (((codePoint >>> 6) & 63) | 128);
                                                    i2 = i11 + 1;
                                                    array[i11] = (byte) ((codePoint & 63) | 128);
                                                    i4 = i8;
                                                } else {
                                                    i4 = i8;
                                                }
                                            }
                                            StringBuilder sb = new StringBuilder(39);
                                            sb.append("Unpaired surrogate at index ");
                                            sb.append(i4 - 1);
                                            throw new IllegalArgumentException(sb.toString());
                                        }
                                        StringBuilder sb2 = new StringBuilder(37);
                                        sb2.append("Failed writing ");
                                        sb2.append(charAt2);
                                        sb2.append(" at index ");
                                        sb2.append(i2);
                                        throw new ArrayIndexOutOfBoundsException(sb2.toString());
                                    }
                                    int i12 = i2 + 1;
                                    array[i2] = (byte) ((charAt2 >>> '\f') | 480);
                                    int i13 = i12 + 1;
                                    array[i12] = (byte) (((charAt2 >>> 6) & 63) | 128);
                                    i3 = i13 + 1;
                                    array[i13] = (byte) ((charAt2 & '?') | 128);
                                }
                                i4++;
                            } else {
                                i3 = i2 + 1;
                                array[i2] = (byte) charAt2;
                            }
                            i2 = i3;
                            i4++;
                        }
                    }
                    byteBuffer.position(i2 - byteBuffer.arrayOffset());
                    return;
                } catch (ArrayIndexOutOfBoundsException e2) {
                    BufferOverflowException bufferOverflowException = new BufferOverflowException();
                    bufferOverflowException.initCause(e2);
                    throw bufferOverflowException;
                }
            }
            int length2 = charSequence.length();
            while (i4 < length2) {
                char charAt4 = charSequence.charAt(i4);
                if (charAt4 < 128) {
                    byteBuffer.put((byte) charAt4);
                } else if (charAt4 < 2048) {
                    byteBuffer.put((byte) ((charAt4 >>> 6) | 960));
                    byteBuffer.put((byte) ((charAt4 & '?') | 128));
                } else {
                    if (charAt4 >= 55296 && 57343 >= charAt4) {
                        int i14 = i4 + 1;
                        if (i14 != charSequence.length()) {
                            char charAt5 = charSequence.charAt(i14);
                            if (Character.isSurrogatePair(charAt4, charAt5)) {
                                int codePoint2 = Character.toCodePoint(charAt4, charAt5);
                                byteBuffer.put((byte) ((codePoint2 >>> 18) | 240));
                                byteBuffer.put((byte) (((codePoint2 >>> 12) & 63) | 128));
                                byteBuffer.put((byte) (((codePoint2 >>> 6) & 63) | 128));
                                byteBuffer.put((byte) ((codePoint2 & 63) | 128));
                                i4 = i14;
                            } else {
                                i4 = i14;
                            }
                        }
                        StringBuilder sb3 = new StringBuilder(39);
                        sb3.append("Unpaired surrogate at index ");
                        sb3.append(i4 - 1);
                        throw new IllegalArgumentException(sb3.toString());
                    }
                    byteBuffer.put((byte) ((charAt4 >>> '\f') | 480));
                    byteBuffer.put((byte) (((charAt4 >>> 6) & 63) | 128));
                    byteBuffer.put((byte) ((charAt4 & '?') | 128));
                }
                i4++;
            }
            return;
        }
        throw new ReadOnlyBufferException();
    }

    public static int a(String str) {
        int a2 = a((CharSequence) str);
        return c(a2) + a2;
    }

    public final void a() {
        if (this.f9310a.remaining() != 0) {
            throw new IllegalStateException(String.format("Did not write as much data as expected, %s bytes remaining.", Integer.valueOf(this.f9310a.remaining())));
        }
    }

    public static int a(int i2) {
        return c(i2 << 3);
    }

    public final void a(long j2) {
        while (((-128) & j2) != 0) {
            d((((int) j2) & 127) | 128);
            j2 >>>= 7;
        }
        d((int) j2);
    }
}
