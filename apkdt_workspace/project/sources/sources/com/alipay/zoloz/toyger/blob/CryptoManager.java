package com.alipay.zoloz.toyger.blob;

import java.security.SecureRandom;
import java.security.interfaces.RSAPublicKey;

/* loaded from: classes.dex */
public class CryptoManager {
    private static final int AES_LENGTH = 16;
    private static final String TAG = "CryptoManager";
    private byte[] aesCypher;
    private byte[] aesKey;
    private RSAPublicKey publicKey;

    public CryptoManager(String str) {
        try {
            this.publicKey = RSAEncrypt.loadPublicKeyByStr(str);
            this.aesKey = randomBytes(16);
            this.aesCypher = RSAEncrypt.encrypt(this.publicKey, this.aesKey);
        } catch (Exception unused) {
            throw new IllegalArgumentException("fail to init crypto manager");
        }
    }

    private byte[] randomBytes(int i2) {
        byte[] bArr = new byte[i2];
        new SecureRandom().nextBytes(bArr);
        return bArr;
    }

    public byte[] encrypt(byte[] bArr) {
        return AESEncrypt.encrypt(bArr, this.aesKey);
    }

    public byte[] getAESCypher() {
        return this.aesCypher;
    }
}
