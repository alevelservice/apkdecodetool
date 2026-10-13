package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class h31 {

    /* renamed from: a, reason: collision with root package name */
    private static Cipher f6990a;

    /* renamed from: b, reason: collision with root package name */
    private static final Object f6991b = new Object();

    /* renamed from: c, reason: collision with root package name */
    private static final Object f6992c = new Object();

    public h31(SecureRandom secureRandom) {
    }

    public final byte[] a(String str) {
        try {
            byte[] a2 = qd0.a(str, false);
            if (a2.length == 32) {
                byte[] bArr = new byte[16];
                ByteBuffer.wrap(a2, 4, 16).get(bArr);
                for (int i2 = 0; i2 < 16; i2++) {
                    bArr[i2] = (byte) (bArr[i2] ^ 68);
                }
                return bArr;
            }
            throw new l51(this);
        } catch (IllegalArgumentException e2) {
            throw new l51(this, e2);
        }
    }

    public final String a(byte[] bArr, byte[] bArr2) {
        byte[] doFinal;
        byte[] iv;
        if (bArr.length == 16) {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                synchronized (f6991b) {
                    a().init(1, secretKeySpec, (SecureRandom) null);
                    doFinal = a().doFinal(bArr2);
                    iv = a().getIV();
                }
                int length = doFinal.length + iv.length;
                ByteBuffer allocate = ByteBuffer.allocate(length);
                allocate.put(iv).put(doFinal);
                allocate.flip();
                byte[] bArr3 = new byte[length];
                allocate.get(bArr3);
                return qd0.a(bArr3, false);
            } catch (InvalidKeyException e2) {
                throw new l51(this, e2);
            } catch (NoSuchAlgorithmException e3) {
                throw new l51(this, e3);
            } catch (BadPaddingException e4) {
                throw new l51(this, e4);
            } catch (IllegalBlockSizeException e5) {
                throw new l51(this, e5);
            } catch (NoSuchPaddingException e6) {
                throw new l51(this, e6);
            }
        }
        throw new l51(this);
    }

    public final byte[] a(byte[] bArr, String str) {
        byte[] doFinal;
        if (bArr.length == 16) {
            try {
                byte[] a2 = qd0.a(str, false);
                if (a2.length > 16) {
                    ByteBuffer allocate = ByteBuffer.allocate(a2.length);
                    allocate.put(a2);
                    allocate.flip();
                    byte[] bArr2 = new byte[16];
                    byte[] bArr3 = new byte[a2.length - 16];
                    allocate.get(bArr2);
                    allocate.get(bArr3);
                    SecretKeySpec secretKeySpec = new SecretKeySpec(bArr, "AES");
                    synchronized (f6991b) {
                        a().init(2, secretKeySpec, new IvParameterSpec(bArr2));
                        doFinal = a().doFinal(bArr3);
                    }
                    return doFinal;
                }
                throw new l51(this);
            } catch (IllegalArgumentException e2) {
                throw new l51(this, e2);
            } catch (InvalidAlgorithmParameterException e3) {
                throw new l51(this, e3);
            } catch (InvalidKeyException e4) {
                throw new l51(this, e4);
            } catch (NoSuchAlgorithmException e5) {
                throw new l51(this, e5);
            } catch (BadPaddingException e6) {
                throw new l51(this, e6);
            } catch (IllegalBlockSizeException e7) {
                throw new l51(this, e7);
            } catch (NoSuchPaddingException e8) {
                throw new l51(this, e8);
            }
        }
        throw new l51(this);
    }

    private static Cipher a() {
        Cipher cipher;
        synchronized (f6992c) {
            if (f6990a == null) {
                f6990a = Cipher.getInstance("AES/CBC/PKCS5Padding");
            }
            cipher = f6990a;
        }
        return cipher;
    }
}
