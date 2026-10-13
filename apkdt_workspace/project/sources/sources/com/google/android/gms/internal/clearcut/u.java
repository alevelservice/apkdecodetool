package com.google.android.gms.internal.clearcut;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class u {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, i1<?> i1Var, v vVar) {
        e1 e1Var = (e1) i1Var;
        int a2 = a(bArr, i3, vVar);
        while (true) {
            e1Var.b(vVar.f11576a);
            if (a2 >= i4) {
                break;
            }
            int a3 = a(bArr, a2, vVar);
            if (i2 != vVar.f11576a) {
                break;
            }
            a2 = a(bArr, a3, vVar);
        }
        return a2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, s3 s3Var, v vVar) {
        if ((i2 >>> 3) == 0) {
            throw j1.zzbm();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            int b2 = b(bArr, i3, vVar);
            s3Var.a(i2, Long.valueOf(vVar.f11577b));
            return b2;
        }
        if (i5 == 1) {
            s3Var.a(i2, Long.valueOf(b(bArr, i3)));
            return i3 + 8;
        }
        if (i5 == 2) {
            int a2 = a(bArr, i3, vVar);
            int i6 = vVar.f11576a;
            s3Var.a(i2, i6 == 0 ? y.zzfi : y.zzb(bArr, a2, i6));
            return a2 + i6;
        }
        if (i5 != 3) {
            if (i5 != 5) {
                throw j1.zzbm();
            }
            s3Var.a(i2, Integer.valueOf(a(bArr, i3)));
            return i3 + 4;
        }
        s3 e2 = s3.e();
        int i7 = (i2 & (-8)) | 4;
        int i8 = 0;
        while (true) {
            if (i3 >= i4) {
                break;
            }
            int a3 = a(bArr, i3, vVar);
            int i9 = vVar.f11576a;
            i8 = i9;
            if (i9 == i7) {
                i3 = a3;
                break;
            }
            int a4 = a(i8, bArr, a3, i4, e2, vVar);
            i8 = i9;
            i3 = a4;
        }
        if (i3 > i4 || i8 != i7) {
            throw j1.zzbo();
        }
        s3Var.a(i2, e2);
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, int i4, v vVar) {
        if ((i2 >>> 3) == 0) {
            throw j1.zzbm();
        }
        int i5 = i2 & 7;
        if (i5 == 0) {
            return b(bArr, i3, vVar);
        }
        if (i5 == 1) {
            return i3 + 8;
        }
        if (i5 == 2) {
            return a(bArr, i3, vVar) + vVar.f11576a;
        }
        if (i5 != 3) {
            if (i5 == 5) {
                return i3 + 4;
            }
            throw j1.zzbm();
        }
        int i6 = (i2 & (-8)) | 4;
        int i7 = 0;
        while (i3 < i4) {
            i3 = a(bArr, i3, vVar);
            i7 = vVar.f11576a;
            if (i7 == i6) {
                break;
            }
            i3 = a(i7, bArr, i3, i4, vVar);
        }
        if (i3 > i4 || i7 != i6) {
            throw j1.zzbo();
        }
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(int i2, byte[] bArr, int i3, v vVar) {
        int i4;
        int i5;
        int i6 = i2 & 127;
        int i7 = i3 + 1;
        byte b2 = bArr[i3];
        if (b2 < 0) {
            int i8 = i6 | ((b2 & Byte.MAX_VALUE) << 7);
            int i9 = i7 + 1;
            byte b3 = bArr[i7];
            if (b3 >= 0) {
                i4 = b3 << 14;
            } else {
                i6 = i8 | ((b3 & Byte.MAX_VALUE) << 14);
                i7 = i9 + 1;
                byte b4 = bArr[i9];
                if (b4 >= 0) {
                    i5 = b4 << 21;
                } else {
                    i8 = i6 | ((b4 & Byte.MAX_VALUE) << 21);
                    i9 = i7 + 1;
                    byte b5 = bArr[i7];
                    if (b5 >= 0) {
                        i4 = b5 << 28;
                    } else {
                        int i10 = i8 | ((b5 & Byte.MAX_VALUE) << 28);
                        while (true) {
                            int i11 = i9 + 1;
                            if (bArr[i9] >= 0) {
                                vVar.f11576a = i10;
                                return i11;
                            }
                            i9 = i11;
                        }
                    }
                }
            }
            vVar.f11576a = i8 | i4;
            return i9;
        }
        i5 = b2 << 7;
        vVar.f11576a = i6 | i5;
        return i7;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2) {
        return ((bArr[i2 + 3] & 255) << 24) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2, i1<?> i1Var, v vVar) {
        e1 e1Var = (e1) i1Var;
        int a2 = a(bArr, i2, vVar);
        int i3 = vVar.f11576a + a2;
        while (a2 < i3) {
            a2 = a(bArr, a2, vVar);
            e1Var.b(vVar.f11576a);
        }
        if (a2 == i3) {
            return a2;
        }
        throw j1.zzbl();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a(byte[] bArr, int i2, v vVar) {
        int i3 = i2 + 1;
        byte b2 = bArr[i2];
        if (b2 < 0) {
            return a(b2, bArr, i3, vVar);
        }
        vVar.f11576a = b2;
        return i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int b(byte[] bArr, int i2, v vVar) {
        int i3 = i2 + 1;
        long j2 = bArr[i2];
        if (j2 >= 0) {
            vVar.f11577b = j2;
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
        vVar.f11577b = j3;
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static long b(byte[] bArr, int i2) {
        return ((bArr[i2 + 7] & 255) << 56) | (bArr[i2] & 255) | ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2 + 2] & 255) << 16) | ((bArr[i2 + 3] & 255) << 24) | ((bArr[i2 + 4] & 255) << 32) | ((bArr[i2 + 5] & 255) << 40) | ((bArr[i2 + 6] & 255) << 48);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static double c(byte[] bArr, int i2) {
        return Double.longBitsToDouble(b(bArr, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int c(byte[] bArr, int i2, v vVar) {
        int a2 = a(bArr, i2, vVar);
        int i3 = vVar.f11576a;
        if (i3 == 0) {
            vVar.f11578c = "";
            return a2;
        }
        vVar.f11578c = new String(bArr, a2, i3, f1.f11419a);
        return a2 + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float d(byte[] bArr, int i2) {
        return Float.intBitsToFloat(a(bArr, i2));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int d(byte[] bArr, int i2, v vVar) {
        int a2 = a(bArr, i2, vVar);
        int i3 = vVar.f11576a;
        if (i3 == 0) {
            vVar.f11578c = "";
            return a2;
        }
        int i4 = a2 + i3;
        if (!a4.a(bArr, a2, i4)) {
            throw j1.zzbp();
        }
        vVar.f11578c = new String(bArr, a2, i3, f1.f11419a);
        return i4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int e(byte[] bArr, int i2, v vVar) {
        int a2 = a(bArr, i2, vVar);
        int i3 = vVar.f11576a;
        if (i3 == 0) {
            vVar.f11578c = y.zzfi;
            return a2;
        }
        vVar.f11578c = y.zzb(bArr, a2, i3);
        return a2 + i3;
    }
}
