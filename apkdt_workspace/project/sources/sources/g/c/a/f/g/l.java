package g.c.a.f.g;

import g.c.a.b.g;
import io.reactivex.rxjava3.annotations.NonNull;
import java.util.concurrent.Callable;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: SingleScheduler.java */
/* loaded from: classes2.dex */
public final class l extends g.c.a.b.g {

    /* renamed from: b, reason: collision with root package name */
    static final g f18334b;

    /* renamed from: c, reason: collision with root package name */
    static final ScheduledExecutorService f18335c = Executors.newScheduledThreadPool(0);

    /* renamed from: a, reason: collision with root package name */
    final AtomicReference<ScheduledExecutorService> f18336a;

    /* compiled from: SingleScheduler.java */
    /* loaded from: classes2.dex */
    static final class a extends g.b {

        /* renamed from: e, reason: collision with root package name */
        final ScheduledExecutorService f18337e;

        /* renamed from: f, reason: collision with root package name */
        final g.c.a.c.a f18338f = new g.c.a.c.a();

        /* renamed from: g, reason: collision with root package name */
        volatile boolean f18339g;

        a(ScheduledExecutorService scheduledExecutorService) {
            this.f18337e = scheduledExecutorService;
        }

        @Override // g.c.a.b.g.b
        @NonNull
        public g.c.a.c.c a(@NonNull Runnable runnable, long j2, @NonNull TimeUnit timeUnit) {
            Future<?> schedule;
            if (this.f18339g) {
                return g.c.a.f.a.b.INSTANCE;
            }
            i iVar = new i(g.c.a.h.a.a(runnable), this.f18338f);
            this.f18338f.b(iVar);
            try {
                if (j2 <= 0) {
                    schedule = this.f18337e.submit((Callable) iVar);
                } else {
                    schedule = this.f18337e.schedule((Callable) iVar, j2, timeUnit);
                }
                iVar.setFuture(schedule);
                return iVar;
            } catch (RejectedExecutionException e2) {
                dispose();
                g.c.a.h.a.b(e2);
                return g.c.a.f.a.b.INSTANCE;
            }
        }

        @Override // g.c.a.c.c
        public void dispose() {
            if (this.f18339g) {
                return;
            }
            this.f18339g = true;
            this.f18338f.dispose();
        }
    }

    static {
        f18335c.shutdown();
        f18334b = new g("RxSingleScheduler", Math.max(1, Math.min(10, Integer.getInteger("rx3.single-priority", 5).intValue())), true);
    }

    public l() {
        this(f18334b);
    }

    static ScheduledExecutorService a(ThreadFactory threadFactory) {
        return k.a(threadFactory);
    }

    public l(ThreadFactory threadFactory) {
        this.f18336a = new AtomicReference<>();
        this.f18336a.lazySet(a(threadFactory));
    }

    @Override // g.c.a.b.g
    @NonNull
    public g.b a() {
        return new a(this.f18336a.get());
    }

    @Override // g.c.a.b.g
    @NonNull
    public g.c.a.c.c a(@NonNull Runnable runnable, long j2, TimeUnit timeUnit) {
        Future<?> schedule;
        h hVar = new h(g.c.a.h.a.a(runnable));
        try {
            if (j2 <= 0) {
                schedule = this.f18336a.get().submit(hVar);
            } else {
                schedule = this.f18336a.get().schedule(hVar, j2, timeUnit);
            }
            hVar.setFuture(schedule);
            return hVar;
        } catch (RejectedExecutionException e2) {
            g.c.a.h.a.b(e2);
            return g.c.a.f.a.b.INSTANCE;
        }
    }
}
