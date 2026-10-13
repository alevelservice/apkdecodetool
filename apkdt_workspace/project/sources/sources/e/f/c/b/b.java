package e.f.c.b;

import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: ConstrainedExecutorService.java */
/* loaded from: classes.dex */
public class b extends AbstractExecutorService {

    /* renamed from: l, reason: collision with root package name */
    private static final Class<?> f17133l = b.class;

    /* renamed from: e, reason: collision with root package name */
    private final String f17134e;

    /* renamed from: f, reason: collision with root package name */
    private final Executor f17135f;

    /* renamed from: g, reason: collision with root package name */
    private volatile int f17136g;

    /* renamed from: h, reason: collision with root package name */
    private final BlockingQueue<Runnable> f17137h;

    /* renamed from: i, reason: collision with root package name */
    private final RunnableC0182b f17138i;

    /* renamed from: j, reason: collision with root package name */
    private final AtomicInteger f17139j;

    /* renamed from: k, reason: collision with root package name */
    private final AtomicInteger f17140k;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: ConstrainedExecutorService.java */
    /* renamed from: e.f.c.b.b$b, reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public class RunnableC0182b implements Runnable {
        private RunnableC0182b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                Runnable runnable = (Runnable) b.this.f17137h.poll();
                if (runnable == null) {
                    e.f.c.d.a.b((Class<?>) b.f17133l, "%s: Worker has nothing to run", b.this.f17134e);
                } else {
                    runnable.run();
                }
                int decrementAndGet = b.this.f17139j.decrementAndGet();
                if (!b.this.f17137h.isEmpty()) {
                    b.this.b();
                } else {
                    e.f.c.d.a.a((Class<?>) b.f17133l, "%s: worker finished; %d workers left", b.this.f17134e, Integer.valueOf(decrementAndGet));
                }
            } catch (Throwable th) {
                int decrementAndGet2 = b.this.f17139j.decrementAndGet();
                if (!b.this.f17137h.isEmpty()) {
                    b.this.b();
                } else {
                    e.f.c.d.a.a((Class<?>) b.f17133l, "%s: worker finished; %d workers left", b.this.f17134e, Integer.valueOf(decrementAndGet2));
                }
                throw th;
            }
        }
    }

    public b(String str, int i2, Executor executor, BlockingQueue<Runnable> blockingQueue) {
        if (i2 > 0) {
            this.f17134e = str;
            this.f17135f = executor;
            this.f17136g = i2;
            this.f17137h = blockingQueue;
            this.f17138i = new RunnableC0182b();
            this.f17139j = new AtomicInteger(0);
            this.f17140k = new AtomicInteger(0);
            return;
        }
        throw new IllegalArgumentException("max concurrency must be > 0");
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (runnable != null) {
            if (this.f17137h.offer(runnable)) {
                int size = this.f17137h.size();
                int i2 = this.f17140k.get();
                if (size > i2 && this.f17140k.compareAndSet(i2, size)) {
                    e.f.c.d.a.a(f17133l, "%s: max pending work in queue = %d", this.f17134e, Integer.valueOf(size));
                }
                b();
                return;
            }
            throw new RejectedExecutionException(this.f17134e + " queue is full, size=" + this.f17137h.size());
        }
        throw new NullPointerException("runnable parameter is null");
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b() {
        int i2 = this.f17139j.get();
        while (i2 < this.f17136g) {
            int i3 = i2 + 1;
            if (this.f17139j.compareAndSet(i2, i3)) {
                e.f.c.d.a.a(f17133l, "%s: starting worker %d of %d", this.f17134e, Integer.valueOf(i3), Integer.valueOf(this.f17136g));
                this.f17135f.execute(this.f17138i);
                return;
            } else {
                e.f.c.d.a.b(f17133l, "%s: race in startWorkerIfNeeded; retrying", this.f17134e);
                i2 = this.f17139j.get();
            }
        }
    }
}
