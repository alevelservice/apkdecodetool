package com.google.android.gms.internal.ads;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-ads-base@@18.1.0 */
/* loaded from: classes.dex */
public final class p71 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2, s71 s71Var) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 >= 0) {
            s71Var.f9285a = b2;
            return i3;
        }
        return a(b2, bArr, i3, s71Var);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i2, s71 s71Var) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            s71Var.f9286b = j2;
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
        s71Var.f9286b = j3;
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
    public static int e(byte[] bArr, int i2, s71 s71Var) {
        int a2 = a(bArr, i2, s71Var);
        int i3 = s71Var.f9285a;
        if (i3 >= 0) {
            if (i3 > bArr.length - a2) {
                throw o91.zzazx();
            }
            if (i3 == 0) {
                s71Var.f9287c = t71.zzhfn;
                return a2;
            }
            s71Var.f9287c = t71.zzh(bArr, a2, i3);
            return a2 + i3;
        }
        throw o91.zzazy();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(byte[] bArr, int i2, s71 s71Var) {
        int a2 = a(bArr, i2, s71Var);
        int i3 = s71Var.f9285a;
        if (i3 < 0) {
            throw o91.zzazy();
        }
        if (i3 == 0) {
            s71Var.f9287c = "";
            return a2;
        }
        s71Var.f9287c = new String(bArr, a2, i3, f91.f6596a);
        return a2 + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(byte[] bArr, int i2, s71 s71Var) {
        int a2 = a(bArr, i2, s71Var);
        int i3 = s71Var.f9285a;
        if (i3 < 0) {
            throw o91.zzazy();
        }
        if (i3 == 0) {
            s71Var.f9287c = "";
            return a2;
        }
        s71Var.f9287c = fc1.c(bArr, a2, i3);
        return a2 + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, s71 s71Var) {
        int i4 = i2 & 127;
        int i5 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 >= 0) {
            s71Var.f9285a = i4 | (b2 << 7);
            return i5;
        }
        int i6 = i4 | ((b2 & Byte.MAX_VALUE) << 7);
        int i7 = i5 + 1;
        byte b3 = bArr[i5];
        if (b3 >= 0) {
            s71Var.f9285a = i6 | (b3 << 14);
            return i7;
        }
        int i8 = i6 | ((b3 & Byte.MAX_VALUE) << 14);
        int i9 = i7 + 1;
        byte b4 = bArr[i7];
        if (b4 >= 0) {
            s71Var.f9285a = i8 | (b4 << 21);
            return i9;
        }
        int i10 = i8 | ((b4 & Byte.MAX_VALUE) << 21);
        int i11 = i9 + 1;
        byte b5 = bArr[i9];
        if (b5 >= 0) {
            s71Var.f9285a = i10 | (b5 << 28);
            return i11;
        }
        int i12 = i10 | ((b5 & Byte.MAX_VALUE) << 28);
        while (true) {
            int i13 = i11 + 1;
            if (bArr[i11] >= 0) {
                s71Var.f9285a = i12;
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
    public static int a(db1 db1Var, byte[] bArr, int i2, int i3, s71 s71Var) {
        int i4 = i2 + 1;
        int i5 = bArr[i2];
        if (i5 < 0) {
            i4 = a(i5, bArr, i4, s71Var);
            i5 = s71Var.f9285a;
        }
        int i6 = i4;
        if (i5 >= 0 && i5 <= i3 - i6) {
            Object a2 = db1Var.a();
            int i7 = i5 + i6;
            db1Var.a(a2, bArr, i6, i7, s71Var);
            db1Var.e(a2);
            s71Var.f9287c = a2;
            return i7;
        }
        throw o91.zzazx();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(db1 db1Var, byte[] bArr, int i2, int i3, int i4, s71 s71Var) {
        ra1 ra1Var = (ra1) db1Var;
        Object a2 = ra1Var.a();
        int a3 = ra1Var.a((ra1) a2, bArr, i2, i3, i4, s71Var);
        ra1Var.e((ra1) a2);
        s71Var.f9287c = a2;
        return a3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, l91<?> l91Var, s71 s71Var) {
        g91 g91Var = (g91) l91Var;
        int a2 = a(bArr, i3, s71Var);
        g91Var.h(s71Var.f9285a);
        while (a2 < i4) {
            int a3 = a(bArr, a2, s71Var);
            if (i2 != s71Var.f9285a) {
                break;
            }
            a2 = a(bArr, a3, s71Var);
            g91Var.h(s71Var.f9285a);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2, l91<?> l91Var, s71 s71Var) {
        g91 g91Var = (g91) l91Var;
        int a2 = a(bArr, i2, s71Var);
        int i3 = s71Var.f9285a + a2;
        while (a2 < i3) {
            a2 = a(bArr, a2, s71Var);
            g91Var.h(s71Var.f9285a);
        }
        if (a2 == i3) {
            return a2;
        }
        throw o91.zzazx();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(db1<?> db1Var, int i2, byte[] bArr, int i3, int i4, l91<?> l91Var, s71 s71Var) {
        int a2 = a(db1Var, bArr, i3, i4, s71Var);
        l91Var.add(s71Var.f9287c);
        while (a2 < i4) {
            int a3 = a(bArr, a2, s71Var);
            if (i2 != s71Var.f9285a) {
                break;
            }
            a2 = a(db1Var, bArr, a3, i4, s71Var);
            l91Var.add(s71Var.f9287c);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, yb1 yb1Var, s71 s71Var) {
        if ((i2 >>> 3) == 0) {
            throw o91.zzbaa();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int b2 = b(bArr, i3, s71Var);
            yb1Var.a(i2, Long.valueOf(s71Var.f9286b));
            return b2;
        }
        if (i5 == 1) {
            yb1Var.a(i2, Long.valueOf(b(bArr, i3)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int a2 = a(bArr, i3, s71Var);
            int i6 = s71Var.f9285a;
            if (i6 >= 0) {
                if (i6 > bArr.length - a2) {
                    throw o91.zzazx();
                }
                if (i6 == 0) {
                    yb1Var.a(i2, t71.zzhfn);
                } else {
                    yb1Var.a(i2, t71.zzh(bArr, a2, i6));
                }
                return a2 + i6;
            }
            throw o91.zzazy();
        }
        if (i5 != 3) {
            if (i5 == 5) {
                yb1Var.a(i2, Integer.valueOf(a(bArr, i3)));
                return i3 + 4;
            }
            throw o91.zzbaa();
        }
        yb1 e2 = yb1.e();
        int i7 = (i2 & (-8)) | 4;
        int i8 = 0;
        while (true) {
            if (i3 >= i4) {
                break;
            }
            int a3 = a(bArr, i3, s71Var);
            int i9 = s71Var.f9285a;
            i8 = i9;
            if (i9 == i7) {
                i3 = a3;
                break;
            }
            int a4 = a(i8, bArr, a3, i4, e2, s71Var);
            i8 = i9;
            i3 = a4;
        }
        if (i3 <= i4 && i8 == i7) {
            yb1Var.a(i2, e2);
            return i3;
        }
        throw o91.zzbad();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, s71 s71Var) {
        if ((i2 >>> 3) == 0) {
            throw o91.zzbaa();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return b(bArr, i3, s71Var);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return a(bArr, i3, s71Var) + s71Var.f9285a;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            throw o91.zzbaa();
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = a(bArr, i3, s71Var);
            i7 = s71Var.f9285a;
            if (i7 == i6) {
                break;
            }
            i3 = a(i7, bArr, i3, i4, s71Var);
        }
        if (i3 > i4 || i7 != i6) {
            throw o91.zzbad();
        }
        return i3;
    }
}
