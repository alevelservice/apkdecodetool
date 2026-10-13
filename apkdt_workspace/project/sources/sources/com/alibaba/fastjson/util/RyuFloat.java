package com.alibaba.fastjson.util;

import androidx.constraintlayout.core.widgets.analyzer.BasicMeasure;
import okhttp3.internal.http2.Http2Connection;
import org.eclipse.paho.client.mqttv3.internal.ClientDefaults;

/* loaded from: classes.dex */
public final class RyuFloat {
    private static final int[][] POW5_SPLIT = {new int[]{536870912, 0}, new int[]{671088640, 0}, new int[]{838860800, 0}, new int[]{1048576000, 0}, new int[]{655360000, 0}, new int[]{819200000, 0}, new int[]{1024000000, 0}, new int[]{640000000, 0}, new int[]{800000000, 0}, new int[]{Http2Connection.DEGRADED_PONG_TIMEOUT_NS, 0}, new int[]{625000000, 0}, new int[]{781250000, 0}, new int[]{976562500, 0}, new int[]{610351562, BasicMeasure.EXACTLY}, new int[]{762939453, ClientDefaults.MAX_MSG_SIZE}, new int[]{953674316, 872415232}, new int[]{596046447, 1619001344}, new int[]{745058059, 1486880768}, new int[]{931322574, 1321730048}, new int[]{582076609, 289210368}, new int[]{727595761, 898383872}, new int[]{909494701, 1659850752}, new int[]{568434188, 1305842176}, new int[]{710542735, 1632302720}, new int[]{888178419, 1503507488}, new int[]{555111512, 671256724}, new int[]{693889390, 839070905}, new int[]{867361737, 2122580455}, new int[]{542101086, 521306416}, new int[]{677626357, 1725374844}, new int[]{847032947, 546105819}, new int[]{1058791184, 145761362}, new int[]{661744490, 91100851}, new int[]{827180612, 1187617888}, new int[]{1033975765, 1484522360}, new int[]{646234853, 1196261931}, new int[]{807793566, 2032198326}, new int[]{1009741958, 1466506084}, new int[]{631088724, 379695390}, new int[]{788860905, 474619238}, new int[]{986076131, 1130144959}, new int[]{616297582, 437905143}, new int[]{770371977, 1621123253}, new int[]{962964972, 415791331}, new int[]{601853107, 1333611405}, new int[]{752316384, 1130143345}, new int[]{940395480, 1412679181}};
    private static final int[][] POW5_INV_SPLIT = {new int[]{ClientDefaults.MAX_MSG_SIZE, 1}, new int[]{214748364, 1717986919}, new int[]{171798691, 1803886265}, new int[]{137438953, 1013612282}, new int[]{219902325, 1192282922}, new int[]{175921860, 953826338}, new int[]{140737488, 763061070}, new int[]{225179981, 791400982}, new int[]{180143985, 203624056}, new int[]{144115188, 162899245}, new int[]{230584300, 1978625710}, new int[]{184467440, 1582900568}, new int[]{147573952, 1266320455}, new int[]{236118324, 308125809}, new int[]{188894659, 675997377}, new int[]{151115727, 970294631}, new int[]{241785163, 1981968139}, new int[]{193428131, 297084323}, new int[]{154742504, 1955654377}, new int[]{247588007, 1840556814}, new int[]{198070406, 613451992}, new int[]{158456325, 61264864}, new int[]{253530120, 98023782}, new int[]{202824096, 78419026}, new int[]{162259276, 1780722139}, new int[]{259614842, 1990161963}, new int[]{207691874, 733136111}, new int[]{166153499, 1016005619}, new int[]{265845599, 337118801}, new int[]{212676479, 699191770}, new int[]{170141183, 988850146}};

    public static String toString(float f) {
        char[] cArr = new char[15];
        return new String(cArr, 0, toString(f, cArr, 0));
    }

