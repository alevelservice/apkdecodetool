package com.google.android.gms.common.o;

import android.content.Context;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.util.o;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static Context f5354a;

    /* renamed from: b, reason: collision with root package name */
    private static Boolean f5355b;

    @KeepForSdk
    public static synchronized boolean a(Context context) {
        synchronized (a.class) {
            Context applicationContext = context.getApplicationContext();
            if (f5354a != null && f5355b != null && f5354a == applicationContext) {
                return f5355b.booleanValue();
            }
            f5355b = null;
            if (o.k()) {
                f5355b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f5355b = true;
                } catch (ClassNotFoundException unused) {
                    f5355b = false;
                }
            }
            f5354a = applicationContext;
            return f5355b.booleanValue();
        }
    }
}
