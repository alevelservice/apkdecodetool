package com.google.android.gms.common;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import com.alipay.mobile.security.bio.utils.FileUtil;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.k0;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.common.util.o;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@ShowFirstParty
@KeepForSdk
/* loaded from: classes.dex */
public class h {

    /* renamed from: a, reason: collision with root package name */
    @KeepForSdk
    @Deprecated
    public static final int f5182a = 12451000;

    /* renamed from: b, reason: collision with root package name */
    private static boolean f5183b = false;

    /* renamed from: c, reason: collision with root package name */
    @VisibleForTesting
    private static boolean f5184c = false;

    /* renamed from: d, reason: collision with root package name */
    @VisibleForTesting
    @KeepForSdk
    static final AtomicBoolean f5185d = new AtomicBoolean();

    /* renamed from: e, reason: collision with root package name */
    private static final AtomicBoolean f5186e = new AtomicBoolean();

    @VisibleForTesting
    @KeepForSdk
    @Deprecated
    public static String a(int i2) {
        return ConnectionResult.m(i2);
    }

    @KeepForSdk
    public static Context b(Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @KeepForSdk
    @Deprecated
    public static boolean b(int i2) {
        return i2 == 1 || i2 == 2 || i2 == 3 || i2 == 9;
    }

    @KeepForSdk
    public static Resources c(Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @ShowFirstParty
    @KeepForSdk
    public static boolean d(Context context) {
        if (!f5184c) {
            try {
                PackageInfo b2 = com.google.android.gms.common.o.c.a(context).b("com.google.android.gms", 64);
                i.a(context);
                if (b2 != null && !i.a(b2, false) && i.a(b2, true)) {
                    f5183b = true;
                } else {
                    f5183b = false;
                }
            } catch (PackageManager.NameNotFoundException unused) {
            } finally {
                f5184c = true;
            }
        }
        return f5183b || !com.google.android.gms.common.util.i.a();
    }

    @KeepForSdk
    @TargetApi(18)
    public static boolean e(Context context) {
        Bundle applicationRestrictions;
        return o.e() && (applicationRestrictions = ((UserManager) context.getSystemService("user")).getApplicationRestrictions(context.getPackageName())) != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }

    @KeepForSdk
    @Deprecated
    public static int a(Context context, int i2) {
        try {
            context.getResources().getString(j.common_google_play_services_unknown_issue);
        } catch (Throwable unused) {
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f5186e.get()) {
            int b2 = k0.b(context);
            if (b2 != 0) {
                int i3 = f5182a;
                if (b2 != i3) {
                    StringBuilder sb = new StringBuilder(320);
                    sb.append("The meta-data tag in your app's AndroidManifest.xml does not have the right value.  Expected ");
                    sb.append(i3);
                    sb.append(" but found ");
                    sb.append(b2);
                    sb.append(".  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
                    throw new IllegalStateException(sb.toString());
                }
            } else {
                throw new IllegalStateException("A required meta-data tag in your app's AndroidManifest.xml does not exist.  You must have the following declaration within the <application> element:     <meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />");
            }
        }
        return a(context, (com.google.android.gms.common.util.i.d(context) || com.google.android.gms.common.util.i.f(context)) ? false : true, i2);
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static boolean b(Context context, int i2) {
        if (i2 == 18) {
            return true;
        }
        if (i2 == 1) {
            return a(context, "com.google.android.gms");
        }
        return false;
    }

    @VisibleForTesting
    private static int a(Context context, boolean z, int i2) {
        m.a(i2 >= 0);
        PackageManager packageManager = context.getPackageManager();
        PackageInfo packageInfo = null;
        if (z) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused) {
                return 9;
            }
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            i.a(context);
            if (!i.a(packageInfo2, true)) {
                return 9;
            }
            if (z && (!i.a(packageInfo, true) || !packageInfo.signatures[0].equals(packageInfo2.signatures[0]))) {
                return 9;
            }
            if (com.google.android.gms.common.util.x.a(packageInfo2.versionCode) < com.google.android.gms.common.util.x.a(i2)) {
                int i3 = packageInfo2.versionCode;
                StringBuilder sb = new StringBuilder(77);
                sb.append("Google Play services out of date.  Requires ");
                sb.append(i2);
                sb.append(" but found ");
                sb.append(i3);
                sb.toString();
                return 2;
            }
            ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
            if (applicationInfo == null) {
                try {
                    applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                } catch (PackageManager.NameNotFoundException unused2) {
                    return 1;
                }
            }
            return !applicationInfo.enabled ? 3 : 0;
        } catch (PackageManager.NameNotFoundException unused3) {
            return 1;
        }
    }

    @KeepForSdk
    @TargetApi(19)
    @Deprecated
    public static boolean a(Context context, int i2, String str) {
        return com.google.android.gms.common.util.t.a(context, i2, str);
    }

    @ShowFirstParty
    @KeepForSdk
    @Deprecated
    public static int a(Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            return 0;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @TargetApi(21)
    public static boolean a(Context context, String str) {
        ApplicationInfo applicationInfo;
        boolean equals = str.equals("com.google.android.gms");
        if (o.h()) {
            try {
                Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
                while (it.hasNext()) {
                    if (str.equals(it.next().getAppPackageName())) {
                        return true;
                    }
                }
            } catch (Exception unused) {
                return false;
            }
        }
        try {
            applicationInfo = context.getPackageManager().getApplicationInfo(str, FileUtil.STREAM_BUFFER_SIZE);
        } catch (PackageManager.NameNotFoundException unused2) {
        }
        if (equals) {
            return applicationInfo.enabled;
        }
        return applicationInfo.enabled && !e(context);
    }
}
