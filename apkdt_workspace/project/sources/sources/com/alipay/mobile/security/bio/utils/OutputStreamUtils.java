package com.alipay.mobile.security.bio.utils;

import java.io.IOException;
import java.io.OutputStream;

/* loaded from: classes.dex */
public class OutputStreamUtils {
    public static void close(OutputStream outputStream) {
        if (outputStream != null) {
            try {
                outputStream.close();
            } catch (IOException e2) {
                e2.toString();
            }
        }
    }
}
