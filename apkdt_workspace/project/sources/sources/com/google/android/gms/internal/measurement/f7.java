package com.google.android.gms.internal.measurement;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class f7 extends b7 {
    @Override // com.google.android.gms.internal.measurement.b7
    final int a(int i2, byte[] bArr, int i3, int i4) {
        int b2;
        int b3;
        while (i3 < i4 && bArr[i3] >= 0) {
            i3++;
        }
        if (i3 >= i4) {
            return 0;
        }
        while (i3 < i4) {
            int i5 = i3 + 1;
            byte b4 = bArr[i3];
            if (b4 < 0) {
                if (b4 < -32) {
                    if (i5 >= i4) {
                        return b4;
                    }
                    if (b4 >= -62) {
                        i3 = i5 + 1;
                        if (bArr[i5] > -65) {
                        }
                    }
                    return -1;
                }
                if (b4 >= -16) {
                    if (i5 >= i4 - 2) {
                        b3 = a7.b(bArr, i5, i4);
                        return b3;
                    }
                    int i6 = i5 + 1;
                    byte b5 = bArr[i5];
                    if (b5 <= -65 && (((b4 << 28) + (b5 + 112)) >> 30) == 0) {
                        int i7 = i6 + 1;
                        if (bArr[i6] <= -65) {
                            i5 = i7 + 1;
                            if (bArr[i7] > -65) {
                            }
                        }
                    }
                    return -1;
                }
                if (i5 >= i4 - 1) {
                    b2 = a7.b(bArr, i5, i4);
                    return b2;
                }
                int i8 = i5 + 1;
                byte b6 = bArr[i5];
                if (b6 <= -65 && ((b4 != -32 || b6 >= -96) && (b4 != -19 || b6 < -96))) {
                    i3 = i8 + 1;
                    if (bArr[i8] > -65) {
                    }
                }
                return -1;
            }
            i3 = i5;
        }
        return 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.b7
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
                byte b3 = bArr[i2];
                a4 = d7.a(b3);
                if (!a4) {
                    break;
                }
                i2++;
                d7.a(b3, cArr, i5);
                i5++;
            }
            int i6 = i5;
            while (i2 < i4) {
                int i7 = i2 + 1;
                byte b4 = bArr[i2];
                a2 = d7.a(b4);
                if (a2) {
                    int i8 = i6 + 1;
                    d7.a(b4, cArr, i6);
                    while (i7 < i4) {
                        byte b5 = bArr[i7];
                        a3 = d7.a(b5);
                        if (!a3) {
                            break;
                        }
                        i7++;
                        d7.a(b5, cArr, i8);
                        i8++;
                    }
                    i2 = i7;
                    i6 = i8;
                } else {
                    b2 = d7.b(b4);
                    if (!b2) {
                        c2 = d7.c(b4);
                        if (c2) {
                            if (i7 < i4 - 1) {
                                int i9 = i7 + 1;
                                d7.a(b4, bArr[i7], bArr[i9], cArr, i6);
                                i2 = i9 + 1;
                                i6++;
                            } else {
                                throw l4.zzvb();
                            }
                        } else if (i7 < i4 - 2) {
                            int i10 = i7 + 1;
                            byte b6 = bArr[i7];
                            int i11 = i10 + 1;
                            d7.a(b4, b6, bArr[i10], bArr[i11], cArr, i6);
                            i2 = i11 + 1;
                            i6 = i6 + 1 + 1;
                        } else {
                            throw l4.zzvb();
                        }
                    } else if (i7 < i4) {
                        d7.a(b4, bArr[i7], cArr, i6);
                        i2 = i7 + 1;
                        i6++;
                    } else {
                        throw l4.zzvb();
                    }
                }
            }
            return new String(cArr, 0, i6);
        }
        throw new ArrayIndexOutOfBoundsException(String.format("buffer length=%d, index=%d, size=%d", Integer.valueOf(bArr.length), Integer.valueOf(i2), Integer.valueOf(i3)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        return r10 + r0;
     */
    @Override // com.google.android.gms.internal.measurement.b7
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.f7.a(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.measurement.b7
    public final void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        b7.b(charSequence, byteBuffer);
    }
}
