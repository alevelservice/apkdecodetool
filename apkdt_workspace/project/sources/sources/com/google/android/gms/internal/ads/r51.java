package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.spec.AlgorithmParameterSpec;
import javax.crypto.Cipher;
import javax.crypto.SecretKey;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class r51 implements l01 {

    /* renamed from: a, reason: collision with root package name */
    private final SecretKey f9045a;

    public r51(byte[] bArr) {
        a71.a(bArr.length);
        this.f9045a = new SecretKeySpec(bArr, "AES");
    }

    @Override // com.google.android.gms.internal.ads.l01
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        if (bArr.length <= 2147483619) {
            byte[] bArr3 = new byte[bArr.length + 12 + 16];
            byte[] a2 = w61.a(12);
            System.arraycopy(a2, 0, bArr3, 0, 12);
            Cipher a3 = k61.f7623f.a("AES/GCM/NoPadding");
            a3.init(1, this.f9045a, a(a2, 0, a2.length));
            if (bArr2 != null && bArr2.length != 0) {
                a3.updateAAD(bArr2);
            }
            int doFinal = a3.doFinal(bArr, 0, bArr.length, bArr3, 12);
            if (doFinal == bArr.length + 16) {
                return bArr3;
            }
            throw new GeneralSecurityException(String.format("encryption failed; GCM tag must be %s bytes, but got only %s bytes", 16, Integer.valueOf(doFinal - bArr.length)));
        }
        throw new GeneralSecurityException("plaintext too long");
    }

    private static AlgorithmParameterSpec a(byte[] bArr, int i2, int i3) {
        try {
            Class.forName("javax.crypto.spec.GCMParameterSpec");
            return new GCMParameterSpec(128, bArr, 0, i3);
        } catch (ClassNotFoundException unused) {
            if (z61.a()) {
                return new IvParameterSpec(bArr, 0, i3);
            }
            throw new GeneralSecurityException("cannot use AES-GCM: javax.crypto.spec.GCMParameterSpec not found");
        }
    }
}
