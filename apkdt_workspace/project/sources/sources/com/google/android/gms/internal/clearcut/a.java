package com.google.android.gms.internal.clearcut;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.UserManager;

/* loaded from: classes.dex */
public class a {

    /* renamed from: a, reason: collision with root package name */
    private static volatile UserManager f11352a;

    /* renamed from: b, reason: collision with root package name */
    private static volatile boolean f11353b = !a();

    private a() {
    }

    private static boolean a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    public static boolean a(Context context) {
        return a() && !b(context);
    }

    @TargetApi(24)
    private static boolean b(Context context) {
        boolean z = f11353b;
        if (!z) {
            UserManager userManager = f11352a;
            if (userManager == null) {
                synchronized (a.class) {
                    userManager = f11352a;
                    if (userManager == null) {
                        UserManager userManager2 = (UserManager) context.getSystemService(UserManager.class);
                        f11352a = userManager2;
                        if (userManager2 == null) {
                            f11353b = true;
                            return true;
                        }
                        userManager = userManager2;
                    }
                }
            }
            z = userManager.isUserUnlocked();
            f11353b = z;
            if (z) {
                f11352a = null;
            }
        }
        return z;
    }
}
