package com.google.android.gms.vision.clearcut;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Keep;
import androidx.annotation.Nullable;
import com.google.android.gms.common.o.c;
import com.google.android.gms.internal.vision.r1;
import com.google.android.gms.vision.L;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
@Keep
/* loaded from: classes.dex */
public class LogUtils {
    public static r1 zza(Context context) {
        r1.a m = r1.m();
        m.a(context.getPackageName());
        String zzb = zzb(context);
        if (zzb != null) {
            m.b(zzb);
        }
        return (r1) m.j();
    }

    @Nullable
    private static String zzb(Context context) {
        try {
            return c.a(context).b(context.getPackageName(), 0).versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            L.e(e2, "Unable to find calling package info for %s", context.getPackageName());
            return null;
        }
    }
}
