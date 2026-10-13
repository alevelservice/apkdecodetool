package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class d71 extends t51 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public d71(byte[] bArr, int i2) {
        super(bArr, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.t51
    public final int a() {
        return 24;
    }

    @Override // com.google.android.gms.internal.ads.t51
    final int[] a(int[] iArr, int i2) {
        if (iArr.length == 6) {
            int[] iArr2 = new int[16];
            t51.a(r0, this.f9512a);
            int[] iArr3 = {0, 0, 0, 0, iArr3[12], iArr3[13], iArr3[14], iArr3[15], 0, 0, 0, 0, iArr[0], iArr[1], iArr[2], iArr[3]};
            t51.a(iArr3);
            t51.a(iArr2, Arrays.copyOf(iArr3, 8));
            iArr2[12] = i2;
            iArr2[13] = 0;
            iArr2[14] = iArr[4];
            iArr2[15] = iArr[5];
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("XChaCha20 uses 192-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }
}
