package com.google.android.gms.internal.clearcut;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
final class c4 extends b4 {
    @Override // com.google.android.gms.internal.clearcut.b4
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
                        b3 = a4.b(bArr, i5, i4);
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
                    b2 = a4.b(bArr, i5, i4);
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
    /* JADX WARN: Code restructure failed: missing block: B:12:0x001d, code lost:
    
        return r10 + r0;
     */
    @Override // com.google.android.gms.internal.clearcut.b4
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int a(java.lang.CharSequence r8, byte[] r9, int r10, int r11) {
        /*
            Method dump skipped, instructions count: 256
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.clearcut.c4.a(java.lang.CharSequence, byte[], int, int):int");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.clearcut.b4
    public final void a(CharSequence charSequence, ByteBuffer byteBuffer) {
        b4.b(charSequence, byteBuffer);
    }
}
