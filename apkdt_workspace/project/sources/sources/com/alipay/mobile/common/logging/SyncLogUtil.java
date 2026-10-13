package com.alipay.mobile.common.logging;

import android.content.Context;

/* loaded from: classes.dex */
public class SyncLogUtil {

    /* renamed from: a, reason: collision with root package name */
    private static boolean f3356a;

    private SyncLogUtil() {
    }

    private static boolean a(Context context) {
        try {
            return (context.getApplicationInfo().flags & 2) != 0;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void init(Context context) {
        f3356a = a(context);
    }

    public static boolean isDebuggable() {
        return f3356a;
    }
}
