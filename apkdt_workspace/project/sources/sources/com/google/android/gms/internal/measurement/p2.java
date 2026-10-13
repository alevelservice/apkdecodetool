package com.google.android.gms.internal.measurement;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class p2 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2, o2 o2Var) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            o2Var.f12007a = b2;
            return i3;
        }
        return a(b2, bArr, i3, o2Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i2, o2 o2Var) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            o2Var.f12008b = j2;
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
        o2Var.f12008b = j3;
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
    public static int e(byte[] bArr, int i2, o2 o2Var) {
        int a2 = a(bArr, i2, o2Var);
        int i3 = o2Var.f12007a;
        if (i3 >= 0) {
            if (i3 > bArr.length - a2) {
                throw l4.zzut();
            }
            if (i3 == 0) {
                o2Var.f12009c = t2.zzadh;
                return a2;
            }
            o2Var.f12009c = t2.zzb(bArr, a2, i3);
            return a2 + i3;
        }
        throw l4.zzuu();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(byte[] bArr, int i2, o2 o2Var) {
        int a2 = a(bArr, i2, o2Var);
        int i3 = o2Var.f12007a;
        if (i3 < 0) {
            throw l4.zzuu();
        }
        if (i3 == 0) {
            o2Var.f12009c = "";
            return a2;
        }
        o2Var.f12009c = new String(bArr, a2, i3, c4.f11799a);
        return a2 + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(byte[] bArr, int i2, o2 o2Var) {
        int a2 = a(bArr, i2, o2Var);
        int i3 = o2Var.f12007a;
        if (i3 < 0) {
            throw l4.zzuu();
        }
        if (i3 == 0) {
            o2Var.f12009c = "";
            return a2;
        }
        o2Var.f12009c = a7.c(bArr, a2, i3);
        return a2 + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, o2 o2Var) {
        int i4 = i2 & 127;
        int i5 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            o2Var.f12007a = i4 | (b2 << 7);
            return i5;
        }
        int i6 = i4 | ((b2 & Byte.MAX_VALUE) << 7);
        int i7 = i5 + 1;
        byte b3 = bArr[i5];
        if (b3 >= 0) {
            o2Var.f12007a = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & Byte.MAX_VALUE) << 14);
        int i9 = i7 + 1;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            o2Var.f12007a = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & Byte.MAX_VALUE) << 21);
        int i11 = i9 + 1;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            o2Var.f12007a = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                o2Var.f12007a = i12;
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
    public static int a(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(y5 y5Var, byte[] bArr, int i2, int i3, o2 o2Var) {
        int i4 = i2 + 1;
        int i5 = bArr[i2];
        if (i5 < 0) {
            i4 = a(i5, bArr, i4, o2Var);
            i5 = o2Var.f12007a;
        }
        int i6 = i4;
        if (i5 >= 0 && i5 <= i3 - i6) {
            Object a2 = y5Var.a();
            int i7 = i5 + i6;
            y5Var.a(a2, bArr, i6, i7, o2Var);
            y5Var.d(a2);
            o2Var.f12009c = a2;
            return i7;
        }
        throw l4.zzut();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(y5 y5Var, byte[] bArr, int i2, int i3, int i4, o2 o2Var) {
        n5 n5Var = (n5) y5Var;
        Object a2 = n5Var.a();
        int a3 = n5Var.a((n5) a2, bArr, i2, i3, i4, o2Var);
        n5Var.d((n5) a2);
        o2Var.f12009c = a2;
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, i4<?> i4Var, o2 o2Var) {
        d4 d4Var = (d4) i4Var;
        int a2 = a(bArr, i3, o2Var);
        d4Var.b(o2Var.f12007a);
        while (a2 < i4) {
            int a3 = a(bArr, a2, o2Var);
            if (i2 != o2Var.f12007a) {
                break;
            }
            a2 = a(bArr, a3, o2Var);
            d4Var.b(o2Var.f12007a);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2, i4<?> i4Var, o2 o2Var) {
        d4 d4Var = (d4) i4Var;
        int a2 = a(bArr, i2, o2Var);
        int i3 = o2Var.f12007a + a2;
        while (a2 < i3) {
            a2 = a(bArr, a2, o2Var);
            d4Var.b(o2Var.f12007a);
        }
        if (a2 == i3) {
            return a2;
        }
        throw l4.zzut();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(y5<?> y5Var, int i2, byte[] bArr, int i3, int i4, i4<?> i4Var, o2 o2Var) {
        int a2 = a(y5Var, bArr, i3, i4, o2Var);
        i4Var.add(o2Var.f12009c);
        while (a2 < i4) {
            int a3 = a(bArr, a2, o2Var);
            if (i2 != o2Var.f12007a) {
                break;
            }
            a2 = a(y5Var, bArr, a3, i4, o2Var);
            i4Var.add(o2Var.f12009c);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, u6 u6Var, o2 o2Var) {
        if ((i2 >>> 3) == 0) {
            throw l4.zzuw();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int b2 = b(bArr, i3, o2Var);
            u6Var.a(i2, Long.valueOf(o2Var.f12008b));
            return b2;
        }
        if (i5 == 1) {
            u6Var.a(i2, Long.valueOf(b(bArr, i3)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int a2 = a(bArr, i3, o2Var);
            int i6 = o2Var.f12007a;
            if (i6 >= 0) {
                if (i6 > bArr.length - a2) {
                    throw l4.zzut();
                }
                if (i6 == 0) {
                    u6Var.a(i2, t2.zzadh);
                } else {
                    u6Var.a(i2, t2.zzb(bArr, a2, i6));
                }
                return a2 + i6;
            }
            throw l4.zzuu();
        }
        if (i5 != 3) {
            if (i5 == 5) {
                u6Var.a(i2, Integer.valueOf(a(bArr, i3)));
                return i3 + 4;
            }
            throw l4.zzuw();
        }
        u6 e2 = u6.e();
        int i7 = (i2 & (-8)) | 4;
        int i8 = 0;
        while (true) {
            if (i3 >= i4) {
                break;
            }
            int a3 = a(bArr, i3, o2Var);
            int i9 = o2Var.f12007a;
            i8 = i9;
            if (i9 == i7) {
                i3 = a3;
                break;
            }
            int a4 = a(i8, bArr, a3, i4, e2, o2Var);
            i8 = i9;
            i3 = a4;
        }
        if (i3 <= i4 && i8 == i7) {
            u6Var.a(i2, e2);
            return i3;
        }
        throw l4.zzva();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, o2 o2Var) {
        if ((i2 >>> 3) == 0) {
            throw l4.zzuw();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return b(bArr, i3, o2Var);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return a(bArr, i3, o2Var) + o2Var.f12007a;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            throw l4.zzuw();
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = a(bArr, i3, o2Var);
            i7 = o2Var.f12007a;
            if (i7 == i6) {
                break;
            }
            i3 = a(i7, bArr, i3, i4, o2Var);
        }
        if (i3 > i4 || i7 != i6) {
            throw l4.zzva();
        }
        return i3;
    }
}