    public static int toString(float f, char[] cArr, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        boolean z2;
        int i6;
        int i7;
        boolean z3;
        boolean z4;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        if (Float.isNaN(f)) {
            int i13 = i + 1;
            cArr[i] = 'N';
            int i14 = i13 + 1;
            cArr[i13] = 'a';
            i12 = i14 + 1;
            cArr[i14] = 'N';
        } else {
            if (f == Float.POSITIVE_INFINITY) {
                int i15 = i + 1;
                cArr[i] = 'I';
                int i16 = i15 + 1;
                cArr[i15] = 'n';
                int i17 = i16 + 1;
                cArr[i16] = 'f';
                int i18 = i17 + 1;
                cArr[i17] = 'i';
                int i19 = i18 + 1;
                cArr[i18] = 'n';
                int i20 = i19 + 1;
                cArr[i19] = 'i';
                int i21 = i20 + 1;
                cArr[i20] = 't';
                cArr[i21] = 'y';
                return (i21 + 1) - i;
            }
            if (f == Float.NEGATIVE_INFINITY) {
                int i22 = i + 1;
                cArr[i] = '-';
                int i23 = i22 + 1;
                cArr[i22] = 'I';
                int i24 = i23 + 1;
                cArr[i23] = 'n';
                int i25 = i24 + 1;
                cArr[i24] = 'f';
                int i26 = i25 + 1;
                cArr[i25] = 'i';
                int i27 = i26 + 1;
                cArr[i26] = 'n';
                int i28 = i27 + 1;
                cArr[i27] = 'i';
                int i29 = i28 + 1;
                cArr[i28] = 't';
                i12 = i29 + 1;
                cArr[i29] = 'y';
            } else {
                int floatToIntBits = Float.floatToIntBits(f);
                if (floatToIntBits != 0) {
                    if (floatToIntBits == Integer.MIN_VALUE) {
                        int i30 = i + 1;
                        cArr[i] = '-';
                        int i31 = i30 + 1;
                        cArr[i30] = '0';
                        int i32 = i31 + 1;
                        cArr[i31] = '.';
                        cArr[i32] = '0';
                        return (i32 + 1) - i;
                    }
                    int i33 = (floatToIntBits >> 23) & 255;
                    int i34 = 8388607 & floatToIntBits;
                    if (i33 == 0) {
                        i2 = -149;
                    } else {
                        i2 = (i33 - 127) - 23;
                        i34 |= 8388608;
                    }
                    boolean z5 = floatToIntBits < 0;
                    boolean z6 = (i34 & 1) == 0;
                    int i35 = i34 * 4;
                    int i36 = i35 + 2;
                    int i37 = i35 - ((((long) i34) != 8388608 || i33 <= 1) ? 2 : 1);
                    int i38 = i2 - 2;
                    if (i38 >= 0) {
                        i7 = (int) ((i38 * 3010299) / 10000000);
                        int i39 = i7 == 0 ? 1 : (int) ((((i7 * 23219280) + 10000000) - 1) / 10000000);
                        int i40 = (-i38) + i7;
                        int[][] iArr = POW5_INV_SPLIT;
                        int[] iArr2 = iArr[i7];
                        long j = iArr2[0];
                        long j2 = iArr2[1];
                        long j3 = i35;
                        int i41 = (((i39 + 59) - 1) + i40) - 31;
                        z = z6;
                        int i42 = i35;
                        int i43 = (int) (((j3 * j) + ((j3 * j2) >> 31)) >> i41);
                        long j4 = i36;
                        i6 = (int) (((j4 * j) + ((j4 * j2) >> 31)) >> i41);
                        long j5 = i37;
                        i8 = (int) (((j * j5) + ((j5 * j2) >> 31)) >> i41);
                        if (i7 == 0 || (i6 - 1) / 10 > i8 / 10) {
                            i5 = 0;
                        } else {
                            int i44 = i7 - 1;
                            int i45 = (i40 - 1) + (((i44 == 0 ? 1 : (int) ((((i44 * 23219280) + 10000000) - 1) / 10000000)) + 59) - 1);
                            int[] iArr3 = iArr[i44];
                            i5 = (int) ((((iArr3[0] * j3) + ((iArr3[1] * j3) >> 31)) >> (i45 - 31)) % 10);
                        }
                        int i46 = 0;
                        while (i36 > 0 && i36 % 5 == 0) {
                            i36 /= 5;
                            i46++;
                        }
                        int i47 = 0;
                        while (i42 > 0 && i42 % 5 == 0) {
                            i42 /= 5;
                            i47++;
                        }
                        int i48 = 0;
                        while (i37 > 0 && i37 % 5 == 0) {
                            i37 /= 5;
                            i48++;
                        }
                        z3 = i46 >= i7;
                        boolean z7 = i47 >= i7;
                        z4 = i48 >= i7;
                        z2 = z7;
                        i3 = i43;
                        i4 = 0;
                    } else {
                        z = z6;
                        int i49 = -i38;
                        int i50 = (int) ((i49 * 6989700) / 10000000);
                        int i51 = i49 - i50;
                        int[][] iArr4 = POW5_SPLIT;
                        int[] iArr5 = iArr4[i51];
                        long j6 = iArr5[0];
                        long j7 = iArr5[1];
                        int i52 = (i50 - ((i51 == 0 ? 1 : (int) ((((i51 * 23219280) + 10000000) - 1) / 10000000)) - 61)) - 31;
                        long j8 = i35;
                        i3 = (int) (((j8 * j6) + ((j8 * j7) >> 31)) >> i52);
                        long j9 = i36;
                        int i53 = (int) (((j9 * j6) + ((j9 * j7) >> 31)) >> i52);
                        long j10 = i37;
                        int i54 = (int) (((j6 * j10) + ((j10 * j7) >> 31)) >> i52);
                        if (i50 == 0 || (i53 - 1) / 10 > i54 / 10) {
                            i4 = 0;
                            i5 = 0;
                        } else {
                            int i55 = i51 + 1;
                            int i56 = i50 - 1;
                            int i57 = i55 == 0 ? 1 : (int) ((((i55 * 23219280) + 10000000) - 1) / 10000000);
                            int[] iArr6 = iArr4[i55];
                            i4 = 0;
                            i5 = (int) ((((iArr6[0] * j8) + ((iArr6[1] * j8) >> 31)) >> ((i56 - (i57 - 61)) - 31)) % 10);
                        }
                        int i58 = i38 + i50;
                        boolean z8 = 1 >= i50;
                        z2 = i50 < 23 && (((1 << (i50 + (-1))) - 1) & i35) == 0;
                        boolean z9 = (i37 % 2 == 1 ? 0 : 1) >= i50;
                        i6 = i53;
                        i7 = i58;
                        z3 = z8;
                        z4 = z9;
                        i8 = i54;
                    }
                    int i59 = Http2Connection.DEGRADED_PONG_TIMEOUT_NS;
                    int i60 = 10;
                    while (i60 > 0 && i6 < i59) {
                        i59 /= 10;
                        i60--;
                    }
                    int i61 = (i7 + i60) - 1;
                    boolean z10 = i61 < -3 || i61 >= 7;
                    if (z3 && !z) {
                        i6--;
                    }
                    int i62 = 0;
                    while (true) {
                        int i63 = i6 / 10;
                        int i64 = i8 / 10;
                        if (i63 <= i64 || (i6 < 100 && z10)) {
                            break;
                        }
                        z4 &= i8 % 10 == 0;
                        i5 = i3 % 10;
                        i3 /= 10;
                        i62++;
                        i6 = i63;
                        i8 = i64;
                    }
                    if (z4 && z) {
                        while (i8 % 10 == 0 && (i6 >= 100 || !z10)) {
                            i6 /= 10;
                            i5 = i3 % 10;
                            i3 /= 10;
                            i8 /= 10;
                            i62++;
                        }
                    }
                    int i65 = i3;
                    if (z2 && i5 == 5 && i65 % 2 == 0) {
                        i5 = 4;
                    }
                    int i66 = i65 + (((i65 != i8 || (z4 && z)) && i5 < 5) ? 0 : 1);
                    int i67 = i60 - i62;
                    if (z5) {
                        i9 = i + 1;
                        cArr[i] = '-';
                    } else {
                        i9 = i;
                    }
                    if (z10) {
                        while (i4 < i67 - 1) {
                            int i68 = i66 % 10;
                            i66 /= 10;
                            cArr[(i9 + i67) - i4] = (char) (i68 + 48);
                            i4++;
                        }
                        cArr[i9] = (char) ((i66 % 10) + 48);
                        cArr[i9 + 1] = '.';
                        int i69 = i9 + i67 + 1;
                        if (i67 == 1) {
                            cArr[i69] = '0';
                            i69++;
                        }
                        int i70 = i69 + 1;
                        cArr[i69] = 'E';
                        if (i61 < 0) {
                            cArr[i70] = '-';
                            i61 = -i61;
                            i70++;
                        }
                        if (i61 >= 10) {
                            i11 = 48;
                            cArr[i70] = (char) ((i61 / 10) + 48);
                            i70++;
                        } else {
                            i11 = 48;
                        }
                        i10 = i70 + 1;
                        cArr[i70] = (char) ((i61 % 10) + i11);
                    } else {
                        int i71 = 48;
                        if (i61 < 0) {
                            int i72 = i9 + 1;
                            cArr[i9] = '0';
                            int i73 = i72 + 1;
                            cArr[i72] = '.';
                            int i74 = -1;
                            while (i74 > i61) {
                                cArr[i73] = '0';
                                i74--;
                                i73++;
                            }
                            int i75 = i73;
                            while (i4 < i67) {
                                cArr[((i73 + i67) - i4) - 1] = (char) ((i66 % 10) + i71);
                                i66 /= 10;
                                i75++;
                                i4++;
                                i71 = 48;
                            }
                            i10 = i75;
                        } else {
                            int i76 = i61 + 1;
                            if (i76 >= i67) {
                                while (i4 < i67) {
                                    cArr[((i9 + i67) - i4) - 1] = (char) ((i66 % 10) + 48);
                                    i66 /= 10;
                                    i4++;
                                }
                                int i77 = i9 + i67;
                                while (i67 < i76) {
                                    cArr[i77] = '0';
                                    i67++;
                                    i77++;
                                }
                                int i78 = i77 + 1;
                                cArr[i77] = '.';
                                i10 = i78 + 1;
                                cArr[i78] = '0';
                            } else {
                                int i79 = i9 + 1;
                                while (i4 < i67) {
                                    if ((i67 - i4) - 1 == i61) {
                                        cArr[((i79 + i67) - i4) - 1] = '.';
                                        i79--;
                                    }
                                    cArr[((i79 + i67) - i4) - 1] = (char) ((i66 % 10) + 48);
                                    i66 /= 10;
                                    i4++;
                                }
                                i10 = i9 + i67 + 1;
                            }
                        }
                    }
                    return i10 - i;
                }
                int i80 = i + 1;
                cArr[i] = '0';
                int i81 = i80 + 1;
                cArr[i80] = '.';
                i12 = i81 + 1;
                cArr[i81] = '0';
            }
        }
        return i12 - i;
    }
}
