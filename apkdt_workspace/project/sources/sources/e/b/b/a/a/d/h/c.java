package e.b.b.a.a.d.h;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

/* compiled from: LogThreadPool.java */
/* loaded from: classes.dex */
public class c {

    /* renamed from: a, reason: collision with root package name */
    public static final int f17024a = Runtime.getRuntime().availableProcessors();

    /* renamed from: b, reason: collision with root package name */
    private static final int f17025b = Math.max(2, Math.min(f17024a - 1, 4));

    /* renamed from: c, reason: collision with root package name */
    private static final int f17026c = (f17024a * 2) + 1;

    public static ExecutorService a() {
        return new ThreadPoolExecutor(f17025b, f17026c, 60L, TimeUnit.SECONDS, new LinkedBlockingQueue(60), new d(), new ThreadPoolExecutor.DiscardOldestPolicy());
    }
}
