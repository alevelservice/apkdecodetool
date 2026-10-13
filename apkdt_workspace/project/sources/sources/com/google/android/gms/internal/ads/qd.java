package com.google.android.gms.internal.ads;

import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.util.VisibleForTesting;

/* compiled from: com.google.android.gms:play-services-ads-lite@@18.1.0 */
/* loaded from: classes.dex */
public class qd {
    public static void a(String str) {
        a(3);
    }

    public static void b(String str) {
        a(6);
    }

    public static void c(String str) {
        a(4);
    }

    public static void d(String str) {
        a(5);
    }

    @VisibleForTesting
    private static String e(String str) {
        StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
        if (stackTrace.length < 4) {
            return str;
        }
        int lineNumber = stackTrace[3].getLineNumber();
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 13);
        sb.append(str);
        sb.append(" @");
        sb.append(lineNumber);
        return sb.toString();
    }

    public static void f(String str) {
        d(str, null);
    }

    public static void a(String str, Throwable th) {
        a(3);
    }

    public static void b(String str, Throwable th) {
        a(6);
    }

    public static void c(String str, Throwable th) {
        a(5);
    }

    public static void d(String str, @Nullable Throwable th) {
        if (a(5)) {
            if (th != null) {
                c(e(str), th);
            } else {
                d(e(str));
            }
        }
    }

    public static boolean a(int i2) {
        return i2 >= 5 || Log.isLoggable("Ads", i2);
    }
}
