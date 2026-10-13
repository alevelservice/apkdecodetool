package com.alibaba.fastjson.util;

import java.lang.reflect.Array;
import java.math.BigInteger;
import okhttp3.internal.connection.RealConnection;
import org.objectweb.asm.Opcodes;

/* loaded from: classes.dex */
public final class RyuDouble {
    private static final int[][] POW5_SPLIT = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 326, 4);
    private static final int[][] POW5_INV_SPLIT = (int[][]) Array.newInstance((Class<?>) Integer.TYPE, 291, 4);

    static {
        BigInteger subtract = BigInteger.ONE.shiftLeft(31).subtract(BigInteger.ONE);
        BigInteger subtract2 = BigInteger.ONE.shiftLeft(31).subtract(BigInteger.ONE);
        int i = 0;
        while (i < 326) {
            BigInteger pow = BigInteger.valueOf(5L).pow(i);
            int bitLength = pow.bitLength();
            int i2 = i == 0 ? 1 : (int) ((((i * 23219280) + 10000000) - 1) / 10000000);
            if (i2 != bitLength) {
                throw new IllegalStateException(bitLength + " != " + i2);
            }
            if (i < POW5_SPLIT.length) {
                for (int i3 = 0; i3 < 4; i3++) {
                    POW5_SPLIT[i][i3] = pow.shiftRight((bitLength - 121) + ((3 - i3) * 31)).and(subtract).intValue();
                }
            }
            if (i < POW5_INV_SPLIT.length) {
                BigInteger add = BigInteger.ONE.shiftLeft(bitLength + Opcodes.LSHL).divide(pow).add(BigInteger.ONE);
                for (int i4 = 0; i4 < 4; i4++) {
                    if (i4 == 0) {
                        POW5_INV_SPLIT[i][i4] = add.shiftRight((3 - i4) * 31).intValue();
                    } else {
                        POW5_INV_SPLIT[i][i4] = add.shiftRight((3 - i4) * 31).and(subtract2).intValue();
                    }
                }
            }
            i++;
        }
    }

    public static String toString(double d) {
        char[] cArr = new char[24];
        return new String(cArr, 0, toString(d, cArr, 0));
    }

    public static int toString(double d, char[] cArr, int i) {
        int i2;
        boolean z;
        boolean z2;
        long j;
        long j2;
        int i3;
        long j3;
        boolean z3;
        boolean z4;
        long j4;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        if (!Double.isNaN(d)) {
            if (d == Double.POSITIVE_INFINITY) {
                int i13 = i + 1;
                cArr[i] = 'I';
                int i14 = i13 + 1;
                cArr[i13] = 'n';
                int i15 = i14 + 1;
                cArr[i14] = 'f';
                int i16 = i15 + 1;
                cArr[i15] = 'i';
                int i17 = i16 + 1;
                cArr[i16] = 'n';
                int i18 = i17 + 1;
                cArr[i17] = 'i';
                int i19 = i18 + 1;
                cArr[i18] = 't';
                i12 = i19 + 1;
                cArr[i19] = 'y';
            } else if (d == Double.NEGATIVE_INFINITY) {
                int i20 = i + 1;
                cArr[i] = '-';
                int i21 = i20 + 1;
                cArr[i20] = 'I';
                int i22 = i21 + 1;
                cArr[i21] = 'n';
                int i23 = i22 + 1;
                cArr[i22] = 'f';
                int i24 = i23 + 1;
                cArr[i23] = 'i';
                int i25 = i24 + 1;
                cArr[i24] = 'n';
                int i26 = i25 + 1;
                cArr[i25] = 'i';
                int i27 = i26 + 1;
                cArr[i26] = 't';
                i8 = i27 + 1;
                cArr[i27] = 'y';
            } else {
                long doubleToLongBits = Double.doubleToLongBits(d);
                if (doubleToLongBits == 0) {
                    int i28 = i + 1;
                    cArr[i] = '0';
                    int i29 = i28 + 1;
                    cArr[i28] = '.';
                    i8 = i29 + 1;
                    cArr[i29] = '0';
                } else if (doubleToLongBits == Long.MIN_VALUE) {
                    int i30 = i + 1;
                    cArr[i] = '-';
                    int i31 = i30 + 1;
                    cArr[i30] = '0';
                    int i32 = i31 + 1;
                    cArr[i31] = '.';
                    i12 = i32 + 1;
                    cArr[i32] = '0';
                } else {
                    int i33 = (int) ((doubleToLongBits >>> 52) & 2047);
                    long j5 = doubleToLongBits & 4503599627370495L;
                    if (i33 == 0) {
                        i2 = -1074;
                    } else {
                        i2 = (i33 - 1023) - 52;
                        j5 |= 4503599627370496L;
                    }
                    boolean z5 = doubleToLongBits < 0;
                    boolean z6 = (j5 & 1) == 0;
                    long j6 = 4 * j5;
                    long j7 = j6 + 2;
                    int i34 = (j5 != 4503599627370496L || i33 <= 1) ? 1 : 0;
                    long j8 = (j6 - 1) - i34;
                    int i35 = i2 - 2;
                    if (i35 >= 0) {
                        int max = Math.max(0, ((int) ((i35 * 3010299) / 10000000)) - 1);
                        int i36 = ((((-i35) + max) + (((max == 0 ? 1 : (int) ((((max * 23219280) + 10000000) - 1) / 10000000)) + 122) - 1)) - 93) - 21;
                        if (i36 < 0) {
                            throw new IllegalArgumentException("" + i36);
                        }
                        int[] iArr = POW5_INV_SPLIT[max];
                        long j9 = j6 >>> 31;
                        long j10 = j6 & 2147483647L;
                        int i37 = iArr[0];
                        z = z5;
                        int i38 = iArr[1];
                        int i39 = iArr[2];
                        int i40 = iArr[3];
                        z2 = z6;
                        long j11 = ((((((((((((j10 * i40) >>> 31) + (i39 * j10)) + (j9 * i40)) >>> 31) + (i38 * j10)) + (i39 * j9)) >>> 31) + (i37 * j10)) + (i38 * j9)) >>> 21) + ((i37 * j9) << 10)) >>> i36;
                        long j12 = j7 >>> 31;
                        long j13 = j7 & 2147483647L;
                        i3 = max;
                        long j14 = ((((((((((((j13 * i40) >>> 31) + (i39 * j13)) + (j12 * i40)) >>> 31) + (i38 * j13)) + (i39 * j12)) >>> 31) + (i37 * j13)) + (i38 * j12)) >>> 21) + ((i37 * j12) << 10)) >>> i36;
                        long j15 = j8 >>> 31;
                        long j16 = j8 & 2147483647L;
                        j3 = j14;
                        j2 = ((((((((((((j16 * i40) >>> 31) + (i39 * j16)) + (j15 * i40)) >>> 31) + (i38 * j16)) + (i39 * j15)) >>> 31) + (i37 * j16)) + (i38 * j15)) >>> 21) + ((i37 * j15) << 10)) >>> i36;
                        if (i3 <= 21) {
                            long j17 = j6 % 5;
                            if (j17 == 0) {
                                if (j17 != 0) {
                                    i11 = 0;
                                } else if (j6 % 25 != 0) {
                                    i11 = 1;
                                } else if (j6 % 125 != 0) {
                                    i11 = 2;
                                } else if (j6 % 625 != 0) {
                                    i11 = 3;
                                } else {
                                    long j18 = j6 / 625;
                                    i11 = 4;
                                    for (long j19 = 0; j18 > j19 && j18 % 5 == j19; j19 = 0) {
                                        j18 /= 5;
                                        i11++;
                                    }
                                }
                                z4 = i11 >= i3;
                                z3 = false;
                                j = j11;
                            } else if (z2) {
                                if (j8 % 5 != 0) {
                                    i10 = 0;
                                } else if (j8 % 25 != 0) {
                                    i10 = 1;
                                } else if (j8 % 125 != 0) {
                                    i10 = 2;
                                } else if (j8 % 625 != 0) {
                                    i10 = 3;
                                } else {
                                    long j20 = j8 / 625;
                                    i10 = 4;
                                    for (long j21 = 0; j20 > j21 && j20 % 5 == j21; j21 = 0) {
                                        j20 /= 5;
                                        i10++;
                                    }
                                }
                                if (i10 >= i3) {
                                    z3 = true;
                                    z4 = false;
                                    j = j11;
                                }
                            } else {
                                if (j7 % 5 != 0) {
                                    i9 = 0;
                                } else if (j7 % 25 != 0) {
                                    i9 = 1;
                                } else if (j7 % 125 != 0) {
                                    i9 = 2;
                                } else if (j7 % 625 != 0) {
                                    i9 = 3;
                                } else {
                                    long j22 = j7 / 625;
                                    i9 = 4;
                                    for (long j23 = 0; j22 > j23 && j22 % 5 == j23; j23 = 0) {
                                        j22 /= 5;
                                        i9++;
                                    }
                                }
                                if (i9 >= i3) {
                                    j3--;
                                }
                            }
                        }
                        z3 = false;
                        z4 = false;
                        j = j11;
                    } else {
                        z = z5;
                        z2 = z6;
                        int i41 = -i35;
                        int max2 = Math.max(0, ((int) ((i41 * 6989700) / 10000000)) - 1);
                        int i42 = i41 - max2;
                        int i43 = ((max2 - ((i42 == 0 ? 1 : (int) ((((i42 * 23219280) + 10000000) - 1) / 10000000)) - 121)) - 93) - 21;
                        if (i43 < 0) {
                            throw new IllegalArgumentException("" + i43);
                        }
                        int[] iArr2 = POW5_SPLIT[i42];
                        long j24 = j6 >>> 31;
                        long j25 = j6 & 2147483647L;
                        int i44 = iArr2[0];
                        int i45 = iArr2[1];
                        int i46 = i34;
                        int i47 = iArr2[2];
                        int i48 = iArr2[3];
                        long j26 = ((((((((((((j25 * i48) >>> 31) + (i47 * j25)) + (j24 * i48)) >>> 31) + (i45 * j25)) + (i47 * j24)) >>> 31) + (i44 * j25)) + (i45 * j24)) >>> 21) + ((i44 * j24) << 10)) >>> i43;
                        long j27 = j7 >>> 31;
                        long j28 = j7 & 2147483647L;
                        j = j26;
                        long j29 = ((((((((((((j28 * i48) >>> 31) + (i47 * j28)) + (j27 * i48)) >>> 31) + (i45 * j28)) + (i47 * j27)) >>> 31) + (i44 * j28)) + (i45 * j27)) >>> 21) + ((i44 * j27) << 10)) >>> i43;
                        long j30 = j8 >>> 31;
                        long j31 = j8 & 2147483647L;
                        j2 = ((((((((((((j31 * i48) >>> 31) + (i47 * j31)) + (j30 * i48)) >>> 31) + (i45 * j31)) + (i47 * j30)) >>> 31) + (i44 * j31)) + (i45 * j30)) >>> 21) + ((i44 * j30) << 10)) >>> i43;
                        i3 = max2 + i35;
                        if (max2 <= 1) {
                            if (z2) {
                                j3 = j29;
                                z3 = i46 == 1;
                            } else {
                                j3 = j29 - 1;
                                z3 = false;
                            }
                            z4 = true;
                        } else if (max2 < 63) {
                            z4 = (j6 & ((1 << (max2 - 1)) - 1)) == 0;
                            j3 = j29;
                            z3 = false;
                        } else {
                            j3 = j29;
                            z3 = false;
                            z4 = false;
                        }
                    }
                    int i49 = j3 >= 1000000000000000000L ? 19 : j3 >= 100000000000000000L ? 18 : j3 >= 10000000000000000L ? 17 : j3 >= 1000000000000000L ? 16 : j3 >= 100000000000000L ? 15 : j3 >= 10000000000000L ? 14 : j3 >= 1000000000000L ? 13 : j3 >= 100000000000L ? 12 : j3 >= RealConnection.IDLE_CONNECTION_HEALTHY_NS ? 11 : j3 >= 1000000000 ? 10 : j3 >= 100000000 ? 9 : j3 >= 10000000 ? 8 : j3 >= 1000000 ? 7 : j3 >= 100000 ? 6 : j3 >= 10000 ? 5 : j3 >= 1000 ? 4 : j3 >= 100 ? 3 : j3 >= 10 ? 2 : 1;
                    int i50 = (i3 + i49) - 1;
                    boolean z7 = i50 < -3 || i50 >= 7;
                    if (z3 || z4) {
                        boolean z8 = z3;
                        boolean z9 = z4;
                        int i51 = 0;
                        int i52 = 0;
                        while (true) {
                            long j32 = j3 / 10;
                            long j33 = j2 / 10;
                            if (j32 <= j33 || (j3 < 100 && z7)) {
                                break;
                            }
                            z8 &= j2 % 10 == 0;
                            z9 &= i51 == 0;
                            i51 = (int) (j % 10);
                            j /= 10;
                            i52++;
                            j3 = j32;
                            j2 = j33;
                        }
                        if (z8 && z2) {
                            while (j2 % 10 == 0 && (j3 >= 100 || !z7)) {
                                z9 &= i51 == 0;
                                i51 = (int) (j % 10);
                                j3 /= 10;
                                j /= 10;
                                j2 /= 10;
                                i52++;
                            }
                        }
                        if (z9 && i51 == 5 && j % 2 == 0) {
                            i51 = 4;
                        }
                        j4 = j + (((j != j2 || (z8 && z2)) && i51 < 5) ? 0 : 1);
                        i4 = i52;
                    } else {
                        i4 = 0;
                        int i53 = 0;
                        while (true) {
                            long j34 = j3 / 10;
                            long j35 = j2 / 10;
                            if (j34 <= j35 || (j3 < 100 && z7)) {
                                break;
                            }
                            i53 = (int) (j % 10);
                            j /= 10;
                            i4++;
                            j3 = j34;
                            j2 = j35;
                        }
                        j4 = j + ((j == j2 || i53 >= 5) ? 1 : 0);
                    }
                    int i54 = i49 - i4;
                    if (z) {
                        i5 = i + 1;
                        cArr[i] = '-';
                    } else {
                        i5 = i;
                    }
                    if (!z7) {
                        char c = '0';
                        if (i50 < 0) {
                            int i55 = i5 + 1;
                            cArr[i5] = '0';
                            int i56 = i55 + 1;
                            cArr[i55] = '.';
                            int i57 = -1;
                            while (i57 > i50) {
                                cArr[i56] = c;
                                i57--;
                                i56++;
                                c = '0';
                            }
                            i6 = i56;
                            for (int i58 = 0; i58 < i54; i58++) {
                                cArr[((i56 + i54) - i58) - 1] = (char) ((j4 % 10) + 48);
                                j4 /= 10;
                                i6++;
                            }
                        } else {
                            int i59 = i50 + 1;
                            if (i59 >= i54) {
                                for (int i60 = 0; i60 < i54; i60++) {
                                    cArr[((i5 + i54) - i60) - 1] = (char) ((j4 % 10) + 48);
                                    j4 /= 10;
                                }
                                int i61 = i5 + i54;
                                while (i54 < i59) {
                                    cArr[i61] = '0';
                                    i54++;
                                    i61++;
                                }
                                int i62 = i61 + 1;
                                cArr[i61] = '.';
                                i6 = i62 + 1;
                                cArr[i62] = '0';
                            } else {
                                int i63 = i5 + 1;
                                for (int i64 = 0; i64 < i54; i64++) {
                                    if ((i54 - i64) - 1 == i50) {
                                        cArr[((i63 + i54) - i64) - 1] = '.';
                                        i63--;
                                    }
                                    cArr[((i63 + i54) - i64) - 1] = (char) ((j4 % 10) + 48);
                                    j4 /= 10;
                                }
                                i6 = i5 + i54 + 1;
                            }
                        }
                        return i6 - i;
                    }
                    for (int i65 = 0; i65 < i54 - 1; i65++) {
                        int i66 = (int) (j4 % 10);
                        j4 /= 10;
                        cArr[(i5 + i54) - i65] = (char) (i66 + 48);
                    }
                    cArr[i5] = (char) ((j4 % 10) + 48);
                    cArr[i5 + 1] = '.';
                    int i67 = i5 + i54 + 1;
                    if (i54 == 1) {
                        cArr[i67] = '0';
                        i67++;
                    }
                    int i68 = i67 + 1;
                    cArr[i67] = 'E';
                    if (i50 < 0) {
                        cArr[i68] = '-';
                        i50 = -i50;
                        i68++;
                    }
                    if (i50 >= 100) {
                        int i69 = i68 + 1;
                        i7 = 48;
                        cArr[i68] = (char) ((i50 / 100) + 48);
                        i50 %= 100;
                        i68 = i69 + 1;
                        cArr[i69] = (char) ((i50 / 10) + 48);
                    } else {
                        i7 = 48;
                        if (i50 >= 10) {
                            cArr[i68] = (char) ((i50 / 10) + 48);
                            i68++;
                        }
                    }
                    i8 = i68 + 1;
                    cArr[i68] = (char) ((i50 % 10) + i7);
                }
            }
            return i12 - i;
        }
        int i70 = i + 1;
        cArr[i] = 'N';
        int i71 = i70 + 1;
        cArr[i70] = 'a';
        i8 = i71 + 1;
        cArr[i71] = 'N';
        return i8 - i;
    }
}
