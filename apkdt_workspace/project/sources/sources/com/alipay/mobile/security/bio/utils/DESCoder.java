package com.alipay.mobile.security.bio.utils;

import android.util.Base64;
import java.security.NoSuchAlgorithmException;
import javax.crypto.Cipher;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public abstract class DESCoder {
    public static final String ALGORITHM = "DESede";

    private static byte[] build3DesKey(String str) {
        byte[] bArr = new byte[24];
        byte[] bytes = str.getBytes("UTF-8");
        if (bArr.length > bytes.length) {
            System.arraycopy(bytes, 0, bArr, 0, bytes.length);
        } else {
            System.arraycopy(bytes, 0, bArr, 0, bArr.length);
        }
        return bArr;
    }

    public static byte[] decryptBASE64(String str) {
        return Base64.decode(str, 0);
    }

    public static byte[] decryptMode(byte[] bArr, String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(build3DesKey(str), ALGORITHM);
            Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(2, secretKeySpec);
            return cipher.doFinal(bArr);
        } catch (NoSuchAlgorithmException e2) {
            e2.toString();
            return null;
        } catch (NoSuchPaddingException e3) {
            e3.toString();
            return null;
        } catch (Exception e4) {
            e4.toString();
            return null;
        }
    }

    public static String encryptBASE64(byte[] bArr) {
        return Base64.encodeToString(bArr, 0);
    }

    public static byte[] encryptMode(byte[] bArr, String str) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(build3DesKey(str), ALGORITHM);
            Cipher cipher = Cipher.getInstance(ALGORITHM);
            cipher.init(1, secretKeySpec);
            return cipher.doFinal(bArr);
        } catch (NoSuchAlgorithmException e2) {
            e2.toString();
            return null;
        } catch (NoSuchPaddingException e3) {
            e3.toString();
            return null;
        } catch (Exception e4) {
            e4.toString();
            return null;
        }
    }
}
