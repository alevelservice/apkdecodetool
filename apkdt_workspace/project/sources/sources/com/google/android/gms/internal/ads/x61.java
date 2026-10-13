package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class x61 {
    private static long a(byte[] bArr, int i2) {
        return (((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16)) & 4294967295L;
    }

    private static long a(byte[] bArr, int i2, int i3) {
        return (a(bArr, i2) >> i3) & 67108863;
    }

    private static void a(byte[] bArr, long j2, int i2) {
        int i3 = 0;
        while (i3 < 4) {
            bArr[i2 + i3] = (byte) (255 & j2);
            i3++;
            j2 >>= 8;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length == 32) {
            long a2 = a(bArr, 0, 0) & 67108863;
            int i2 = 2;
            int i3 = 3;
            long a3 = a(bArr, 3, 2) & 67108611;
            long a4 = a(bArr, 6, 4) & 67092735;
            long a5 = a(bArr, 9, 6) & 66076671;
            long a6 = a(bArr, 12, 8) & 1048575;
            long j2 = a3 * 5;
            long j3 = a4 * 5;
            long j4 = a5 * 5;
            long j5 = a6 * 5;
            byte[] bArr3 = new byte[17];
            long j6 = 0;
            long j7 = 0;
            long j8 = 0;
            long j9 = 0;
            long j10 = 0;
            int i4 = 0;
            while (i4 < bArr2.length) {
                int min = Math.min(16, bArr2.length - i4);
                System.arraycopy(bArr2, i4, bArr3, 0, min);
                bArr3[min] = 1;
                if (min != 16) {
                    Arrays.fill(bArr3, min + 1, 17, (byte) 0);
                }
                long a7 = j10 + a(bArr3, 0, 0);
                long a8 = j6 + a(bArr3, i3, i2);
                long a9 = j7 + a(bArr3, 6, 4);
                long a10 = j8 + a(bArr3, 9, 6);
                long a11 = j9 + (a(bArr3, 12, 8) | (bArr3[16] << 24));
                long j11 = (a7 * a2) + (a8 * j5) + (a9 * j4) + (a10 * j3) + (a11 * j2);
                long j12 = (a7 * a3) + (a8 * a2) + (a9 * j5) + (a10 * j4) + (a11 * j3);
                long j13 = (a7 * a4) + (a8 * a3) + (a9 * a2) + (a10 * j5) + (a11 * j4);
                long j14 = (a7 * a5) + (a8 * a4) + (a9 * a3) + (a10 * a2) + (a11 * j5);
                long j15 = j12 + (j11 >> 26);
                long j16 = j13 + (j15 >> 26);
                long j17 = j14 + (j16 >> 26);
                long j18 = (a7 * a6) + (a8 * a5) + (a9 * a4) + (a10 * a3) + (a11 * a2) + (j17 >> 26);
                long j19 = (j11 & 67108863) + ((j18 >> 26) * 5);
                j6 = (j15 & 67108863) + (j19 >> 26);
                i4 += 16;
                j7 = j16 & 67108863;
                j8 = j17 & 67108863;
                j9 = j18 & 67108863;
                j10 = j19 & 67108863;
                i2 = 2;
                i3 = 3;
            }
            long j20 = j7 + (j6 >> 26);
            long j21 = j20 & 67108863;
            long j22 = j8 + (j20 >> 26);
            long j23 = j22 & 67108863;
            long j24 = j9 + (j22 >> 26);
            long j25 = j24 & 67108863;
            long j26 = j10 + ((j24 >> 26) * 5);
            long j27 = j26 & 67108863;
            long j28 = (j6 & 67108863) + (j26 >> 26);
            long j29 = j27 + 5;
            long j30 = j29 & 67108863;
            long j31 = (j29 >> 26) + j28;
            long j32 = j21 + (j31 >> 26);
            long j33 = j23 + (j32 >> 26);
            long j34 = j33 & 67108863;
            long j35 = (j25 + (j33 >> 26)) - 67108864;
            long j36 = j35 >> 63;
            long j37 = j27 & j36;
            long j38 = j28 & j36;
            long j39 = j21 & j36;
            long j40 = j23 & j36;
            long j41 = j25 & j36;
            long j42 = j36 ^ (-1);
            long j43 = (j31 & 67108863 & j42) | j38;
            long j44 = (j32 & 67108863 & j42) | j39;
            long j45 = (j34 & j42) | j40;
            long j46 = (j35 & j42) | j41;
            long j47 = ((j43 << 26) | j37 | (j30 & j42)) & 4294967295L;
            long j48 = ((j43 >> 6) | (j44 << 20)) & 4294967295L;
            long j49 = ((j44 >> 12) | (j45 << 14)) & 4294967295L;
            long j50 = ((j45 >> 18) | (j46 << 8)) & 4294967295L;
            long a12 = j47 + a(bArr, 16);
            long j51 = a12 & 4294967295L;
            long a13 = j48 + a(bArr, 20) + (a12 >> 32);
            long j52 = a13 & 4294967295L;
            long a14 = j49 + a(bArr, 24) + (a13 >> 32);
            long j53 = a14 & 4294967295L;
            long a15 = (j50 + a(bArr, 28) + (a14 >> 32)) & 4294967295L;
            byte[] bArr4 = new byte[16];
            a(bArr4, j51, 0);
            a(bArr4, j52, 4);
            a(bArr4, j53, 8);
            a(bArr4, a15, 12);
            return bArr4;
        }
        throw new IllegalArgumentException("The key length in bytes must be 32.");
    }
}
