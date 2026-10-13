package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class q51 implements t61 {

    /* renamed from: a, reason: collision with root package name */
    private final SecretKeySpec f8849a;

    /* renamed from: b, reason: collision with root package name */
    private final int f8850b;

    /* renamed from: c, reason: collision with root package name */
    private final int f8851c;

    public q51(byte[] bArr, int i2) {
        a71.a(bArr.length);
        this.f8849a = new SecretKeySpec(bArr, "AES");
        this.f8851c = k61.f7623f.a("AES/CTR/NoPadding").getBlockSize();
        if (i2 >= 12 && i2 <= this.f8851c) {
            this.f8850b = i2;
            return;
        }
        throw new GeneralSecurityException("invalid IV size");
    }

    @Override // com.google.android.gms.internal.ads.t61
    public final byte[] a(byte[] bArr) {
        int length = bArr.length;
        int i2 = this.f8850b;
        if (length <= Integer.MAX_VALUE - i2) {
            byte[] bArr2 = new byte[bArr.length + i2];
            byte[] a2 = w61.a(i2);
            System.arraycopy(a2, 0, bArr2, 0, this.f8850b);
            int length2 = bArr.length;
            int i3 = this.f8850b;
            Cipher a3 = k61.f7623f.a("AES/CTR/NoPadding");
            byte[] bArr3 = new byte[this.f8851c];
            System.arraycopy(a2, 0, bArr3, 0, this.f8850b);
            a3.init(1, this.f8849a, new IvParameterSpec(bArr3));
            if (a3.doFinal(bArr, 0, length2, bArr2, i3) == length2) {
                return bArr2;
            }
            throw new GeneralSecurityException("stored output's length does not match input's length");
        }
        int i4 = Integer.MAX_VALUE - i2;
        StringBuilder sb = new StringBuilder(43);
        sb.append("plaintext length can not exceed ");
        sb.append(i4);
        throw new GeneralSecurityException(sb.toString());
    }
}
