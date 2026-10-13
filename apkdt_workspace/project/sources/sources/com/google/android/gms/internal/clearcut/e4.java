package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class e4 extends b4 {
    private static int a(byte[] bArr, int i2, long j2, int i3) {
        int a2;
        int a3;
        int a4;
        if (i3 == 0) {
            a2 = a4.a(i2);
            return a2;
        }
        if (i3 == 1) {
            a3 = a4.a(i2, y3.a(bArr, j2));
            return a3;
        }
        if (i3 != 2) {
            throw new AssertionError();
        }
        a4 = a4.a(i2, y3.a(bArr, j2), y3.a(bArr, j2 + 1));
        return a4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b9, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0061, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.clearcut.b4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int a(int r16, byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.e4.a(int, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.b4
    public final int a(CharSequence charSequence, byte[] bArr, int i2, int i3) {
        char c2;
        long j2;
        long j3;
        long j4;
        int i4;
        char charAt;
        long j5 = i2;
        long j6 = i3 + j5;
        int length = charSequence.length();
        if (length > i3 || bArr.length - i3 < i2) {
            char charAt2 = charSequence.charAt(length - 1);
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(charAt2);
            sb.append(" at index ");
            sb.append(i2 + i3);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i5 = 0;
        while (true) {
            c2 = 128;
            j2 = 1;
            if (i5 >= length || (charAt = charSequence.charAt(i5)) >= 128) {
                break;
            }
            y3.a(bArr, j5, (byte) charAt);
            i5++;
            j5 = 1 + j5;
        }
        if (i5 == length) {
            return (int) j5;
        }
        while (i5 < length) {
            char charAt3 = charSequence.charAt(i5);
            if (charAt3 >= c2 || j5 >= j6) {
                if (charAt3 < 2048 && j5 <= j6 - 2) {
                    long j7 = j5 + j2;
                    y3.a(bArr, j5, (byte) ((charAt3 >>> 6) | 960));
                    y3.a(bArr, j7, (byte) ((charAt3 & '?') | 128));
                    j3 = j7 + j2;
                    j4 = j2;
                } else {
                    if ((charAt3 >= 55296 && 57343 >= charAt3) || j5 > j6 - 3) {
                        if (j5 > j6 - 4) {
                            if (55296 <= charAt3 && charAt3 <= 57343 && ((i4 = i5 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i4)))) {
                                throw new d4(i5, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(charAt3);
                            sb2.append(" at index ");
                            sb2.append(j5);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int i6 = i5 + 1;
                        if (i6 != length) {
                            char charAt4 = charSequence.charAt(i6);
                            if (Character.isSurrogatePair(charAt3, charAt4)) {
                                int codePoint = Character.toCodePoint(charAt3, charAt4);
                                long j8 = j5 + 1;
                                y3.a(bArr, j5, (byte) ((codePoint >>> 18) | 240));
                                long j9 = j8 + 1;
                                y3.a(bArr, j8, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j10 = j9 + 1;
                                y3.a(bArr, j9, (byte) (((codePoint >>> 6) & 63) | 128));
                                j4 = 1;
                                j3 = j10 + 1;
                                y3.a(bArr, j10, (byte) ((codePoint & 63) | 128));
                                i5 = i6;
                            } else {
                                i5 = i6;
                            }
                        }
                        throw new d4(i5 - 1, length);
                    }
                    long j11 = j5 + j2;
                    y3.a(bArr, j5, (byte) ((charAt3 >>> '\f') | 480));
                    long j12 = j11 + j2;
                    y3.a(bArr, j11, (byte) (((charAt3 >>> 6) & 63) | 128));
                    y3.a(bArr, j12, (byte) ((charAt3 & '?') | 128));
                    j3 = j12 + 1;
                    j4 = 1;
                }
                i5++;
                c2 = 128;
                long j13 = j4;
                j5 = j3;
                j2 = j13;
            } else {
                long j14 = j5 + j2;
                y3.a(bArr, j5, (byte) charAt3);
                j4 = j2;
                j3 = j14;
            }
            i5++;
            c2 = 128;
            long j132 = j4;
            j5 = j3;
            j2 = j132;
        }
        return (int) j5;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.b4
    public final void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        char c2;
        int i2;
        long j2;
        int i3;
        char charAt;
        ByteBuffer byteBuffer2 = byteBuffer;
        long a2 = y3.a(byteBuffer);
        long position = byteBuffer.position() + a2;
        long limit = byteBuffer.limit() + a2;
        int length = charSequence.length();
        if (length > limit - position) {
            char charAt2 = charSequence.charAt(length - 1);
            int limit2 = byteBuffer.limit();
            StringBuilder sb = new StringBuilder(37);
            sb.append("Failed writing ");
            sb.append(charAt2);
            sb.append(" at index ");
            sb.append(limit2);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        int i4 = 0;
        while (true) {
            c2 = 128;
            if (i4 >= length || (charAt = charSequence.charAt(i4)) >= 128) {
                break;
            }
            y3.a(position, (byte) charAt);
            i4++;
            position = 1 + position;
        }
        if (i4 == length) {
            i2 = (int) (position - a2);
        } else {
            while (i4 < length) {
                char charAt3 = charSequence.charAt(i4);
                if (charAt3 < c2 && position < limit) {
                    y3.a(position, (byte) charAt3);
                    position++;
                    j2 = a2;
                } else if (charAt3 >= 2048 || position > limit - 2) {
                    j2 = a2;
                    if ((charAt3 >= 55296 && 57343 >= charAt3) || position > limit - 3) {
                        if (position > limit - 4) {
                            if (55296 <= charAt3 && charAt3 <= 57343 && ((i3 = i4 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i3)))) {
                                throw new d4(i4, length);
                            }
                            StringBuilder sb2 = new StringBuilder(46);
                            sb2.append("Failed writing ");
                            sb2.append(charAt3);
                            sb2.append(" at index ");
                            sb2.append(position);
                            throw new ArrayIndexOutOfBoundsException(sb2.toString());
                        }
                        int i5 = i4 + 1;
                        if (i5 != length) {
                            char charAt4 = charSequence.charAt(i5);
                            if (Character.isSurrogatePair(charAt3, charAt4)) {
                                int codePoint = Character.toCodePoint(charAt3, charAt4);
                                long j3 = position + 1;
                                y3.a(position, (byte) ((codePoint >>> 18) | 240));
                                long j4 = j3 + 1;
                                y3.a(j3, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j5 = j4 + 1;
                                y3.a(j4, (byte) (((codePoint >>> 6) & 63) | 128));
                                long j6 = j5 + 1;
                                y3.a(j5, (byte) ((codePoint & 63) | 128));
                                i4 = i5;
                                position = j6;
                            }
                        } else {
                            i5 = i4;
                        }
                        throw new d4(i5 - 1, length);
                    }
                    long j7 = position + 1;
                    y3.a(position, (byte) ((charAt3 >>> '\f') | 480));
                    long j8 = j7 + 1;
                    y3.a(j7, (byte) (((charAt3 >>> 6) & 63) | 128));
                    y3.a(j8, (byte) ((charAt3 & '?') | 128));
                    position = j8 + 1;
                } else {
                    j2 = a2;
                    long j9 = position + 1;
                    y3.a(position, (byte) ((charAt3 >>> 6) | 960));
                    y3.a(j9, (byte) ((charAt3 & '?') | 128));
                    position = j9 + 1;
                }
                i4++;
                a2 = j2;
                c2 = 128;
            }
            i2 = (int) (position - a2);
            byteBuffer2 = byteBuffer;
        }
        byteBuffer2.position(i2);
    }
}
