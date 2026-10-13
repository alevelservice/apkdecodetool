package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
final class lc1 extends gc1 {
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00b9, code lost:
    
        return -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0061, code lost:
    
        return -1;
     */
    @Override // com.google.android.gms.internal.ads.gc1
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    final int a(int r16, byte[] r17, int r18, int r19) {
        /*
            Method dump skipped, instructions count: 222
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.lc1.a(int, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.gc1
    public final String b(byte[] bArr, int i2, int i3) {
        boolean a2;
        boolean a3;
        boolean b2;
        boolean c2;
        boolean a4;
        if ((i2 | i3 | ((bArr.length - i2) - i3)) >= 0) {
            int i4 = i2 + i3;
            char[] cArr = new char[i3];
            int i5 = 0;
            while (i2 < i4) {
                byte a5 = bc1.a(bArr, i2);
                a4 = hc1.a(a5);
                if (!a4) {
                    break;
                }
                i2++;
                hc1.a(a5, cArr, i5);
                i5++;
            }
            int i6 = i5;
            while (i2 < i4) {
                int i7 = i2 + 1;
                byte a6 = bc1.a(bArr, i2);
                a2 = hc1.a(a6);
                if (a2) {
                    int i8 = i6 + 1;
                    hc1.a(a6, cArr, i6);
                    while (i7 < i4) {
                        byte a7 = bc1.a(bArr, i7);
                        a3 = hc1.a(a7);
                        if (!a3) {
                            break;
                        }
                        i7++;
                        hc1.a(a7, cArr, i8);
                        i8++;
                    }
                    i2 = i7;
                    i6 = i8;
                } else {
                    b2 = hc1.b(a6);
                    if (!b2) {
                        c2 = hc1.c(a6);
                        if (c2) {
                            if (i7 < i4 - 1) {
                                int i9 = i7 + 1;
                                hc1.a(a6, bc1.a(bArr, i7), bc1.a(bArr, i9), cArr, i6);
                                i2 = i9 + 1;
                                i6++;
                            } else {
                                throw o91.zzbae();
                            }
                        } else if (i7 < i4 - 2) {
                            int i10 = i7 + 1;
                            byte a8 = bc1.a(bArr, i7);
                            int i11 = i10 + 1;
                            hc1.a(a6, a8, bc1.a(bArr, i10), bc1.a(bArr, i11), cArr, i6);
                            i2 = i11 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw o91.zzbae();
                        }
                    } else if (i7 < i4) {
                        hc1.a(a6, bc1.a(bArr, i7), cArr, i6);
                        i2 = i7 + 1;
                        i6++;
                    } else {
                        throw o91.zzbae();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.gc1
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
            bc1.a(bArr, j5, (byte) charAt);
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
                    bc1.a(bArr, j5, (byte) ((charAt3 >>> 6) | 960));
                    bc1.a(bArr, j7, (byte) ((charAt3 & '?') | 128));
                    j3 = j7 + j2;
                    j4 = j2;
                } else {
                    if ((charAt3 >= 55296 && 57343 >= charAt3) || j5 > j6 - 3) {
                        if (j5 <= j6 - 4) {
                            int i6 = i5 + 1;
                            if (i6 != length) {
                                char charAt4 = charSequence.charAt(i6);
                                if (Character.isSurrogatePair(charAt3, charAt4)) {
                                    int codePoint = Character.toCodePoint(charAt3, charAt4);
                                    long j8 = j5 + 1;
                                    bc1.a(bArr, j5, (byte) ((codePoint >>> 18) | 240));
                                    long j9 = j8 + 1;
                                    bc1.a(bArr, j8, (byte) (((codePoint >>> 12) & 63) | 128));
                                    long j10 = j9 + 1;
                                    bc1.a(bArr, j9, (byte) (((codePoint >>> 6) & 63) | 128));
                                    j4 = 1;
                                    j3 = j10 + 1;
                                    bc1.a(bArr, j10, (byte) ((codePoint & 63) | 128));
                                    i5 = i6;
                                } else {
                                    i5 = i6;
                                }
                            }
                            throw new ic1(i5 - 1, length);
                        }
                        if (55296 <= charAt3 && charAt3 <= 57343 && ((i4 = i5 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i4)))) {
                            throw new ic1(i5, length);
                        }
                        StringBuilder sb2 = new StringBuilder(46);
                        sb2.append("Failed writing ");
                        sb2.append(charAt3);
                        sb2.append(" at index ");
                        sb2.append(j5);
                        throw new ArrayIndexOutOfBoundsException(sb2.toString());
                    }
                    long j11 = j5 + j2;
                    bc1.a(bArr, j5, (byte) ((charAt3 >>> '\f') | 480));
                    long j12 = j11 + j2;
                    bc1.a(bArr, j11, (byte) (((charAt3 >>> 6) & 63) | 128));
                    bc1.a(bArr, j12, (byte) ((charAt3 & '?') | 128));
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
                bc1.a(bArr, j5, (byte) charAt3);
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
    @Override // com.google.android.gms.internal.ads.gc1
    public final void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        char c2;
        long j2;
        int i2;
        char charAt;
        long a2 = bc1.a(byteBuffer);
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
        int i3 = 0;
        while (true) {
            c2 = 128;
            if (i3 >= length || (charAt = charSequence.charAt(i3)) >= 128) {
                break;
            }
            bc1.a(position, (byte) charAt);
            i3++;
            position = 1 + position;
        }
        if (i3 == length) {
            byteBuffer.position((int) (position - a2));
            return;
        }
        while (i3 < length) {
            char charAt3 = charSequence.charAt(i3);
            if (charAt3 < c2 && position < limit) {
                bc1.a(position, (byte) charAt3);
                position++;
                j2 = a2;
            } else if (charAt3 >= 2048 || position > limit - 2) {
                j2 = a2;
                if ((charAt3 >= 55296 && 57343 >= charAt3) || position > limit - 3) {
                    if (position <= limit - 4) {
                        int i4 = i3 + 1;
                        if (i4 != length) {
                            char charAt4 = charSequence.charAt(i4);
                            if (Character.isSurrogatePair(charAt3, charAt4)) {
                                int codePoint = Character.toCodePoint(charAt3, charAt4);
                                long j3 = position + 1;
                                bc1.a(position, (byte) ((codePoint >>> 18) | 240));
                                long j4 = j3 + 1;
                                bc1.a(j3, (byte) (((codePoint >>> 12) & 63) | 128));
                                long j5 = j4 + 1;
                                bc1.a(j4, (byte) (((codePoint >>> 6) & 63) | 128));
                                long j6 = j5 + 1;
                                bc1.a(j5, (byte) ((codePoint & 63) | 128));
                                i3 = i4;
                                position = j6;
                            }
                        } else {
                            i4 = i3;
                        }
                        throw new ic1(i4 - 1, length);
                    }
                    if (55296 <= charAt3 && charAt3 <= 57343 && ((i2 = i3 + 1) == length || !Character.isSurrogatePair(charAt3, charSequence.charAt(i2)))) {
                        throw new ic1(i3, length);
                    }
                    StringBuilder sb2 = new StringBuilder(46);
                    sb2.append("Failed writing ");
                    sb2.append(charAt3);
                    sb2.append(" at index ");
                    sb2.append(position);
                    throw new ArrayIndexOutOfBoundsException(sb2.toString());
                }
                long j7 = position + 1;
                bc1.a(position, (byte) ((charAt3 >>> '\f') | 480));
                long j8 = j7 + 1;
                bc1.a(j7, (byte) (((charAt3 >>> 6) & 63) | 128));
                bc1.a(j8, (byte) ((charAt3 & '?') | 128));
                position = j8 + 1;
            } else {
                j2 = a2;
                long j9 = position + 1;
                bc1.a(position, (byte) ((charAt3 >>> 6) | 960));
                bc1.a(j9, (byte) ((charAt3 & '?') | 128));
                position = j9 + 1;
            }
            i3++;
            a2 = j2;
            c2 = 128;
        }
        byteBuffer.position((int) (position - a2));
    }

    private static int a(byte[] bArr, int i2, long j2, int i3) {
        int a2;
        int a3;
        int a4;
        if (i3 == 0) {
            a2 = fc1.a(i2);
            return a2;
        }
        if (i3 == 1) {
            a3 = fc1.a(i2, bc1.a(bArr, j2));
            return a3;
        }
        if (i3 == 2) {
            a4 = fc1.a(i2, bc1.a(bArr, j2), bc1.a(bArr, j2 + 1));
            return a4;
        }
        throw new AssertionError();
    }
}
