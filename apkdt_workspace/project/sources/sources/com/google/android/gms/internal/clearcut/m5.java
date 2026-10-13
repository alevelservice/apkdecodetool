package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes.dex */
public final class m5 {
    private static int a(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    private static long a(long j2, long j3, long j4) {
        long j5 = (j2 ^ j3) * j4;
        long j6 = ((j5 ^ (j5 >>> 47)) ^ j3) * j4;
        return (j6 ^ (j6 >>> 47)) * j4;
    }

    public static long a(byte[] bArr) {
        int length = bArr.length;
        if (length < 0 || length > bArr.length) {
            StringBuilder sb = new StringBuilder(67);
            sb.append("Out of bound index with offput: 0 and length: ");
            sb.append(length);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        int i2 = 37;
        char c2 = 0;
        if (length <= 32) {
            if (length > 16) {
                long j2 = (length << 1) - 7286425919675154353L;
                long b2 = b(bArr, 0) * (-5435081209227447693L);
                long b3 = b(bArr, 8);
                int i3 = length + 0;
                long b4 = b(bArr, i3 - 8) * j2;
                return a(Long.rotateRight(b2 + b3, 43) + Long.rotateRight(b4, 30) + (b(bArr, i3 - 16) * (-7286425919675154353L)), b2 + Long.rotateRight(b3 - 7286425919675154353L, 18) + b4, j2);
            }
            if (length >= 8) {
                long j3 = (length << 1) - 7286425919675154353L;
                long b5 = b(bArr, 0) - 7286425919675154353L;
                long b6 = b(bArr, (length + 0) - 8);
                return a((Long.rotateRight(b6, 37) * j3) + b5, (Long.rotateRight(b5, 25) + b6) * j3, j3);
            }
            if (length >= 4) {
                return a(((a(bArr, 0) & 4294967295L) << 3) + length, a(bArr, (length + 0) - 4) & 4294967295L, (length << 1) - 7286425919675154353L);
            }
            if (length <= 0) {
                return -7286425919675154353L;
            }
            long j4 = (((bArr[0] & 255) + ((bArr[(length >> 1) + 0] & 255) << 8)) * (-7286425919675154353L)) ^ ((length + ((bArr[(length - 1) + 0] & 255) << 2)) * (-4348849565147123417L));
            return (j4 ^ (j4 >>> 47)) * (-7286425919675154353L);
        }
        if (length <= 64) {
            long j5 = (length << 1) - 7286425919675154353L;
            long b7 = b(bArr, 0) * (-7286425919675154353L);
            long b8 = b(bArr, 8);
            int i4 = length + 0;
            long b9 = b(bArr, i4 - 8) * j5;
            long rotateRight = Long.rotateRight(b7 + b8, 43) + Long.rotateRight(b9, 30) + (b(bArr, i4 - 16) * (-7286425919675154353L));
            long a2 = a(rotateRight, Long.rotateRight((-7286425919675154353L) + b8, 18) + b7 + b9, j5);
            long b10 = b(bArr, 16) * j5;
            long b11 = b(bArr, 24);
            long b12 = (rotateRight + b(bArr, i4 - 32)) * j5;
            return a(((a2 + b(bArr, i4 - 24)) * j5) + Long.rotateRight(b10 + b11, 43) + Long.rotateRight(b12, 30), b10 + Long.rotateRight(b11 + b7, 18) + b12, j5);
        }
        long j6 = 2480279821605975764L;
        long j7 = 1390051526045402406L;
        long[] jArr = new long[2];
        long[] jArr2 = new long[2];
        long b13 = b(bArr, 0) + 95310865018149119L;
        int i5 = length - 1;
        int i6 = ((i5 / 64) << 6) + 0;
        int i7 = i5 & 63;
        int i8 = (i6 + i7) - 63;
        int i9 = 0;
        while (true) {
            long rotateRight2 = Long.rotateRight(b13 + j6 + jArr[c2] + b(bArr, i9 + 8), i2) * (-5435081209227447693L);
            long rotateRight3 = Long.rotateRight(j6 + jArr[1] + b(bArr, i9 + 48), 42) * (-5435081209227447693L);
            long j8 = rotateRight2 ^ jArr2[1];
            long b14 = rotateRight3 + jArr[0] + b(bArr, i9 + 40);
            long rotateRight4 = Long.rotateRight(j7 + jArr2[0], 33) * (-5435081209227447693L);
            int i10 = i7;
            int i11 = i6;
            a(bArr, i9, jArr[1] * (-5435081209227447693L), j8 + jArr2[0], jArr);
            a(bArr, i9 + 32, rotateRight4 + jArr2[1], b14 + b(bArr, i9 + 16), jArr2);
            int i12 = i9 + 64;
            if (i12 == i11) {
                long j9 = (-5435081209227447693L) + ((255 & j8) << 1);
                jArr2[0] = jArr2[0] + i10;
                jArr[0] = jArr[0] + jArr2[0];
                jArr2[0] = jArr2[0] + jArr[0];
                long rotateRight5 = Long.rotateRight(rotateRight4 + b14 + jArr[0] + b(bArr, i8 + 8), 37) * j9;
                long rotateRight6 = Long.rotateRight(b14 + jArr[1] + b(bArr, i8 + 48), 42) * j9;
                long j10 = rotateRight5 ^ (jArr2[1] * 9);
                long b15 = rotateRight6 + (jArr[0] * 9) + b(bArr, i8 + 40);
                long rotateRight7 = Long.rotateRight(j8 + jArr2[0], 33) * j9;
                a(bArr, i8, jArr[1] * j9, j10 + jArr2[0], jArr);
                a(bArr, i8 + 32, jArr2[1] + rotateRight7, b15 + b(bArr, i8 + 16), jArr2);
                return a(a(jArr[0], jArr2[0], j9) + ((b15 ^ (b15 >>> 47)) * (-4348849565147123417L)) + j10, a(jArr[1], jArr2[1], j9) + rotateRight7, j9);
            }
            i9 = i12;
            i6 = i11;
            i7 = i10;
            j7 = j8;
            j6 = b14;
            b13 = rotateRight4;
            i2 = 37;
            c2 = 0;
        }
    }

    private static void a(byte[] bArr, int i2, long j2, long j3, long[] jArr) {
        long b2 = b(bArr, i2);
        long b3 = b(bArr, i2 + 8);
        long b4 = b(bArr, i2 + 16);
        long b5 = b(bArr, i2 + 24);
        long j4 = j2 + b2;
        long j5 = b3 + j4 + b4;
        long rotateRight = Long.rotateRight(j3 + j4 + b5, 21) + Long.rotateRight(j5, 44);
        jArr[0] = j5 + b5;
        jArr[1] = rotateRight + j4;
    }

    private static long b(byte[] bArr, int i2) {
        ByteBuffer wrap = ByteBuffer.wrap(bArr, i2, 8);
        wrap.order(ByteOrder.LITTLE_ENDIAN);
        return wrap.getLong();
    }
}
