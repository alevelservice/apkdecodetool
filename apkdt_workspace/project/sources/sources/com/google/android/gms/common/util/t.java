package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class t {
    @KeepForSdk
    public static boolean a(Context context, int i2) {
        if (!a(context, i2, "com.google.android.gms")) {
            return false;
        }
        try {
            return com.google.android.gms.common.i.a(context).a(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException unused) {
            Log.isLoggable("UidVerifier", 3);
            return false;
        }
    }

    @KeepForSdk
    @TargetApi(19)
    public static boolean a(Context context, int i2, String str) {
        return com.google.android.gms.common.o.c.a(context).a(i2, str);
    }
}
