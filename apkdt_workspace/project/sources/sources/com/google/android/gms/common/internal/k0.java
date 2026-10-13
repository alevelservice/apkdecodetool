package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
/* loaded from: classes.dex */
public final class k0 {

    /* renamed from: a, reason: collision with root package name */
    private static Object f5324a = new Object();

    /* renamed from: b, reason: collision with root package name */
    @GuardedBy("sLock")
    private static boolean f5325b;

    /* renamed from: c, reason: collision with root package name */
    private static String f5326c;

    /* renamed from: d, reason: collision with root package name */
    private static int f5327d;

    public static String a(Context context) {
        c(context);
        return f5326c;
    }

    public static int b(Context context) {
        c(context);
        return f5327d;
    }

    private static void c(Context context) {
        Bundle bundle;
        synchronized (f5324a) {
            if (f5325b) {
                return;
            }
            f5325b = true;
            try {
                bundle = com.google.android.gms.common.o.c.a(context).a(context.getPackageName(), 128).metaData;
            } catch (PackageManager.NameNotFoundException unused) {
            }
            if (bundle == null) {
                return;
            }
            f5326c = bundle.getString("com.google.app.id");
            f5327d = bundle.getInt("com.google.android.gms.version");
        }
    }
}
