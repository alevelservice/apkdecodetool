package com.google.android.gms.internal.vision;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public final class e3 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2, g3 g3Var) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            g3Var.f12351a = b2;
            return i3;
        }
        return a(b2, bArr, i3, g3Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i2, g3 g3Var) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            g3Var.f12352b = j2;
            return i3;
        }
        int i4 = i3 + 1;
        byte b2 = bArr[i3];
        long j3 = (j2 & 127) | ((b2 & Byte.MAX_VALUE) << 7);
        int i5 = 7;
        while (b2 < 0) {
            int i6 = i4 + 1;
            i5 += 7;
            j3 |= (r10 & Byte.MAX_VALUE) << i5;
            b2 = bArr[i4];
            i4 = i6;
        }
        g3Var.f12352b = j3;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double c(byte[] bArr, int i2) {
        return Double.longBitsToDouble(b(bArr, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(byte[] bArr, int i2) {
        return Float.intBitsToFloat(a(bArr, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(byte[] bArr, int i2, g3 g3Var) {
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a;
        if (i3 >= 0) {
            if (i3 > bArr.length - a2) {
                throw d5.zzgm();
            }
            if (i3 == 0) {
                g3Var.f12353c = j3.zzrx;
                return a2;
            }
            g3Var.f12353c = j3.zza(bArr, a2, i3);
            return a2 + i3;
        }
        throw d5.zzgn();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int f(byte[] bArr, int i2, z4<?> z4Var, g3 g3Var) {
        b4 b4Var = (b4) z4Var;
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a + a2;
        while (a2 < i3) {
            b4Var.a(c(bArr, a2));
            a2 += 8;
        }
        if (a2 == i3) {
            return a2;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int g(byte[] bArr, int i2, z4<?> z4Var, g3 g3Var) {
        i3 i3Var = (i3) z4Var;
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a + a2;
        while (a2 < i3) {
            a2 = b(bArr, a2, g3Var);
            i3Var.a(g3Var.f12352b != 0);
        }
        if (a2 == i3) {
            return a2;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int h(byte[] bArr, int i2, z4<?> z4Var, g3 g3Var) {
        u4 u4Var = (u4) z4Var;
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a + a2;
        while (a2 < i3) {
            a2 = a(bArr, a2, g3Var);
            u4Var.b(v3.a(g3Var.f12351a));
        }
        if (a2 == i3) {
            return a2;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int i(byte[] bArr, int i2, z4<?> z4Var, g3 g3Var) {
        r5 r5Var = (r5) z4Var;
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a + a2;
        while (a2 < i3) {
            a2 = b(bArr, a2, g3Var);
            r5Var.a(v3.a(g3Var.f12352b));
        }
        if (a2 == i3) {
            return a2;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(byte[] bArr, int i2, g3 g3Var) {
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a;
        if (i3 < 0) {
            throw d5.zzgn();
        }
        if (i3 == 0) {
            g3Var.f12353c = "";
            return a2;
        }
        g3Var.f12353c = new String(bArr, a2, i3, t4.f12540a);
        return a2 + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(byte[] bArr, int i2, g3 g3Var) {
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a;
        if (i3 < 0) {
            throw d5.zzgn();
        }
        if (i3 == 0) {
            g3Var.f12353c = "";
            return a2;
        }
        g3Var.f12353c = r7.c(bArr, a2, i3);
        return a2 + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, g3 g3Var) {
        int i4 = i2 & 127;
        int i5 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            g3Var.f12351a = i4 | (b2 << 7);
            return i5;
        }
        int i6 = i4 | ((b2 & Byte.MAX_VALUE) << 7);
        int i7 = i5 + 1;
        byte b3 = bArr[i5];
        if (b3 >= 0) {
            g3Var.f12351a = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & Byte.MAX_VALUE) << 14);
        int i9 = i7 + 1;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            g3Var.f12351a = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & Byte.MAX_VALUE) << 21);
        int i11 = i9 + 1;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            g3Var.f12351a = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                g3Var.f12351a = i12;
                return i13;
            }
            i11 = i13;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(byte[] bArr, int i2) {
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i2, z4<?> z4Var, g3 g3Var) {
        r5 r5Var = (r5) z4Var;
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a + a2;
        while (a2 < i3) {
            a2 = b(bArr, a2, g3Var);
            r5Var.a(g3Var.f12352b);
        }
        if (a2 == i3) {
            return a2;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(byte[] bArr, int i2, z4<?> z4Var, g3 g3Var) {
        u4 u4Var = (u4) z4Var;
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a + a2;
        while (a2 < i3) {
            u4Var.b(a(bArr, a2));
            a2 += 4;
        }
        if (a2 == i3) {
            return a2;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(byte[] bArr, int i2, z4<?> z4Var, g3 g3Var) {
        r5 r5Var = (r5) z4Var;
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a + a2;
        while (a2 < i3) {
            r5Var.a(b(bArr, a2));
            a2 += 8;
        }
        if (a2 == i3) {
            return a2;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(byte[] bArr, int i2, z4<?> z4Var, g3 g3Var) {
        o4 o4Var = (o4) z4Var;
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a + a2;
        while (a2 < i3) {
            o4Var.a(d(bArr, a2));
            a2 += 4;
        }
        if (a2 == i3) {
            return a2;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(r6 r6Var, byte[] bArr, int i2, int i3, g3 g3Var) {
        int i4 = i2 + 1;
        int i5 = bArr[i2];
        if (i5 < 0) {
            i4 = a(i5, bArr, i4, g3Var);
            i5 = g3Var.f12351a;
        }
        int i6 = i4;
        if (i5 >= 0 && i5 <= i3 - i6) {
            Object a2 = r6Var.a();
            int i7 = i5 + i6;
            r6Var.a(a2, bArr, i6, i7, g3Var);
            r6Var.e(a2);
            g3Var.f12353c = a2;
            return i7;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(r6 r6Var, byte[] bArr, int i2, int i3, int i4, g3 g3Var) {
        g6 g6Var = (g6) r6Var;
        Object a2 = g6Var.a();
        int a3 = g6Var.a((g6) a2, bArr, i2, i3, i4, g3Var);
        g6Var.e((g6) a2);
        g3Var.f12353c = a2;
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, z4<?> z4Var, g3 g3Var) {
        u4 u4Var = (u4) z4Var;
        int a2 = a(bArr, i3, g3Var);
        u4Var.b(g3Var.f12351a);
        while (a2 < i4) {
            int a3 = a(bArr, a2, g3Var);
            if (i2 != g3Var.f12351a) {
                break;
            }
            a2 = a(bArr, a3, g3Var);
            u4Var.b(g3Var.f12351a);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2, z4<?> z4Var, g3 g3Var) {
        u4 u4Var = (u4) z4Var;
        int a2 = a(bArr, i2, g3Var);
        int i3 = g3Var.f12351a + a2;
        while (a2 < i3) {
            a2 = a(bArr, a2, g3Var);
            u4Var.b(g3Var.f12351a);
        }
        if (a2 == i3) {
            return a2;
        }
        throw d5.zzgm();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(r6<?> r6Var, int i2, byte[] bArr, int i3, int i4, z4<?> z4Var, g3 g3Var) {
        int a2 = a(r6Var, bArr, i3, i4, g3Var);
        z4Var.add(g3Var.f12353c);
        while (a2 < i4) {
            int a3 = a(bArr, a2, g3Var);
            if (i2 != g3Var.f12351a) {
                break;
            }
            a2 = a(r6Var, bArr, a3, i4, g3Var);
            z4Var.add(g3Var.f12353c);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, l7 l7Var, g3 g3Var) {
        if ((i2 >>> 3) == 0) {
            throw d5.zzgp();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int b2 = b(bArr, i3, g3Var);
            l7Var.a(i2, Long.valueOf(g3Var.f12352b));
            return b2;
        }
        if (i5 == 1) {
            l7Var.a(i2, Long.valueOf(b(bArr, i3)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int a2 = a(bArr, i3, g3Var);
            int i6 = g3Var.f12351a;
            if (i6 >= 0) {
                if (i6 > bArr.length - a2) {
                    throw d5.zzgm();
                }
                if (i6 == 0) {
                    l7Var.a(i2, j3.zzrx);
                } else {
                    l7Var.a(i2, j3.zza(bArr, a2, i6));
                }
                return a2 + i6;
            }
            throw d5.zzgn();
        }
        if (i5 != 3) {
            if (i5 == 5) {
                l7Var.a(i2, Integer.valueOf(a(bArr, i3)));
                return i3 + 4;
            }
            throw d5.zzgp();
        }
        l7 e2 = l7.e();
        int i7 = (i2 & (-8)) | 4;
        int i8 = 0;
        while (true) {
            if (i3 >= i4) {
                break;
            }
            int a3 = a(bArr, i3, g3Var);
            int i9 = g3Var.f12351a;
            i8 = i9;
            if (i9 == i7) {
                i3 = a3;
                break;
            }
            int a4 = a(i8, bArr, a3, i4, e2, g3Var);
            i8 = i9;
            i3 = a4;
        }
        if (i3 <= i4 && i8 == i7) {
            l7Var.a(i2, e2);
            return i3;
        }
        throw d5.zzgs();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, g3 g3Var) {
        if ((i2 >>> 3) == 0) {
            throw d5.zzgp();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return b(bArr, i3, g3Var);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return a(bArr, i3, g3Var) + g3Var.f12351a;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            throw d5.zzgp();
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = a(bArr, i3, g3Var);
            i7 = g3Var.f12351a;
            if (i7 == i6) {
                break;
            }
            i3 = a(i7, bArr, i3, i4, g3Var);
        }
        if (i3 > i4 || i7 != i6) {
            throw d5.zzgs();
        }
        return i3;
    }
}
