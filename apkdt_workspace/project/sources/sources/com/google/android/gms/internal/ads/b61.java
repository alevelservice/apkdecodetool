package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.KeyPair;
import java.security.interfaces.ECPrivateKey;
import java.security.interfaces.ECPublicKey;
import java.security.spec.ECParameterSpec;
import java.security.spec.ECPoint;
import java.security.spec.EllipticCurve;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class b61 {

    /* renamed from: a, reason: collision with root package name */
    private ECPublicKey f5722a;

    public b61(ECPublicKey eCPublicKey) {
        this.f5722a = eCPublicKey;
    }

    public final d61 a(String str, byte[] bArr, byte[] bArr2, int i2, i61 i61Var) {
        byte[] bArr3;
        KeyPair a2 = f61.a(this.f5722a.getParams());
        ECPublicKey eCPublicKey = (ECPublicKey) a2.getPublic();
        ECPrivateKey eCPrivateKey = (ECPrivateKey) a2.getPrivate();
        ECPublicKey eCPublicKey2 = this.f5722a;
        try {
            ECParameterSpec params = eCPublicKey2.getParams();
            ECParameterSpec params2 = eCPrivateKey.getParams();
            int i3 = 1;
            if (params.getCurve().equals(params2.getCurve()) && params.getGenerator().equals(params2.getGenerator()) && params.getOrder().equals(params2.getOrder()) && params.getCofactor() == params2.getCofactor()) {
                byte[] a3 = f61.a(eCPrivateKey, eCPublicKey2.getW());
                EllipticCurve curve = eCPublicKey.getParams().getCurve();
                ECPoint w = eCPublicKey.getW();
                f61.a(w, curve);
                int bitLength = (f61.a(curve).subtract(BigInteger.ONE).bitLength() + 7) / 8;
                int i4 = e61.f6347a[i61Var.ordinal()];
                if (i4 == 1) {
                    int i5 = (bitLength * 2) + 1;
                    bArr3 = new byte[i5];
                    byte[] byteArray = w.getAffineX().toByteArray();
                    byte[] byteArray2 = w.getAffineY().toByteArray();
                    System.arraycopy(byteArray2, 0, bArr3, i5 - byteArray2.length, byteArray2.length);
                    System.arraycopy(byteArray, 0, bArr3, (bitLength + 1) - byteArray.length, byteArray.length);
                    bArr3[0] = 4;
                } else if (i4 != 2) {
                    if (i4 == 3) {
                        int i6 = bitLength + 1;
                        byte[] bArr4 = new byte[i6];
                        byte[] byteArray3 = w.getAffineX().toByteArray();
                        System.arraycopy(byteArray3, 0, bArr4, i6 - byteArray3.length, byteArray3.length);
                        bArr4[0] = (byte) (w.getAffineY().testBit(0) ? 3 : 2);
                        bArr3 = bArr4;
                    } else {
                        String valueOf = String.valueOf(i61Var);
                        StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 15);
                        sb.append("invalid format:");
                        sb.append(valueOf);
                        throw new GeneralSecurityException(sb.toString());
                    }
                } else {
                    int i7 = bitLength * 2;
                    bArr3 = new byte[i7];
                    byte[] byteArray4 = w.getAffineX().toByteArray();
                    if (byteArray4.length > bitLength) {
                        byteArray4 = Arrays.copyOfRange(byteArray4, byteArray4.length - bitLength, byteArray4.length);
                    }
                    byte[] byteArray5 = w.getAffineY().toByteArray();
                    if (byteArray5.length > bitLength) {
                        byteArray5 = Arrays.copyOfRange(byteArray5, byteArray5.length - bitLength, byteArray5.length);
                    }
                    System.arraycopy(byteArray5, 0, bArr3, i7 - byteArray5.length, byteArray5.length);
                    System.arraycopy(byteArray4, 0, bArr3, bitLength - byteArray4.length, byteArray4.length);
                }
                byte[] a4 = s51.a(bArr3, a3);
                Mac a5 = k61.f7624g.a(str);
                if (i2 <= a5.getMacLength() * 255) {
                    if (bArr != null && bArr.length != 0) {
                        a5.init(new SecretKeySpec(bArr, str));
                    } else {
                        a5.init(new SecretKeySpec(new byte[a5.getMacLength()], str));
                    }
                    byte[] doFinal = a5.doFinal(a4);
                    byte[] bArr5 = new byte[i2];
                    a5.init(new SecretKeySpec(doFinal, str));
                    byte[] bArr6 = new byte[0];
                    int i8 = 0;
                    while (true) {
                        a5.update(bArr6);
                        a5.update(bArr2);
                        a5.update((byte) i3);
                        bArr6 = a5.doFinal();
                        if (bArr6.length + i8 < i2) {
                            System.arraycopy(bArr6, 0, bArr5, i8, bArr6.length);
                            i8 += bArr6.length;
                            i3++;
                        } else {
                            System.arraycopy(bArr6, 0, bArr5, i8, i2 - i8);
                            return new d61(bArr3, bArr5);
                        }
                    }
                } else {
                    throw new GeneralSecurityException("size too large");
                }
            } else {
                throw new GeneralSecurityException("invalid public key spec");
            }
        } catch (IllegalArgumentException | NullPointerException e2) {
            throw new GeneralSecurityException(e2.toString());
        }
    }
}
