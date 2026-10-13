package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class p51 implements l01 {

    /* renamed from: a, reason: collision with root package name */
    private final byte[] f8650a;

    /* renamed from: b, reason: collision with root package name */
    private final byte[] f8651b;

    /* renamed from: c, reason: collision with root package name */
    private final SecretKeySpec f8652c;

    /* renamed from: d, reason: collision with root package name */
    private final int f8653d;

    public p51(byte[] bArr, int i2) {
        if (i2 != 12 && i2 != 16) {
            throw new IllegalArgumentException("IV size should be either 12 or 16 bytes");
        }
        this.f8653d = i2;
        a71.a(bArr.length);
        this.f8652c = new SecretKeySpec(bArr, "AES");
        Cipher cipher = Cipher.getInstance("AES/ECB/NOPADDING");
        cipher.init(1, this.f8652c);
        this.f8650a = a(cipher.doFinal(new byte[16]));
        this.f8651b = a(this.f8650a);
    }

    private static byte[] a(byte[] bArr) {
        byte[] bArr2 = new byte[16];
        int i2 = 0;
        while (i2 < 15) {
            int i3 = i2 + 1;
            bArr2[i2] = (byte) ((bArr[i2] << 1) ^ ((bArr[i3] & 255) >>> 7));
            i2 = i3;
        }
        bArr2[15] = (byte) ((bArr[15] << 1) ^ ((bArr[0] & 128) != 0 ? 135 : 0));
        return bArr2;
    }

    private static byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        byte[] bArr3 = new byte[length];
        for (int i2 = 0; i2 < length; i2++) {
            bArr3[i2] = (byte) (bArr[i2] ^ bArr2[i2]);
        }
        return bArr3;
    }

    private final byte[] a(Cipher cipher, int i2, byte[] bArr, int i3, int i4) {
        byte[] bArr2;
        byte[] bArr3 = new byte[16];
        bArr3[15] = (byte) i2;
        if (i4 == 0) {
            return cipher.doFinal(b(bArr3, this.f8650a));
        }
        byte[] doFinal = cipher.doFinal(bArr3);
        byte[] bArr4 = doFinal;
        int i5 = 0;
        while (i4 - i5 > 16) {
            for (int i6 = 0; i6 < 16; i6++) {
                bArr4[i6] = (byte) (bArr4[i6] ^ bArr[(i3 + i5) + i6]);
            }
            bArr4 = cipher.doFinal(bArr4);
            i5 += 16;
        }
        byte[] copyOfRange = Arrays.copyOfRange(bArr, i5 + i3, i3 + i4);
        if (copyOfRange.length == 16) {
            bArr2 = b(copyOfRange, this.f8650a);
        } else {
            byte[] copyOf = Arrays.copyOf(this.f8651b, 16);
            for (int i7 = 0; i7 < copyOfRange.length; i7++) {
                copyOf[i7] = (byte) (copyOf[i7] ^ copyOfRange[i7]);
            }
            copyOf[copyOfRange.length] = (byte) (copyOf[copyOfRange.length] ^ 128);
            bArr2 = copyOf;
        }
        return cipher.doFinal(b(bArr4, bArr2));
    }

    @Override // com.google.android.gms.internal.ads.l01
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        int i2 = this.f8653d;
        if (length <= (Integer.MAX_VALUE - i2) - 16) {
            byte[] bArr3 = new byte[bArr.length + i2 + 16];
            byte[] a2 = w61.a(i2);
            System.arraycopy(a2, 0, bArr3, 0, this.f8653d);
            Cipher cipher = Cipher.getInstance("AES/ECB/NOPADDING");
            cipher.init(1, this.f8652c);
            byte[] a3 = a(cipher, 0, a2, 0, a2.length);
            byte[] bArr4 = bArr2 == null ? new byte[0] : bArr2;
            byte[] a4 = a(cipher, 1, bArr4, 0, bArr4.length);
            Cipher cipher2 = Cipher.getInstance("AES/CTR/NOPADDING");
            cipher2.init(1, this.f8652c, new IvParameterSpec(a3));
            cipher2.doFinal(bArr, 0, bArr.length, bArr3, this.f8653d);
            byte[] a5 = a(cipher, 2, bArr3, this.f8653d, bArr.length);
            int length2 = bArr.length + this.f8653d;
            for (int i3 = 0; i3 < 16; i3++) {
                bArr3[length2 + i3] = (byte) ((a4[i3] ^ a3[i3]) ^ a5[i3]);
            }
            return bArr3;
        }
        throw new GeneralSecurityException("plaintext too long");
    }
}
