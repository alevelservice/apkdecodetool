package com.zoloz.dfp;

import java.util.Map;

/* loaded from: classes2.dex */
class Signer {

    /* renamed from: a, reason: collision with root package name */
    public static String f16654a = "modified";

    /* renamed from: b, reason: collision with root package name */
    public static String f16655b = "dfp";

    static {
        System.loadLibrary("toyger");
    }

    public static byte[] a(byte[] bArr) {
        Map<String, Object> checkSignature = checkSignature(bArr);
        byte[] bArr2 = (byte[]) checkSignature.get(f16655b);
        if (((Boolean) checkSignature.get(f16654a)).booleanValue()) {
            return null;
        }
        return bArr2;
    }

    public static native Map<String, Object> checkSignature(byte[] bArr);

    public static native byte[] sign(byte[] bArr);
}
