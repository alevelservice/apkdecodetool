package com.alipay.zoloz.zface.utils;

import android.os.Handler;
import android.os.Looper;

/* loaded from: classes.dex */
public class Tools {
    public static void runMainLooper(Runnable runnable) {
        runMainLooper(runnable, 0L);
    }

    public static void runMainLooper(Runnable runnable, long j2) {
        if (runnable == null) {
            return;
        }
        new Handler(Looper.getMainLooper()).postDelayed(runnable, j2);
    }
}
