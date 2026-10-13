package com.alipay.mobile.security.bio.security;

import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public class AESEncrypt {
    public static final String VIPARA = "4306020520119888";

    public static byte[] decrypt(byte[] bArr, String str) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec("4306020520119888".getBytes());
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, new SecretKeySpec(str.getBytes(), "AES"), ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException e2) {
            e2.toString();
            return null;
        } catch (InvalidKeyException e3) {
            e3.toString();
            return null;
        } catch (NoSuchAlgorithmException e4) {
            e4.toString();
            return null;
        } catch (BadPaddingException e5) {
            e5.toString();
            return null;
        } catch (IllegalBlockSizeException e6) {
            e6.toString();
            return null;
        } catch (NoSuchPaddingException e7) {
            e7.toString();
            return null;
        }
    }

    public static byte[] encrypt(String str, String str2) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec("4306020520119888".getBytes());
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, new SecretKeySpec(str2.getBytes(), "AES"), ivParameterSpec);
            return cipher.doFinal(str.getBytes());
        } catch (InvalidAlgorithmParameterException e2) {
            e2.toString();
            return null;
        } catch (InvalidKeyException e3) {
            e3.toString();
            return null;
        } catch (NoSuchAlgorithmException e4) {
            e4.toString();
            return null;
        } catch (BadPaddingException e5) {
            e5.toString();
            return null;
        } catch (IllegalBlockSizeException e6) {
            e6.toString();
            return null;
        } catch (NoSuchPaddingException e7) {
            e7.toString();
            return null;
        }
    }

    public static byte[] decrypt(byte[] bArr, byte[] bArr2) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec("4306020520119888".getBytes());
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(2, new SecretKeySpec(bArr2, "AES"), ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException e2) {
            e2.toString();
            return null;
        } catch (InvalidKeyException e3) {
            e3.toString();
            return null;
        } catch (NoSuchAlgorithmException e4) {
            e4.toString();
            return null;
        } catch (BadPaddingException e5) {
            e5.toString();
            return null;
        } catch (IllegalBlockSizeException e6) {
            e6.toString();
            return null;
        } catch (NoSuchPaddingException e7) {
            e7.toString();
            return null;
        }
    }

    public static byte[] encrypt(byte[] bArr, byte[] bArr2) {
        try {
            IvParameterSpec ivParameterSpec = new IvParameterSpec("4306020520119888".getBytes());
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
            cipher.init(1, new SecretKeySpec(bArr2, "AES"), ivParameterSpec);
            return cipher.doFinal(bArr);
        } catch (InvalidAlgorithmParameterException e2) {
            e2.toString();
            return null;
        } catch (InvalidKeyException e3) {
            e3.toString();
            return null;
        } catch (NoSuchAlgorithmException e4) {
            e4.toString();
            return null;
        } catch (BadPaddingException e5) {
            e5.toString();
            return null;
        } catch (IllegalBlockSizeException e6) {
            e6.toString();
            return null;
        } catch (NoSuchPaddingException e7) {
            e7.toString();
            return null;
        }
    }
}
