package com.google.android.gms.internal.vision;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.UserManager;
import androidx.annotation.GuardedBy;
import androidx.annotation.RequiresApi;

/* compiled from: com.google.android.gms:play-services-vision-common@@19.0.0 */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a, reason: collision with root package name */
    @GuardedBy("DirectBootUtils.class")
    private static UserManager f12346a;

    /* renamed from: b, reason: collision with root package name */
    private static volatile boolean f12347b = !a();

    private g() {
    }

    public static boolean a() {
        return Build.VERSION.SDK_INT >= 24;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0028, code lost:
    
        if (r2.isUserRunning(android.os.Process.myUserHandle()) == false) goto L15;
     */
    @androidx.annotation.RequiresApi(24)
    @android.annotation.TargetApi(24)
    @androidx.annotation.GuardedBy("DirectBootUtils.class")
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static boolean b(android.content.Context r6) {
        /*
            r0 = 1
            r1 = 1
        L2:
            r2 = 2
            r3 = 0
            r4 = 0
            if (r1 > r2) goto L31
            android.os.UserManager r2 = com.google.android.gms.internal.vision.g.f12346a
            if (r2 != 0) goto L15
            java.lang.Class<android.os.UserManager> r2 = android.os.UserManager.class
            java.lang.Object r2 = r6.getSystemService(r2)
            android.os.UserManager r2 = (android.os.UserManager) r2
            com.google.android.gms.internal.vision.g.f12346a = r2
        L15:
            android.os.UserManager r2 = com.google.android.gms.internal.vision.g.f12346a
            if (r2 != 0) goto L1a
            return r0
        L1a:
            boolean r5 = r2.isUserUnlocked()     // Catch: java.lang.NullPointerException -> L2c
            if (r5 != 0) goto L2a
            android.os.UserHandle r5 = android.os.Process.myUserHandle()     // Catch: java.lang.NullPointerException -> L2c
            boolean r6 = r2.isUserRunning(r5)     // Catch: java.lang.NullPointerException -> L2c
            if (r6 != 0) goto L31
        L2a:
            r4 = 1
            goto L31
        L2c:
            com.google.android.gms.internal.vision.g.f12346a = r3
            int r1 = r1 + 1
            goto L2
        L31:
            if (r4 == 0) goto L35
            com.google.android.gms.internal.vision.g.f12346a = r3
        L35:
            return r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.g.b(android.content.Context):boolean");
    }

    @RequiresApi(24)
    @TargetApi(24)
    private static boolean c(Context context) {
        if (f12347b) {
            return true;
        }
        synchronized (g.class) {
            if (f12347b) {
                return true;
            }
            boolean b2 = b(context);
            if (b2) {
                f12347b = b2;
            }
            return b2;
        }
    }

    public static boolean a(Context context) {
        return !a() || c(context);
    }
}
