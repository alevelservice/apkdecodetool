package com.zoloz.rpc;

import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* compiled from: SigApiUtil.java */
/* loaded from: classes2.dex */
public class e {

    /* renamed from: a, reason: collision with root package name */
    public static String f16682a = "";

    /* renamed from: b, reason: collision with root package name */
    public static final char[] f16683b = "0123456789ABCDEF".toCharArray();

    public static String a(String str, HashMap<String, String> hashMap) {
        if (hashMap == null) {
            return "";
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<String, String> entry : hashMap.entrySet()) {
            arrayList.add(entry.getKey() + entry.getValue());
        }
        String[] strArr = new String[arrayList.size() + 1];
        int i2 = 0;
        strArr[0] = str;
        Collections.sort(arrayList);
        while (i2 < arrayList.size()) {
            int i3 = i2 + 1;
            strArr[i3] = (String) arrayList.get(i2);
            i2 = i3;
        }
        return a(strArr);
    }

    public static String a(String[] strArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (String str : strArr) {
            stringBuffer.append(str);
        }
        String a2 = a(stringBuffer.toString(), f16682a);
        return a2 != null ? a2.toUpperCase() : a2;
    }

    public static String a(String str, String str2) {
        try {
            SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            return a(mac.doFinal(str.getBytes()));
        } catch (Exception e2) {
            e2.getMessage();
            return "";
        }
    }

    public static String a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        char[] cArr = new char[bArr.length * 2];
        for (int i2 = 0; i2 < bArr.length; i2++) {
            int i3 = i2 * 2;
            char[] cArr2 = f16683b;
            cArr[i3] = cArr2[(bArr[i2] & 240) >> 4];
            cArr[i3 + 1] = cArr2[bArr[i2] & 15];
        }
        return new String(cArr);
    }
}
