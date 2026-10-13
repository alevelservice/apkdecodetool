package g.c.a.f.g;

import g.c.a.b.g;
import io.reactivex.rxjava3.annotations.NonNull;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: IoScheduler.java */
/* loaded from: classes2.dex */
public final class c extends g.c.a.b.g {

    /* renamed from: c, reason: collision with root package name */
    static final g f18307c;

    /* renamed from: d, reason: collision with root package name */
    static final g f18308d;

    /* renamed from: h, reason: collision with root package name */
    static final a f18312h;

    /* renamed from: a, reason: collision with root package name */
    final ThreadFactory f18313a;

    /* renamed from: b, reason: collision with root package name */
    final AtomicReference<a> f18314b;

    /* renamed from: f, reason: collision with root package name */
    private static final TimeUnit f18310f = TimeUnit.SECONDS;

    /* renamed from: e, reason: collision with root package name */
    private static final long f18309e = Long.getLong("rx3.io-keep-alive-time", 60).longValue();

    /* renamed from: g, reason: collision with root package name */
    static final C0218c f18311g = new C0218c(new g("RxCachedThreadSchedulerShutdown"));

    /* compiled from: IoScheduler.java */
    /* loaded from: classes2.dex */
    static final class b extends g.b {

        /* renamed from: f, reason: collision with root package name */
        private final a f18322f;

        /* renamed from: g, reason: collision with root package name */
        private final C0218c f18323g;

        /* renamed from: h, reason: collision with root package name */
        final AtomicBoolean f18324h = new AtomicBoolean();

        /* renamed from: e, reason: collision with root package name */
        private final g.c.a.c.a f18321e = new g.c.a.c.a();

        b(a aVar) {
            this.f18322f = aVar;
            this.f18323g = aVar.a();
        }

        @Override // g.c.a.b.g.b
        @NonNull
        public g.c.a.c.c a(@NonNull Runnable runnable, long j2, @NonNull TimeUnit timeUnit) {
            if (this.f18321e.a()) {
                return g.c.a.f.a.b.INSTANCE;
            }
            return this.f18323g.a(runnable, j2, timeUnit, this.f18321e);
        }

        @Override // g.c.a.c.c
        public void dispose() {
            if (this.f18324h.compareAndSet(false, true)) {
                this.f18321e.dispose();
                this.f18322f.a(this.f18323g);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IoScheduler.java */
    /* renamed from: g.c.a.f.g.c$c, reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    public static final class C0218c extends e {

        /* renamed from: g, reason: collision with root package name */
        long f18325g;

        C0218c(ThreadFactory threadFactory) {
            super(threadFactory);
            this.f18325g = 0L;
        }

        public void a(long j2) {
            this.f18325g = j2;
        }

        public long b() {
            return this.f18325g;
        }
    }

    static {
        f18311g.dispose();
        int max = Math.max(1, Math.min(10, Integer.getInteger("rx3.io-priority", 5).intValue()));
        f18307c = new g("RxCachedThreadScheduler", max);
        f18308d = new g("RxCachedWorkerPoolEvictor", max);
        f18312h = new a(0L, null, f18307c);
        f18312h.b();
    }

    public c() {
        this(f18307c);
    }

    @Override // g.c.a.b.g
    @NonNull
    public g.b a() {
        return new b(this.f18314b.get());
    }

    public void b() {
        a aVar = new a(f18309e, f18310f, this.f18313a);
        if (this.f18314b.compareAndSet(f18312h, aVar)) {
            return;
        }
        aVar.b();
    }

    public c(ThreadFactory threadFactory) {
        this.f18313a = threadFactory;
        this.f18314b = new AtomicReference<>(f18312h);
        b();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: IoScheduler.java */
    /* loaded from: classes2.dex */
    public static final class a implements Runnable {

        /* renamed from: e, reason: collision with root package name */
        private final long f18315e;

        /* renamed from: f, reason: collision with root package name */
        private final ConcurrentLinkedQueue<C0218c> f18316f;

        /* renamed from: g, reason: collision with root package name */
        final g.c.a.c.a f18317g;

        /* renamed from: h, reason: collision with root package name */
        private final ScheduledExecutorService f18318h;

        /* renamed from: i, reason: collision with root package name */
        private final Future<?> f18319i;

        /* renamed from: j, reason: collision with root package name */
        private final ThreadFactory f18320j;

        a(long j2, TimeUnit timeUnit, ThreadFactory threadFactory) {
            ScheduledFuture<?> scheduledFuture;
            this.f18315e = timeUnit != null ? timeUnit.toNanos(j2) : 0L;
            this.f18316f = new ConcurrentLinkedQueue<>();
            this.f18317g = new g.c.a.c.a();
            this.f18320j = threadFactory;
            ScheduledExecutorService scheduledExecutorService = null;
            if (timeUnit != null) {
                scheduledExecutorService = Executors.newScheduledThreadPool(1, c.f18308d);
                long j3 = this.f18315e;
                scheduledFuture = scheduledExecutorService.scheduleWithFixedDelay(this, j3, j3, TimeUnit.NANOSECONDS);
            } else {
                scheduledFuture = null;
            }
            this.f18318h = scheduledExecutorService;
            this.f18319i = scheduledFuture;
        }

        static long c() {
            return System.nanoTime();
        }

        C0218c a() {
            if (this.f18317g.a()) {
                return c.f18311g;
            }
            while (!this.f18316f.isEmpty()) {
                C0218c poll = this.f18316f.poll();
                if (poll != null) {
                    return poll;
                }
            }
            C0218c c0218c = new C0218c(this.f18320j);
            this.f18317g.b(c0218c);
            return c0218c;
        }

        void b() {
            this.f18317g.dispose();
            Future<?> future = this.f18319i;
            if (future != null) {
                future.cancel(true);
            }
            ScheduledExecutorService scheduledExecutorService = this.f18318h;
            if (scheduledExecutorService != null) {
                scheduledExecutorService.shutdownNow();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            a(this.f18316f, this.f18317g);
        }

        void a(C0218c c0218c) {
            c0218c.a(c() + this.f18315e);
            this.f18316f.offer(c0218c);
        }

        static void a(ConcurrentLinkedQueue<C0218c> concurrentLinkedQueue, g.c.a.c.a aVar) {
            if (concurrentLinkedQueue.isEmpty()) {
                return;
            }
            long c2 = c();
            Iterator<C0218c> it = concurrentLinkedQueue.iterator();
            while (it.hasNext()) {
                C0218c next = it.next();
                if (next.b() > c2) {
                    return;
                }
                if (concurrentLinkedQueue.remove(next)) {
                    aVar.a(next);
                }
            }
        }
    }
}
