package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-ads@@18.1.0 */
/* loaded from: classes.dex */
public final class yd {

    /* renamed from: a, reason: collision with root package name */
    public static final tz0 f10540a = a(new ThreadPoolExecutor(2, Integer.MAX_VALUE, 10, TimeUnit.SECONDS, new SynchronousQueue(), a("Default")));

    /* renamed from: b, reason: collision with root package name */
    public static final tz0 f10541b;

    /* renamed from: c, reason: collision with root package name */
    public static final ScheduledExecutorService f10542c;

    /* renamed from: d, reason: collision with root package name */
    public static final tz0 f10543d;

    /* renamed from: e, reason: collision with root package name */
    public static final tz0 f10544e;

    static {
        ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(5, 5, 10L, TimeUnit.SECONDS, new LinkedBlockingQueue(), a("Loader"));
        threadPoolExecutor.allowCoreThreadTimeOut(true);
        f10541b = a(threadPoolExecutor);
        f10542c = new ScheduledThreadPoolExecutor(3, a("Schedule"));
        f10543d = a(new ae());
        f10544e = a(sz0.a());
    }

    private static ThreadFactory a(String str) {
        return new xd(str);
    }

    private static tz0 a(Executor executor) {
        return new zd(executor, null);
    }
}
