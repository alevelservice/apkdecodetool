package com.google.android.gms.common.util;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class g {
    static {
        new String[]{"android.", "com.android.", "dalvik.", "java.", "javax."};
    }

    @KeepForSdk
    public static boolean a(Context context, Throwable th) {
        return a(context, th, 536870912);
    }

    private static boolean a(Context context, Throwable th, int i2) {
        try {
            com.google.android.gms.common.internal.m.a(context);
            com.google.android.gms.common.internal.m.a(th);
        } catch (Exception unused) {
        }
        return false;
    }
}
