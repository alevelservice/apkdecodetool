package com.google.android.gms.internal.measurement;

import java.nio.BufferOverflowException;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ReadOnlyBufferException;

/* loaded from: classes.dex */
public final class r7 {

    /* renamed from: a, reason: collision with root package name */
    private final ByteBuffer f12072a;

    /* renamed from: b, reason: collision with root package name */
    private i3 f12073b;

    /* renamed from: c, reason: collision with root package name */
    private int f12074c;

    private r7(byte[] bArr, int i2, int i3) {
        this(ByteBuffer.wrap(bArr, 0, i3));
    }

    public static r7 a(byte[] bArr, int i2, int i3) {
        return new r7(bArr, 0, i3);
    }

    public static r7 b(byte[] bArr) {
        return new r7(bArr, 0, bArr.length);
    }

    public static int c(int i2, int i3) {
        return b(i2) + c(i3);
    }

    public static int d(int i2) {
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

    private final void e(int i2) {
        byte b2 = (byte) i2;
        if (this.f12072a.hasRemaining()) {
            this.f12072a.put(b2);
            return;
        }
        throw new q7(this.f12072a.position(), this.f12072a.limit());
    }

    private r7(ByteBuffer byteBuffer) {
        this.f12072a = byteBuffer;
        this.f12072a.order(ByteOrder.LITTLE_ENDIAN);
    }

    public static int c(int i2) {
        if (i2 >= 0) {
            return d(i2);
        }
        return 10;
    }

    public final void a(int i2, boolean z) {
        a(i2, 0);
        byte b2 = z ? (byte) 1 : (byte) 0;
        if (this.f12072a.hasRemaining()) {
            this.f12072a.put(b2);
            return;
        }
        throw new q7(this.f12072a.position(), this.f12072a.limit());
    }

    public final void b(int i2, int i3) {
        a(i2, 0);
        if (i3 >= 0) {
            a(i3);
        } else {
            a(i3);
        }
    }

    public static int b(int i2, String str) {
        int b2 = b(i2);
        int a2 = a(str);
        return b2 + d(a2) + a2;
    }

    public final void a(int i2, String str) {
        a(i2, 2);
        try {
            int d2 = d(str.length());
            if (d2 == d(str.length() * 3)) {
                int position = this.f12072a.position();
                if (this.f12072a.remaining() >= d2) {
                    this.f12072a.position(position + d2);
                    a(str, this.f12072a);
                    int position2 = this.f12072a.position();
                    this.f12072a.position(position);
                    a((position2 - position) - d2);
                    this.f12072a.position(position2);
                    return;
                }
                throw new q7(position + d2, this.f12072a.limit());
            }
            a(a(str));
            a(str, this.f12072a);
        } catch (BufferOverflowException e2) {
            q7 q7Var = new q7(this.f12072a.position(), this.f12072a.limit());
            q7Var.initCause(e2);
            throw q7Var;
        }
    }

    public static int b(int i2, z7 z7Var) {
        int b2 = b(i2);
        int b3 = z7Var.b();
        return b2 + d(b3) + b3;
    }

    public static int b(int i2) {
        return d(i2 << 3);
    }

    public final void a(int i2, z7 z7Var) {
        a(i2, 2);
        if (z7Var.f12237a < 0) {
            z7Var.b();
        }
        a(z7Var.f12237a);
        z7Var.a(this);
    }

    public final void a(int i2, k5 k5Var) {
        if (this.f12073b == null) {
            this.f12073b = i3.a(this.f12072a);
            this.f12074c = this.f12072a.position();
        } else if (this.f12074c != this.f12072a.position()) {
            this.f12073b.b(this.f12072a.array(), this.f12074c, this.f12072a.position() - this.f12074c);
            this.f12074c = this.f12072a.position();
        }
        i3 i3Var = this.f12073b;
        i3Var.a(i2, k5Var);
        i3Var.a();
        this.f12074c = this.f12072a.position();
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

    public final void a(byte[] bArr) {
        int length = bArr.length;
        if (this.f12072a.remaining() >= length) {
            this.f12072a.put(bArr, 0, length);
            return;
        }
        throw new q7(this.f12072a.position(), this.f12072a.limit());
    }

    public final void a(int i2, int i3) {
        a((i2 << 3) | i3);
    }

    public final void a(int i2) {
        while ((i2 & (-128)) != 0) {
            e((i2 & 127) | 128);
            i2 >>>= 7;
        }
        e(i2);
    }

    public final void a(long j2) {
        while (((-128) & j2) != 0) {
            e((((int) j2) & 127) | 128);
            j2 >>>= 7;
        }
        e((int) j2);
    }
}
