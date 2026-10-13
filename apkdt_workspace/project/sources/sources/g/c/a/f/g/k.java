package g.c.a.f.g;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SchedulerPoolFactory.java */
/* loaded from: classes2.dex */
public final class k {

    /* renamed from: a, reason: collision with root package name */
    public static final boolean f18330a;

    /* renamed from: b, reason: collision with root package name */
    public static final int f18331b;

    /* renamed from: c, reason: collision with root package name */
    static final AtomicReference<ScheduledExecutorService> f18332c = new AtomicReference<>();

    /* renamed from: d, reason: collision with root package name */
    static final Map<ScheduledThreadPoolExecutor, Object> f18333d = new ConcurrentHashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SchedulerPoolFactory.java */
    /* loaded from: classes2.dex */
    public static final class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            Iterator it = new ArrayList(k.f18333d.keySet()).iterator();
            while (it.hasNext()) {
                ScheduledThreadPoolExecutor scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) it.next();
                if (scheduledThreadPoolExecutor.isShutdown()) {
                    k.f18333d.remove(scheduledThreadPoolExecutor);
                } else {
                    scheduledThreadPoolExecutor.purge();
                }
            }
        }
    }

    /* compiled from: SchedulerPoolFactory.java */
    /* loaded from: classes2.dex */
    static final class b implements g.c.a.e.e<String, String> {
        b() {
        }

        @Override // g.c.a.e.e
        /* renamed from: a, reason: merged with bridge method [inline-methods] */
        public String apply(String str) {
            return System.getProperty(str);
        }
    }

    static {
        b bVar = new b();
        f18330a = a(true, "rx3.purge-enabled", true, true, (g.c.a.e.e<String, String>) bVar);
        f18331b = a(f18330a, "rx3.purge-period-seconds", 1, 1, bVar);
        a();
    }

    public static void a() {
        a(f18330a);
    }

    static void a(boolean z) {
        if (!z) {
            return;
        }
        while (true) {
            ScheduledExecutorService scheduledExecutorService = f18332c.get();
            if (scheduledExecutorService != null) {
                return;
            }
            ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, new g("RxSchedulerPurge"));
            if (f18332c.compareAndSet(scheduledExecutorService, newScheduledThreadPool)) {
                a aVar = new a();
                int i2 = f18331b;
                newScheduledThreadPool.scheduleAtFixedRate(aVar, i2, i2, TimeUnit.SECONDS);
                return;
            }
            newScheduledThreadPool.shutdownNow();
        }
    }

    static int a(boolean z, String str, int i2, int i3, g.c.a.e.e<String, String> eVar) {
        if (!z) {
            return i3;
        }
        try {
            String apply = eVar.apply(str);
            return apply == null ? i2 : Integer.parseInt(apply);
        } catch (Throwable th) {
            g.c.a.d.b.b(th);
            return i2;
        }
    }

    static boolean a(boolean z, String str, boolean z2, boolean z3, g.c.a.e.e<String, String> eVar) {
        if (!z) {
            return z3;
        }
        try {
            String apply = eVar.apply(str);
            return apply == null ? z2 : "true".equals(apply);
        } catch (Throwable th) {
            g.c.a.d.b.b(th);
            return z2;
        }
    }

    public static ScheduledExecutorService a(ThreadFactory threadFactory) {
        ScheduledExecutorService newScheduledThreadPool = Executors.newScheduledThreadPool(1, threadFactory);
        a(f18330a, newScheduledThreadPool);
        return newScheduledThreadPool;
    }

    static void a(boolean z, ScheduledExecutorService scheduledExecutorService) {
        if (z && (scheduledExecutorService instanceof ScheduledThreadPoolExecutor)) {
            f18333d.put((ScheduledThreadPoolExecutor) scheduledExecutorService, scheduledExecutorService);
        }
    }
}
