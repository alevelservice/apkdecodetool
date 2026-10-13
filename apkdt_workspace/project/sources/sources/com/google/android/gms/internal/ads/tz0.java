package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public interface tz0 extends ExecutorService {
    qz0<?> a(Runnable runnable);

    <T> qz0<T> a(Callable<T> callable);
}
