package com.alipay.mobile.security.bio.utils;

/* loaded from: classes.dex */
public class LineNo {
    public static String getFileName() {
        return Thread.currentThread().getStackTrace()[2].getFileName();
    }

    public static int getLineNumber() {
        return Thread.currentThread().getStackTrace()[2].getLineNumber();
    }
}
