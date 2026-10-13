package com.google.android.gms.internal.ads;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
final class u51 extends t51 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public u51(byte[] bArr, int i2) {
        super(bArr, i2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.google.android.gms.internal.ads.t51
    public final int a() {
        return 12;
    }

    @Override // com.google.android.gms.internal.ads.t51
    final int[] a(int[] iArr, int i2) {
        if (iArr.length == 3) {
            int[] iArr2 = new int[16];
            t51.a(iArr2, this.f9512a);
            iArr2[12] = i2;
            System.arraycopy(iArr, 0, iArr2, 13, iArr.length);
            return iArr2;
        }
        throw new IllegalArgumentException(String.format("ChaCha20 uses 96-bit nonces, but got a %d-bit nonce", Integer.valueOf(iArr.length << 5)));
    }
}
