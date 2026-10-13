package com.alipay.mobile.security.bio.security;

import java.security.SecureRandom;

/* loaded from: classes.dex */
public class RandomHelper {
    public static byte[] random(int i2) {
        if (i2 > 0) {
            byte[] bArr = new byte[i2];
            new SecureRandom().nextBytes(bArr);
            return bArr;
        }
        throw new IllegalArgumentException("number can not below zero");
    }
}
