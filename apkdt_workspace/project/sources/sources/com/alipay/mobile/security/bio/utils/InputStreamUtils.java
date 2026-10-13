package com.alipay.mobile.security.bio.utils;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class InputStreamUtils {
    public static void close(InputStream inputStream) {
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    public static String input2String(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        while (true) {
            int read = inputStream.read();
            if (read != -1) {
                byteArrayOutputStream.write(read);
            } else {
                return byteArrayOutputStream.toString();
            }
        }
    }

    public static final byte[] input2byte(InputStream inputStream) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = new byte[1024];
        while (true) {
            byte[] bArr2 = null;
            try {
                int read = inputStream.read(bArr, 0, 100);
                if (read > 0) {
                    byteArrayOutputStream.write(bArr, 0, read);
                } else {
                    bArr2 = byteArrayOutputStream.toByteArray();
                    byteArrayOutputStream.close();
                    return bArr2;
                }
            } catch (OutOfMemoryError e2) {
                e2.toString();
                return bArr2;
            }
        }
    }
}
