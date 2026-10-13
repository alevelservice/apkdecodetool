package com.google.firebase.iid;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.concurrent.TimeUnit;
import javax.annotation.concurrent.GuardedBy;

/* compiled from: com.google.firebase:firebase-iid@@21.0.1 */
@KeepForSdk
/* loaded from: classes.dex */
public final class z {

    /* renamed from: a, reason: collision with root package name */
    private static final long f15042a = TimeUnit.MINUTES.toMillis(1);

    /* renamed from: b, reason: collision with root package name */
    private static final Object f15043b = new Object();

    /* renamed from: c, reason: collision with root package name */
    @GuardedBy("WakeLockHolder.syncObject")
    private static com.google.android.gms.stats.a f15044c;

    @GuardedBy("WakeLockHolder.syncObject")
    private static void a(Context context) {
        if (f15044c == null) {
            f15044c = new com.google.android.gms.stats.a(context, 1, "wake:com.google.firebase.iid.WakeLockHolder");
            f15044c.a(true);
        }
    }

    @VisibleForTesting
    static boolean b(@NonNull Intent intent) {
        return intent.getBooleanExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", false);
    }

    @KeepForSdk
    public static void a(@NonNull Intent intent) {
        synchronized (f15043b) {
            if (f15044c != null && b(intent)) {
                a(intent, false);
                f15044c.a();
            }
        }
    }

    private static void a(@NonNull Intent intent, boolean z) {
        intent.putExtra("com.google.firebase.iid.WakeLockHolder.wakefulintent", z);
    }

    public static ComponentName a(@NonNull Context context, @NonNull Intent intent) {
        synchronized (f15043b) {
            a(context);
            boolean b2 = b(intent);
            a(intent, true);
            ComponentName startService = context.startService(intent);
            if (startService == null) {
                return null;
            }
            if (!b2) {
                f15044c.a(f15042a);
            }
            return startService;
        }
    }
}
