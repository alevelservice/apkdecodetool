package com.alipay.mobile.security.bio.utils;

import com.alipay.mobile.security.zim.biz.ZimPlatform;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* loaded from: classes.dex */
public class SignHelper {
    public static String MD5(String str) {
        try {
            if (StringUtil.isNullorEmpty(str)) {
                return null;
            }
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("UTF-8"));
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < 16; i2++) {
                sb.append(String.format("%02x", Byte.valueOf(digest[i2])));
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }

    public static String SHA1(String str) {
        try {
            return bytetoString(MessageDigest.getInstance("SHA-1").digest(str.getBytes()));
        } catch (NoSuchAlgorithmException e2) {
            e2.toString();
            return null;
        }
    }

    private static String bytetoString(byte[] bArr) {
        String str = "";
        for (int i2 = 1; i2 < bArr.length; i2++) {
            String hexString = Integer.toHexString(bArr[i2] & 255);
            str = hexString.length() == 1 ? str + ZimPlatform.REASON_0 + hexString : str + hexString;
        }
        return str.toLowerCase();
    }

    public static String MD5(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            byte[] digest = messageDigest.digest();
            StringBuilder sb = new StringBuilder();
            for (int i2 = 0; i2 < 16; i2++) {
                sb.append(String.format("%02x", Byte.valueOf(digest[i2])));
            }
            return sb.toString();
        } catch (Exception unused) {
            return null;
        }
    }
}
