package com.google.android.gms.common.util;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Process;
import android.os.WorkSource;
import androidx.annotation.Nullable;
import com.ap.zoloz.hummer.h5.H5PluginHandler;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* compiled from: com.google.android.gms:play-services-basement@@17.1.1 */
@KeepForSdk
/* loaded from: classes.dex */
public class u {

    /* renamed from: a, reason: collision with root package name */
    private static final Method f5428a;

    /* renamed from: b, reason: collision with root package name */
    private static final Method f5429b;

    /* renamed from: c, reason: collision with root package name */
    private static final Method f5430c;

    /* renamed from: d, reason: collision with root package name */
    private static final Method f5431d;

    static {
        Process.myUid();
        f5428a = e();
        f5429b = f();
        f5430c = g();
        a();
        f5431d = b();
        c();
        d();
    }

    private static WorkSource a(int i2, String str) {
        WorkSource workSource = new WorkSource();
        a(workSource, i2, str);
        return workSource;
    }

    private static int b(WorkSource workSource) {
        Method method = f5430c;
        if (method != null) {
            try {
                return ((Integer) method.invoke(workSource, new Object[0])).intValue();
            } catch (Exception unused) {
            }
        }
        return 0;
    }

    private static final Method c() {
        if (o.l()) {
            try {
                return WorkSource.class.getMethod("createWorkChain", new Class[0]);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    @SuppressLint({"PrivateApi"})
    private static final Method d() {
        if (o.l()) {
            try {
                return Class.forName("android.os.WorkSource$WorkChain").getMethod("addNode", Integer.TYPE, String.class);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static Method e() {
        try {
            return WorkSource.class.getMethod(H5PluginHandler.HUMMER_FOUNDATION_ADD, Integer.TYPE);
        } catch (Exception unused) {
            return null;
        }
    }

    private static Method f() {
        if (o.e()) {
            try {
                return WorkSource.class.getMethod(H5PluginHandler.HUMMER_FOUNDATION_ADD, Integer.TYPE, String.class);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static Method g() {
        try {
            return WorkSource.class.getMethod("size", new Class[0]);
        } catch (Exception unused) {
            return null;
        }
    }

    @Nullable
    @KeepForSdk
    public static WorkSource a(Context context, @Nullable String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo a2 = com.google.android.gms.common.o.c.a(context).a(str, 0);
                if (a2 == null) {
                    String valueOf = String.valueOf(str);
                    if (valueOf.length() != 0) {
                        "Could not get applicationInfo from package: ".concat(valueOf);
                    } else {
                        new String("Could not get applicationInfo from package: ");
                    }
                    return null;
                }
                return a(a2.uid, str);
            } catch (PackageManager.NameNotFoundException unused) {
                String valueOf2 = String.valueOf(str);
                if (valueOf2.length() != 0) {
                    "Could not find package: ".concat(valueOf2);
                } else {
                    new String("Could not find package: ");
                }
            }
        }
        return null;
    }

    private static Method b() {
        if (o.e()) {
            try {
                return WorkSource.class.getMethod("getName", Integer.TYPE);
            } catch (Exception unused) {
            }
        }
        return null;
    }

    private static void a(WorkSource workSource, int i2, @Nullable String str) {
        if (f5429b != null) {
            if (str == null) {
                str = "";
            }
            try {
                f5429b.invoke(workSource, Integer.valueOf(i2), str);
                return;
            } catch (Exception unused) {
                return;
            }
        }
        Method method = f5428a;
        if (method != null) {
            try {
                method.invoke(workSource, Integer.valueOf(i2));
            } catch (Exception unused2) {
            }
        }
    }

    @Nullable
    private static String a(WorkSource workSource, int i2) {
        Method method = f5431d;
        if (method == null) {
            return null;
        }
        try {
            return (String) method.invoke(workSource, Integer.valueOf(i2));
        } catch (Exception unused) {
            return null;
        }
    }

    @KeepForSdk
    public static List<String> a(@Nullable WorkSource workSource) {
        int b2 = workSource == null ? 0 : b(workSource);
        if (b2 == 0) {
            return Collections.emptyList();
        }
        ArrayList arrayList = new ArrayList();
        for (int i2 = 0; i2 < b2; i2++) {
            String a2 = a(workSource, i2);
            if (!s.a(a2)) {
                arrayList.add(a2);
            }
        }
        return arrayList;
    }

    @KeepForSdk
    public static boolean a(Context context) {
        return (context == null || context.getPackageManager() == null || com.google.android.gms.common.o.c.a(context).a("android.permission.UPDATE_DEVICE_STATS", context.getPackageName()) != 0) ? false : true;
    }

    private static Method a() {
        try {
            return WorkSource.class.getMethod("get", Integer.TYPE);
        } catch (Exception unused) {
            return null;
        }
    }
}
