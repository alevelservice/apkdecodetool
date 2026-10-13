package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.ScheduledExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class sz0 {
    public static Executor a() {
        return xy0.INSTANCE;
    }

    public static tz0 a(ExecutorService executorService) {
        if (executorService instanceof tz0) {
            return (tz0) executorService;
        }
        if (executorService instanceof ScheduledExecutorService) {
            return new wz0((ScheduledExecutorService) executorService);
        }
        return new xz0(executorService);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Executor a(Executor executor, fy0<?> fy0Var) {
        uw0.a(executor);
        uw0.a(fy0Var);
        return executor == xy0.INSTANCE ? executor : new vz0(executor, fy0Var);
    }
}
