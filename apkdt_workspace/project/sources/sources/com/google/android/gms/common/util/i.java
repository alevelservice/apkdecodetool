package com.google.android.gms.common.util;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Build;
import com.google.android.gms.common.annotation.KeepForSdk;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class i {

    /* renamed from: a, reason: collision with root package name */
    private static Boolean f5419a;

    /* renamed from: b, reason: collision with root package name */
    private static Boolean f5420b;

    /* renamed from: c, reason: collision with root package name */
    private static Boolean f5421c;

    /* renamed from: d, reason: collision with root package name */
    private static Boolean f5422d;

    @KeepForSdk
    public static boolean a(Context context) {
        if (f5421c == null) {
            PackageManager packageManager = context.getPackageManager();
            f5421c = Boolean.valueOf(packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services"));
        }
        return f5421c.booleanValue();
    }

    @KeepForSdk
    @TargetApi(21)
    public static boolean b(Context context) {
        return e(context);
    }

    @KeepForSdk
    @TargetApi(20)
    public static boolean c(Context context) {
        if (f5419a == null) {
            f5419a = Boolean.valueOf(o.g() && context.getPackageManager().hasSystemFeature("android.hardware.type.watch"));
        }
        return f5419a.booleanValue();
    }

    @KeepForSdk
    @TargetApi(26)
    public static boolean d(Context context) {
        if (!c(context)) {
            return false;
        }
        if (o.j()) {
            return e(context) && !o.k();
        }
        return true;
    }

    @TargetApi(21)
    private static boolean e(Context context) {
        if (f5420b == null) {
            f5420b = Boolean.valueOf(o.h() && context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f5420b.booleanValue();
    }

    public static boolean f(Context context) {
        if (f5422d == null) {
            f5422d = Boolean.valueOf(context.getPackageManager().hasSystemFeature("android.hardware.type.iot") || context.getPackageManager().hasSystemFeature("android.hardware.type.embedded"));
        }
        return f5422d.booleanValue();
    }

    @KeepForSdk
    public static boolean a() {
        return "user".equals(Build.TYPE);
    }
}
