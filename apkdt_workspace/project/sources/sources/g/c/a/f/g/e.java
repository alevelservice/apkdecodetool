package g.c.a.f.g;

import g.c.a.b.g;
import io.reactivex.rxjava3.annotations.NonNull;
import io.reactivex.rxjava3.annotations.Nullable;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;

/* compiled from: NewThreadWorker.java */
/* loaded from: classes2.dex */
public class e extends g.b implements g.c.a.c.c {

    /* renamed from: e, reason: collision with root package name */
    private final ScheduledExecutorService f18328e;

    /* renamed from: f, reason: collision with root package name */
    volatile boolean f18329f;

    public e(ThreadFactory threadFactory) {
        this.f18328e = k.a(threadFactory);
    }

    @Override // g.c.a.b.g.b
    @NonNull
    public g.c.a.c.c a(@NonNull Runnable runnable) {
        return a(runnable, 0L, null);
    }

    public g.c.a.c.c b(Runnable runnable, long j2, TimeUnit timeUnit) {
        Future<?> schedule;
        h hVar = new h(g.c.a.h.a.a(runnable));
        try {
            if (j2 <= 0) {
                schedule = this.f18328e.submit(hVar);
            } else {
                schedule = this.f18328e.schedule(hVar, j2, timeUnit);
            }
            hVar.setFuture(schedule);
            return hVar;
        } catch (RejectedExecutionException e2) {
            g.c.a.h.a.b(e2);
            return g.c.a.f.a.b.INSTANCE;
        }
    }

    @Override // g.c.a.c.c
    public void dispose() {
        if (this.f18329f) {
            return;
        }
        this.f18329f = true;
        this.f18328e.shutdownNow();
    }

    @Override // g.c.a.b.g.b
    @NonNull
    public g.c.a.c.c a(@NonNull Runnable runnable, long j2, @NonNull TimeUnit timeUnit) {
        if (this.f18329f) {
            return g.c.a.f.a.b.INSTANCE;
        }
        return a(runnable, j2, timeUnit, null);
    }

    @NonNull
    public i a(Runnable runnable, long j2, @NonNull TimeUnit timeUnit, @Nullable g.c.a.c.d dVar) {
        Future<?> schedule;
        i iVar = new i(g.c.a.h.a.a(runnable), dVar);
        if (dVar != null && !dVar.b(iVar)) {
            return iVar;
        }
        try {
            if (j2 <= 0) {
                schedule = this.f18328e.submit((Callable) iVar);
            } else {
                schedule = this.f18328e.schedule((Callable) iVar, j2, timeUnit);
            }
            iVar.setFuture(schedule);
        } catch (RejectedExecutionException e2) {
            if (dVar != null) {
                dVar.a(iVar);
            }
            g.c.a.h.a.b(e2);
        }
        return iVar;
    }

    public void a() {
        if (this.f18329f) {
            return;
        }
        this.f18329f = true;
        this.f18328e.shutdown();
    }
}
