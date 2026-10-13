package com.google.gson.internal;

import com.alipay.mobile.security.bio.utils.HanziToPinyin;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Locale;

/* compiled from: PreJava9DateFormatProvider.java */
/* loaded from: classes.dex */
public class i {
    public static DateFormat a(int i2, int i3) {
        return new SimpleDateFormat(a(i2) + HanziToPinyin.Token.SEPARATOR + b(i3), Locale.US);
    }

    private static String b(int i2) {
        if (i2 == 0 || i2 == 1) {
            return "h:mm:ss a z";
        }
        if (i2 == 2) {
            return "h:mm:ss a";
        }
        if (i2 == 3) {
            return "h:mm a";
        }
        throw new IllegalArgumentException("Unknown DateFormat style: " + i2);
    }

    private static String a(int i2) {
        if (i2 == 0) {
            return "EEEE, MMMM d, yyyy";
        }
        if (i2 == 1) {
            return "MMMM d, yyyy";
        }
        if (i2 == 2) {
            return "MMM d, yyyy";
        }
        if (i2 == 3) {
            return "M/d/yy";
        }
        throw new IllegalArgumentException("Unknown DateFormat style: " + i2);
    }
}
